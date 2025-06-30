create or replace trigger TGRSTORICO
  before INSERT OR UPDATE OR DELETE ON "Prenotazione_Attiva"  
  for each row
    
  -- Trigger per la movimentazione dei dati dalla tabella Prenotazione_Attiva 
  
declare
  -- non ci sono variabili da dichiarare
begin
  IF INSERTING THEN -- quando un nuova tupla è inserita sulla tabella delle prenotazioni attive
                    -- viene generata automaticamente il corrispettivo nello storico prenotazioni
    Begin
     insert into "Storico_Prenotazione" values (:NEW."IdPrenotazione", :NEW."IdItinerario",:NEW."IdAccount",:NEW."IdPasseggero");
    exception
      when others then
        null;
    end;
  ELSIF UPDATING THEN -- quando un' occorrenza è modificata nella tabella prenotazioni attive
                      -- viene modificata automaticamente il corrispettivo nello storico prenotazioni
    Begin
     update "Storico_Prenotazione" 
      set "IdItinerario" = :NEW."IdItinerario",
          "IdAccount"    = :NEW."IdAccount",
          "IdPasseggero" = :NEW."IdPasseggero"
     where "IdStorico" = :NEW."IdPrenotazione";
    exception
      when others then
        null;
    end;
  ELSE --DELETING
    NULL; -- nel caso la prenotazione di un itinerario fosse cancellato dalle prenotazioni attive lo si mantiene 
          -- nello storico prenotazioni.
  END IF;   
end TGRSTORICO;
/
