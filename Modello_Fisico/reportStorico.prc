create or replace procedure reportStorico(path_out    IN VARCHAR2, -- path fisico dove creare il file di output
                                          path_log    IN VARCHAR2, -- path fisico di dove creare il file di log
                                          RITORNO     OUT NUMBER) is -- variabile di controllo esterna per l'esito
                                                                     --dell'elaborazione. 0 = terminata con successo; 1= terminata con errore;

                                          
-- Creazione di una store procedure che si occupa di estrarre tutti i dati 
-- dalla tabella storico e fornirli in un file excel salvato localmente

  OUT_FILE      UTL_FILE.FILE_TYPE;
  OUT_FILE_LOG  UTL_FILE.FILE_TYPE;
  record_out    VARCHAR2(6000);
  MESSAGGIO     VARCHAR2(1000);
  rit           NUMBER;
  CODICE_ERRORE NUMBER := 0;

  fine EXCEPTION; -- definizione di un errore generico a cui rimandare il flusso
  
  -- definizione del cursore per prelevare tutte le informazioi inerenti le tabelle in relazione con la tabella storico
  CURSOR datiStorico IS 
    select a."Email"  ,to_char(a."DataCreazione",'DD/MM/YYYY') dataCreazione, p."Nome" , p."Cognome",
           to_char(p."DataNascita",'DD/MM/YYYY') DataNascita, p."CF", p."Sesso", p."Email" email_p, p."Telefono",
           i."Descrizione"
    from "Storico_Prenotazione" s, "Account" a, "Passeggero" p, "Itinerario" i
    where s."IdAccount" = a."IdAccount"
    and s."IdPasseggero" = p."IdPasseggero"
    and s."IdItinerario" = i."IdItinerario";
    
  FUNCTION aprifile ( -- funzione per l'apertura del file 
      PATH            IN       VARCHAR2,
      file_name       IN       VARCHAR2,
      FILE            OUT      UTL_FILE.FILE_TYPE,
      tipo_apertura   IN       VARCHAR2,
      errore          OUT      VARCHAR2
   )
      RETURN INTEGER IS
   BEGIN
      DECLARE
         file_error   CONSTANT INTEGER := -1;
         file_ok      CONSTANT INTEGER := 1;
      BEGIN
         FILE := UTL_FILE.FOPEN (PATH, file_name, tipo_apertura, 16384);
         RETURN file_ok;
      EXCEPTION
         WHEN UTL_FILE.INVALID_MODE THEN
            errore := 'invalid_mode';
            RETURN file_error;
         WHEN UTL_FILE.INVALID_PATH THEN
            errore := 'invalid_path';
            RETURN file_error;
         WHEN UTL_FILE.INVALID_FILEHANDLE THEN
            errore := 'invalid_handle';
            RETURN file_error;
         WHEN UTL_FILE.INVALID_OPERATION THEN
            errore := 'invalid_operation';
            RETURN file_error;
         WHEN OTHERS THEN
            errore := 'others';
            RETURN file_error;
      END;
   END aprifile;
   
  FUNCTION scriviriga (FILE IN UTL_FILE.FILE_TYPE, riga IN VARCHAR2) --funzione per la scrittura file
      RETURN INTEGER IS
   BEGIN
      UTL_FILE.PUT_LINE (FILE, riga);
      UTL_FILE.FFLUSH (FILE);
      RETURN 0;
   EXCEPTION
      WHEN OTHERS THEN
         RETURN -1;
   END scriviriga;

  PROCEDURE chiudifile (file_chiudi IN OUT UTL_FILE.FILE_TYPE) IS -- procedura per la chiusura file
   BEGIN
      UTL_FILE.FCLOSE (file_chiudi);
   EXCEPTION
      WHEN UTL_FILE.INVALID_FILEHANDLE THEN
         DBMS_OUTPUT.PUT_LINE ('filehandle non valido per ChiudiFile');
      WHEN OTHERS THEN
         DBMS_OUTPUT.PUT_LINE ('errore in PRGC7517');
   END chiudifile;

  PROCEDURE scriviFileLog IS --Procedura per la scrittura del file di log in modalità Append
   BEGIN
    RIT := APRIFILE(path_log,
                             'Report_Storico.log',
                             OUT_FILE_LOG,
                             'A',
                             CODICE_ERRORE);
    RIT := SCRIVIRIGA(OUT_FILE_LOG, messaggio);
    CHIUDIFILE(OUT_FILE_LOG);
    RITORNO := -1;
  END scriviFileLog;
  
  PROCEDURE scriviIntestazionePagina IS
   BEGIN
    -- Pocedura per la scrittura dell'intestazione di pagina del foglio excel
    record_out := '<HTML><HEAD><META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"><TITLE> REPORT STORICO </TITLE><STYLE>' ||
                  ' .THL1 { font-family:Calibri,verdana,arial; font-size:15px; color:White; text-align:center; vertical-align:middle; background-color:#4F81BD; font-weight: normal;}' 
                  ||
                  ' TD    { font-family:tahoma,verdana,arial; font-size:11px; color:Black; text-align:left; vertical-align:middle; background-color:#FFFFFF; white-space:nowrap}' ||
                  '</STYLE></HEAD><BODY BGCOLOR="#FFFFFF"><TABLE WIDTH="100%" CELLSPACING=0 CELLPADDING=0 BORDER=1>';
    RIT        := SCRIVIRIGA(OUT_FILE, record_out);
    IF RIT = -1 THEN
      messaggio := TO_CHAR(SYSDATE, 'YYYY/MM/DD  HH24.MI') ||
                   ' ERRORE SCRITTURA FILE, intestazione';
      RAISE fine;
    END IF;
  END scriviIntestazionePagina;

  PROCEDURE scriviIntestazioneColonne IS
   BEGIN
    -- procedura per la scrittura dell'intestazione colonne del foglio excel
    record_out := '<TR><TH  CLASS="THL1">' ||    
                'Email Account' 
                || '</TH><TH CLASS="THL1">' ||
                'Data Creazione Account' 
                || '</TH><TH  CLASS="THL1">' ||
                'Nome Passeggero'
                || '</TH><TH  CLASS="THL1">' ||
                'Cognome Passeggero' 
                || '</TH><TH  CLASS="THL1">' ||
                'Data Nascita Passeggero' 
                || '</TH><TH  CLASS="THL1">' || 
                'Codice Fiscale Passeggero' 
                || '</TH><TH  CLASS="THL1">' ||
                'Sesso Passeggero'
                || '</TH>' || '<TH CLASS="THL1">' ||
                'Email Passeggero' 
                || '</TH><TH  CLASS="THL1">' || 
                'Telefono Passeggero'
                || '</TH><TH  CLASS="THL1">'  ||
                'Descrizione Itinerario'
                || '</TH>';
    RIT := SCRIVIRIGA(OUT_FILE, record_out || '</TR>');
    IF RIT = -1 THEN
      messaggio := TO_CHAR(SYSDATE, 'YYYY/MM/DD  HH24.MI') ||
                   ' ERRORE SCRITTURA FILE, intestazione_colonne';
      RAISE fine;
    END IF;
  END scriviIntestazioneColonne;
  
  PROCEDURE chiusuraPagina IS
   BEGIN  
    -- Chiusura della pagina excel
    RIT := SCRIVIRIGA(OUT_FILE, '</TABLE></BODY></HTML>');
    IF RIT = -1 THEN
      messaggio := TO_CHAR(SYSDATE, 'YYYY/MM/DD  HH24.MI') ||
                   ' ERRORE SCRITTURA FILE, chiusura file';
      RAISE fine;
    END IF;
  END chiusuraPagina;
 
begin
  -- Apre il file di output in scrittura in modalità Write
  RIT := APRIFILE(PATH_out,
                           'Report_Storico_' ||
                             TO_CHAR(SYSDATE, 'YYYYMMDD') || '.XLS',
                             OUT_FILE,
                             'W',
                             CODICE_ERRORE);
 
  IF RIT = -1 THEN
    messaggio := TO_CHAR(SYSDATE, 'YYYY/MM/DD  HH24.MI') || ' ERRORE = ' ||
                 CODICE_ERRORE ||
                 ' ERRORE APERTURA FILE DI OUTPUT ' ;
    RAISE fine;
  END IF;
  
  scriviIntestazionePagina; -- richiama la procedura per la scrittura dell'intestazione pagina
  scriviIntestazioneColonne; -- richiama la procedura per la scrittura dell'intestazione colonne
  
  -- ELABORAZIONE DATI
  FOR dS IN datiStorico LOOP -- lettura del cursore e scrittura dei campi nel file excel
   record_out := '<TD>' || dS."Email" || '</TD><TD>' || dS.dataCreazione ||
            '</TD><TD>' || dS."Nome" || '</TD><TD>' ||
            dS."Cognome" || '</TD><TD>' || dS.dataNascita || '</TD><TD>' ||
            dS."CF" || '</TD><TD>' || dS."Sesso" || '</TD><TD>' ||
            dS.email_p || '</TD><TD>' || dS."Telefono" || '</TD><TD>' ||
            dS."Descrizione" || '</TD>' ;
            
  RIT := SCRIVIRIGA(OUT_FILE, '<TR>' || record_out || '</TR>');
  IF RIT = -1 THEN
    messaggio := TO_CHAR(SYSDATE, 'YYYY/MM/DD  HH24.MI') ||
                 ' ERRORE SCRITTURA FILE, elaborazione';
    RAISE fine;
  END IF;
  END LOOP;

  chiusuraPagina; -- richiama la procedira per la chiusura del file
 
  RITORNO := 0;
EXCEPTION
  WHEN fine THEN
    scriviFileLog;
  WHEN OTHERS THEN
    messaggio := TO_CHAR(SYSDATE, 'YYYY/MM/DD  HH24.MI') ||
                 ' ERRORE GENERICO' ;
    scriviFileLog;  
end reportStorico;
/
