-- Inserimento dati in tabella Account

INSERT INTO "Account" ("Email", "Password", "DataCreazione") VALUES ('alice.rossi@email.com', packageEncryptDecryptPassword.enc_account_passwd('Pass1234!'), TO_DATE('10/01/2024', 'DD/MM/YYYY'));
INSERT INTO "Account" ("Email", "Password", "DataCreazione") VALUES ('marco.bianchi@email.com', packageEncryptDecryptPassword.enc_account_passwd('SecurePwd1'), TO_DATE('12/02/2024', 'DD/MM/YYYY'));
INSERT INTO "Account" ("Email", "Password", "DataCreazione") VALUES ('luca.verdi@email.com', packageEncryptDecryptPassword.enc_account_passwd('MyPass456'), TO_DATE('05/03/2024', 'DD/MM/YYYY'));
INSERT INTO "Account" ("Email", "Password", "DataCreazione") VALUES ('giulia.neri@email.com', packageEncryptDecryptPassword.enc_account_passwd('PwdGiulia22'), TO_DATE('15/04/2024', 'DD/MM/YYYY'));
INSERT INTO "Account" ("Email", "Password", "DataCreazione") VALUES ('francesco.romano@email.com', packageEncryptDecryptPassword.enc_account_passwd('Rome2024!'), TO_DATE('20/04/2024', 'DD/MM/YYYY'));
INSERT INTO "Account" ("Email", "Password", "DataCreazione") VALUES ('marta.colombo@email.com', packageEncryptDecryptPassword.enc_account_passwd('MartaPwd'), TO_DATE('02/05/2024', 'DD/MM/YYYY'));
INSERT INTO "Account" ("Email", "Password", "DataCreazione") VALUES ('federica.sala@email.com', packageEncryptDecryptPassword.enc_account_passwd('Fed321!'), TO_DATE('10/05/2024', 'DD/MM/YYYY'));
INSERT INTO "Account" ("Email", "Password", "DataCreazione") VALUES ('giovanni.valli@email.com', packageEncryptDecryptPassword.enc_account_passwd('ValGiov89'), TO_DATE('11/05/2024', 'DD/MM/YYYY'));
INSERT INTO "Account" ("Email", "Password", "DataCreazione") VALUES ('chiara.bruno@email.com', packageEncryptDecryptPassword.enc_account_passwd('ChiaraPwd'), TO_DATE('01/06/2024', 'DD/MM/YYYY'));
INSERT INTO "Account" ("Email", "Password", "DataCreazione") VALUES ('andrea.fontana@email.com', packageEncryptDecryptPassword.enc_account_passwd('AndFont77'), TO_DATE('03/06/2024', 'DD/MM/YYYY'));

COMMIT;

-- Inserimento dati in tabella Ititnerari

INSERT INTO "Itinerario" ("Descrizione", "DataCreazione") VALUES ('Milano - Roma diretto', TO_DATE('10/04/2024', 'DD/MM/YYYY'));
INSERT INTO "Itinerario" ("Descrizione", "DataCreazione") VALUES ('Roma - Parigi con scalo a Milano', TO_DATE('12/04/2024', 'DD/MM/YYYY'));
INSERT INTO "Itinerario" ("Descrizione", "DataCreazione") VALUES ('Napoli - Londra via Roma', TO_DATE('15/04/2024', 'DD/MM/YYYY'));
INSERT INTO "Itinerario" ("Descrizione", "DataCreazione") VALUES ('Torino - Berlino diretto', TO_DATE('18/04/2024', 'DD/MM/YYYY'));
INSERT INTO "Itinerario" ("Descrizione", "DataCreazione") VALUES ('Venezia - Madrid con scalo a Barcellona', TO_DATE('20/04/2024', 'DD/MM/YYYY'));
INSERT INTO "Itinerario" ("Descrizione", "DataCreazione") VALUES ('Bologna - Atene diretto', TO_DATE('25/04/2024', 'DD/MM/YYYY'));
INSERT INTO "Itinerario" ("Descrizione", "DataCreazione") VALUES ('Firenze - Lisbona via Milano', TO_DATE('27/04/2024', 'DD/MM/YYYY'));
INSERT INTO "Itinerario" ("Descrizione", "DataCreazione") VALUES ('Genova - Amsterdam diretto', TO_DATE('30/04/2024', 'DD/MM/YYYY'));
INSERT INTO "Itinerario" ("Descrizione", "DataCreazione") VALUES ('Catania - New York con scalo a Roma', TO_DATE('03/05/2024', 'DD/MM/YYYY'));
INSERT INTO "Itinerario" ("Descrizione", "DataCreazione") VALUES ('Palermo - Tokyo via Dubai e Singapore', TO_DATE('05/05/2024', 'DD/MM/YYYY'));

COMMIT;

-- Inserimento dati in tabella Opzione

INSERT INTO "Opzione" ("Tipo", "Prezzo") VALUES ('Bagaglio aggiuntivo', 30);
INSERT INTO "Opzione" ("Tipo", "Prezzo") VALUES ('Scelta del posto', 10);
INSERT INTO "Opzione" ("Tipo", "Prezzo") VALUES ('Imbarco prioritario', 15);
INSERT INTO "Opzione" ("Tipo", "Prezzo") VALUES ('Accesso lounge', 25);
INSERT INTO "Opzione" ("Tipo", "Prezzo") VALUES ('Assicurazione viaggio', 20);
INSERT INTO "Opzione" ("Tipo", "Prezzo") VALUES ('Fast track sicurezza', 12);
INSERT INTO "Opzione" ("Tipo", "Prezzo") VALUES ('Check-in assistito', 8);
INSERT INTO "Opzione" ("Tipo", "Prezzo") VALUES ('Pasto a bordo', 18);
INSERT INTO "Opzione" ("Tipo", "Prezzo") VALUES ('Wi-Fi in volo', 7);
INSERT INTO "Opzione" ("Tipo", "Prezzo") VALUES ('Trasporto animale', 50);

COMMIT;

-- Inserimento dati in tabella Passeggero

INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Marco', 'Rossi', TO_DATE('12/03/1985', 'DD/MM/YYYY'), 'RSSMRC85C12H501X', 'M', 'marco.rossi@email.it', '3451234567', 1);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Anna', 'Bianchi', TO_DATE('25/07/1990', 'DD/MM/YYYY'), 'BNCHNA90L65H501K', 'F', 'anna.bianchi@email.it', '3479876543', 2);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Luigi', 'Verdi', TO_DATE('10/11/1978', 'DD/MM/YYYY'), 'VRDLGU78S10H501E', 'M', 'luigi.verdi@email.it', '3462345678', 3);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Sara', 'Conti', TO_DATE('03/04/1995', 'DD/MM/YYYY'), 'CNTSAR95D03H501W', 'F', 'sara.conti@email.it', '3488765432', 4);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Giovanni', 'De Luca', TO_DATE('21/08/1982', 'DD/MM/YYYY'), 'DLCGNN82M21H501Y', 'M', 'giovanni.deluca@email.it', '3491112233', 5);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Laura', 'Marini', TO_DATE('06/12/1987', 'DD/MM/YYYY'), 'MRNLRA87T06H501T', 'F', 'laura.marini@email.it', '3405556677', 6);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Paolo', 'Ferrari', TO_DATE('17/01/1975', 'DD/MM/YYYY'), 'FRRPLA75A17H501H', 'M', 'paolo.ferrari@email.it', '3423334455', 7);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Elisa', 'Romano', TO_DATE('29/09/1993', 'DD/MM/YYYY'), 'RMNELI93P29H501B', 'F', 'elisa.romano@email.it', '3441112233', 8);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Andrea', 'Neri', TO_DATE('14/06/1989', 'DD/MM/YYYY'), 'NRINRD89H14H501R', 'M', 'andrea.neri@email.it', '3419988776', 9);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Chiara', 'Moretti', TO_DATE('30/05/1996', 'DD/MM/YYYY'), 'MRTCHR96E30H501L', 'F', 'chiara.moretti@email.it', '3455558899', 10);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Luca', 'Barbieri', TO_DATE('02/02/1980', 'DD/MM/YYYY'), 'BRBLUC80B02H501Q', 'M', 'luca.barbieri@email.it', '3498765432', 1);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Marta', 'Galli', TO_DATE('22/10/1988', 'DD/MM/YYYY'), 'GLLMRT88R22H501P', 'F', 'marta.galli@email.it', '3465432109', 2);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Davide', 'Fontana', TO_DATE('05/07/1979', 'DD/MM/YYYY'), 'FNTDVD79L05H501U', 'M', 'davide.fontana@email.it', '3471122334', 3);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Silvia', 'Martini', TO_DATE('18/03/1992', 'DD/MM/YYYY'), 'MRTSLV92C18H501D', 'F', 'silvia.martini@email.it', '3489988776', 4);
INSERT INTO "Passeggero" ("Nome", "Cognome", "DataNascita", "CF", "Sesso", "Email", "Telefono", "IdAccount") VALUES ('Federico', 'Testa', TO_DATE('09/09/1983', 'DD/MM/YYYY'), 'TSTFDC83P09H501G', 'M', 'federico.testa@email.it', '3493344556', 5);

COMMIT;

-- Inserimento dati in tabella Aeroporto

INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Leonardo da Vinci - Fiumicino', 'FCO', 'Roma', 'Italia');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Milano Malpensa', 'MXP', 'Milano', 'Italia');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Napoli Capodichino', 'NAP', 'Napoli', 'Italia');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Catania Fontanarossa', 'CTA', 'Catania', 'Italia');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Barcelona El Prat', 'BCN', 'Barcellona', 'Spagna');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Paris Charles de Gaulle', 'CDG', 'Parigi', 'Francia');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('London Heathrow', 'LHR', 'Londra', 'Regno Unito');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Frankfurt am Main', 'FRA', 'Francoforte', 'Germania');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Bologna Guglielmo Marconi', 'BLQ', 'Bologna', 'Italia');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Venezia Marco Polo', 'VCE', 'Venezia', 'Italia');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Torino Caselle', 'TRN', 'Torino', 'Italia');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Berlin Brandenburg', 'BER', 'Berlino', 'Germania');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Madrid Barajas', 'MAD', 'Madrid', 'Spagna');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Athens Eleftherios Venizelos', 'ATH', 'Atene', 'Grecia');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Firenze Peretola', 'FLR', 'Firenze', 'Italia');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Lisbona Humberto Delgado', 'LIS', 'Lisbona', 'Portogallo');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Genova Cristoforo Colombo', 'GOA', 'Genova', 'Italia');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Amsterdam Schiphol', 'AMS', 'Amsterdam', 'Paesi Bassi');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('New York JFK', 'JFK', 'New York', 'Stati Uniti');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Dubai International', 'DXB', 'Dubai', 'Emirati Arabi Uniti');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Singapore Changi', 'SIN', 'Singapore', 'Singapore');
INSERT INTO "Aeroporto" ("Nome", "Codice", "Citta", "Nazione") VALUES ('Tokyo Haneda', 'HND', 'Tokyo', 'Giappone');

COMMIT;

-- Inserimento dati in tabella Volo

INSERT INTO "Volo" ("NumeroVolo", "DataOraPartenza", "DataOraArrivo", "CompagniaAerea", "IdAeroportoPartenza", "IdAeroportoArrivo")
VALUES ('AZ123', TO_DATE('01/07/2025 08:30', 'DD/MM/YYYY HH24:MI'), TO_DATE('01/07/2025 10:00', 'DD/MM/YYYY HH24:MI'), 'Alitalia', 1, 2);
INSERT INTO "Volo" ("NumeroVolo", "DataOraPartenza", "DataOraArrivo", "CompagniaAerea", "IdAeroportoPartenza", "IdAeroportoArrivo")
VALUES ('RY456', TO_DATE('01/07/2025 12:00', 'DD/MM/YYYY HH24:MI'), TO_DATE('01/07/2025 14:30', 'DD/MM/YYYY HH24:MI'), 'Ryanair', 3, 5);
INSERT INTO "Volo" ("NumeroVolo", "DataOraPartenza", "DataOraArrivo", "CompagniaAerea", "IdAeroportoPartenza", "IdAeroportoArrivo")
VALUES ('LH789', TO_DATE('02/07/2025 09:45', 'DD/MM/YYYY HH24:MI'), TO_DATE('02/07/2025 11:30', 'DD/MM/YYYY HH24:MI'), 'Lufthansa', 8, 12);
INSERT INTO "Volo" ("NumeroVolo", "DataOraPartenza", "DataOraArrivo", "CompagniaAerea", "IdAeroportoPartenza", "IdAeroportoArrivo")
VALUES ('BA321', TO_DATE('02/07/2025 15:00', 'DD/MM/YYYY HH24:MI'), TO_DATE('02/07/2025 17:00', 'DD/MM/YYYY HH24:MI'), 'British Airways', 7, 6);
INSERT INTO "Volo" ("NumeroVolo", "DataOraPartenza", "DataOraArrivo", "CompagniaAerea", "IdAeroportoPartenza", "IdAeroportoArrivo")
VALUES ('DL654', TO_DATE('03/07/2025 20:00', 'DD/MM/YYYY HH24:MI'), TO_DATE('04/07/2025 08:30', 'DD/MM/YYYY HH24:MI'), 'Delta Airlines', 20, 19);
INSERT INTO "Volo" ("NumeroVolo", "DataOraPartenza", "DataOraArrivo", "CompagniaAerea", "IdAeroportoPartenza", "IdAeroportoArrivo")
VALUES ('EK987', TO_DATE('04/07/2025 22:00', 'DD/MM/YYYY HH24:MI'), TO_DATE('05/07/2025 07:00', 'DD/MM/YYYY HH24:MI'), 'Emirates', 21, 22);
INSERT INTO "Volo" ("NumeroVolo", "DataOraPartenza", "DataOraArrivo", "CompagniaAerea", "IdAeroportoPartenza", "IdAeroportoArrivo")
VALUES ('AF852', TO_DATE('05/07/2025 06:00', 'DD/MM/YYYY HH24:MI'), TO_DATE('05/07/2025 08:00', 'DD/MM/YYYY HH24:MI'), 'Air France', 6, 1);
INSERT INTO "Volo" ("NumeroVolo", "DataOraPartenza", "DataOraArrivo", "CompagniaAerea", "IdAeroportoPartenza", "IdAeroportoArrivo")
VALUES ('AZ741', TO_DATE('06/07/2025 14:00', 'DD/MM/YYYY HH24:MI'), TO_DATE('06/07/2025 15:15', 'DD/MM/YYYY HH24:MI'), 'Alitalia', 1, 9);
INSERT INTO "Volo" ("NumeroVolo", "DataOraPartenza", "DataOraArrivo", "CompagniaAerea", "IdAeroportoPartenza", "IdAeroportoArrivo")
VALUES ('KL963', TO_DATE('06/07/2025 11:00', 'DD/MM/YYYY HH24:MI'), TO_DATE('06/07/2025 13:00', 'DD/MM/YYYY HH24:MI'), 'KLM', 19, 18);
INSERT INTO "Volo" ("NumeroVolo", "DataOraPartenza", "DataOraArrivo", "CompagniaAerea", "IdAeroportoPartenza", "IdAeroportoArrivo")
VALUES ('NH159', TO_DATE('07/07/2025 09:00', 'DD/MM/YYYY HH24:MI'), TO_DATE('07/07/2025 23:00', 'DD/MM/YYYY HH24:MI'), 'Japan Airlines', 24, 20);

COMMIT;

-- Inserimento dati in tabella Biglietto

INSERT INTO "Biglietto" ("Prezzo", "DataAcquisto", "IdPasseggero", "IdItinerario")VALUES ('120.50', TO_DATE('01/05/2024', 'DD/MM/YYYY'), 1, 1);
INSERT INTO "Biglietto" ("Prezzo", "DataAcquisto", "IdPasseggero", "IdItinerario")VALUES ('180.00', TO_DATE('02/05/2024', 'DD/MM/YYYY'), 2, 2);
INSERT INTO "Biglietto" ("Prezzo", "DataAcquisto", "IdPasseggero", "IdItinerario")VALUES ('210.75', TO_DATE('05/05/2024', 'DD/MM/YYYY'), 3, 3);
INSERT INTO "Biglietto" ("Prezzo", "DataAcquisto", "IdPasseggero", "IdItinerario")VALUES ('150.00', TO_DATE('07/05/2024', 'DD/MM/YYYY'), 4, 4);
INSERT INTO "Biglietto" ("Prezzo", "DataAcquisto", "IdPasseggero", "IdItinerario")VALUES ('230.25', TO_DATE('10/05/2024', 'DD/MM/YYYY'), 5, 5);
INSERT INTO "Biglietto" ("Prezzo", "DataAcquisto", "IdPasseggero", "IdItinerario")VALUES ('195.00', TO_DATE('12/05/2024', 'DD/MM/YYYY'), 6, 6);
INSERT INTO "Biglietto" ("Prezzo", "DataAcquisto", "IdPasseggero", "IdItinerario")VALUES ('170.80', TO_DATE('15/05/2024', 'DD/MM/YYYY'), 7, 7);
INSERT INTO "Biglietto" ("Prezzo", "DataAcquisto", "IdPasseggero", "IdItinerario")VALUES ('250.00', TO_DATE('18/05/2024', 'DD/MM/YYYY'), 8, 8);
INSERT INTO "Biglietto" ("Prezzo", "DataAcquisto", "IdPasseggero", "IdItinerario")VALUES ('450.00', TO_DATE('20/05/2024', 'DD/MM/YYYY'), 9, 9);
INSERT INTO "Biglietto" ("Prezzo", "DataAcquisto", "IdPasseggero", "IdItinerario")VALUES ('1200.00', TO_DATE('25/05/2024', 'DD/MM/YYYY'), 10, 10);

COMMIT;

-- Inserimento dati in tabella Biglietto_Opzione

INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (1, 1); -- Biglietto 1 con Bagaglio aggiuntivo
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (1, 2); -- Biglietto 1 con Scelta del posto
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (2, 3); -- Biglietto 2 con Imbarco prioritario
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (3, 4); -- Biglietto 3 con Accesso lounge
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (3, 5); -- Biglietto 3 con Assicurazione viaggio
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (4, 6); -- Biglietto 4 con Fast track sicurezza
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (5, 7); -- Biglietto 5 con Check-in assistito
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (6, 8); -- Biglietto 6 con Pasto a bordo
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (7, 9); -- Biglietto 7 con Wi-Fi in volo
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (8, 10); -- Biglietto 8 con Trasporto animale
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (9, 1); -- Biglietto 9 con Bagaglio aggiuntivo
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (9, 2); -- Biglietto 9 con Scelta del posto
INSERT INTO "Biglietto_Opzione" ("IdBiglietto", "IdOpzione") VALUES (10, 5); -- Biglietto 10 con Assicurazione viaggio

COMMIT;

-- Inserimento dati in tabella Dati_Pagamento

INSERT INTO "Dati_Pagamento" ("Tipo", "NumeroCarta", "DataValidita", "Nome", "Cognome", "Paese", "Via", "Email", "Citta", "CAP", "IdAccount")
VALUES ('Carta di Credito', '4532123412341234', TO_DATE('30/11/2026', 'DD/MM/YYYY'), 'Alice', 'Rossi', 'Italia', 'Via Garibaldi 12', 'alice.rossi@email.com', 'Roma', '00100', 1);
INSERT INTO "Dati_Pagamento" ("Tipo", "NumeroCarta", "DataValidita", "Nome", "Cognome", "Paese", "Via", "Email", "Citta", "CAP", "IdAccount")
VALUES ('Carta di Debito', '5500123412345678', TO_DATE('15/07/2025', 'DD/MM/YYYY'), 'Marco', 'Bianchi', 'Italia', 'Corso Venezia 45', 'marco.bianchi@email.com', 'Milano', '20100', 2);
INSERT INTO "Dati_Pagamento" ("Tipo", "NumeroCarta", "DataValidita", "Nome", "Cognome", "Paese", "Via", "Email", "Citta", "CAP", "IdAccount")
VALUES ('Carta Prepagata', '340012341234567', TO_DATE('01/03/2027', 'DD/MM/YYYY'), 'Luca', 'Verdi', 'Italia', 'Via Napoli 23', 'luca.verdi@email.com', 'Napoli', '80100', 3);
INSERT INTO "Dati_Pagamento" ("Tipo", "NumeroCarta", "DataValidita", "Nome", "Cognome", "Paese", "Via", "Email", "Citta", "CAP", "IdAccount")
VALUES ('Carta di Credito', '6011123412345678', TO_DATE('20/09/2026', 'DD/MM/YYYY'), 'Giulia', 'Neri', 'Italia', 'Via Torino 67', 'giulia.neri@email.com', 'Torino', '10100', 4);
INSERT INTO "Dati_Pagamento" ("Tipo", "NumeroCarta", "DataValidita", "Nome", "Cognome", "Paese", "Via", "Email", "Citta", "CAP", "IdAccount")
VALUES ('Carta di Credito', '4111111111111111', TO_DATE('10/12/2024', 'DD/MM/YYYY'), 'Francesco', 'Romano', 'Italia', 'Via Firenze 15', 'francesco.romano@email.com', 'Firenze', '50100', 5);
INSERT INTO "Dati_Pagamento" ("Tipo", "NumeroCarta", "DataValidita", "Nome", "Cognome", "Paese", "Via", "Email", "Citta", "CAP", "IdAccount")
VALUES ('Carta di Debito', '5105105105105100', TO_DATE('18/08/2027', 'DD/MM/YYYY'), 'Marta', 'Colombo', 'Italia', 'Piazza Duomo 8', 'marta.colombo@email.com', 'Milano', '20121', 6);
INSERT INTO "Dati_Pagamento" ("Tipo", "NumeroCarta", "DataValidita", "Nome", "Cognome", "Paese", "Via", "Email", "Citta", "CAP", "IdAccount")
VALUES ('Carta Prepagata', '6011000990139424', TO_DATE('05/04/2025', 'DD/MM/YYYY'), 'Federica', 'Sala', 'Italia', 'Via Roma 34', 'federica.sala@email.com', 'Roma', '00184', 7);
INSERT INTO "Dati_Pagamento" ("Tipo", "NumeroCarta", "DataValidita", "Nome", "Cognome", "Paese", "Via", "Email", "Citta", "CAP", "IdAccount")
VALUES ('Carta di Credito', '378282246310005', TO_DATE('09/09/2026', 'DD/MM/YYYY'), 'Giovanni', 'Valli', 'Italia', 'Via Milano 22', 'giovanni.valli@email.com', 'Milano', '20123', 8);
INSERT INTO "Dati_Pagamento" ("Tipo", "NumeroCarta", "DataValidita", "Nome", "Cognome", "Paese", "Via", "Email", "Citta", "CAP", "IdAccount")
VALUES ('Carta di Debito', '30569309025904', TO_DATE('25/11/2025', 'DD/MM/YYYY'), 'Chiara', 'Bruno', 'Italia', 'Via Napoli 10', 'chiara.bruno@email.com', 'Napoli', '80121', 9);
INSERT INTO "Dati_Pagamento" ("Tipo", "NumeroCarta", "DataValidita", "Nome", "Cognome", "Paese", "Via", "Email", "Citta", "CAP", "IdAccount")
VALUES ('Carta di Credito', '6011111111111117', TO_DATE('14/07/2026', 'DD/MM/YYYY'), 'Andrea', 'Fontana', 'Italia', 'Corso Torino 3', 'andrea.fontana@email.com', 'Torino', '10123', 10);

COMMIT;

-- Inserimento dati in tabella Documento

INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Passaporto', 'X1234567', TO_DATE('01/01/2020', 'DD/MM/YYYY'), TO_DATE('01/01/2030', 'DD/MM/YYYY'), 'Italia', 1);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Carta d''Identità', 'AB123456', TO_DATE('15/05/2019', 'DD/MM/YYYY'), TO_DATE('15/05/2029', 'DD/MM/YYYY'), 'Italia', 2);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Passaporto', 'Y9876543', TO_DATE('10/03/2018', 'DD/MM/YYYY'), TO_DATE('10/03/2028', 'DD/MM/YYYY'), 'Italia', 3);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Carta d''Identità', 'CD789012', TO_DATE('20/07/2020', 'DD/MM/YYYY'), TO_DATE('20/07/2030', 'DD/MM/YYYY'), 'Italia', 4);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Passaporto', 'Z4561237', TO_DATE('05/05/2017', 'DD/MM/YYYY'), TO_DATE('05/05/2027', 'DD/MM/YYYY'), 'Italia', 5);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Carta d''Identità', 'EF345678', TO_DATE('30/09/2021', 'DD/MM/YYYY'), TO_DATE('30/09/2031', 'DD/MM/YYYY'), 'Italia', 6);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Passaporto', 'P7894321', TO_DATE('25/11/2019', 'DD/MM/YYYY'), TO_DATE('25/11/2029', 'DD/MM/YYYY'), 'Italia', 7);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Carta d''Identità', 'GH901234', TO_DATE('10/02/2018', 'DD/MM/YYYY'), TO_DATE('10/02/2028', 'DD/MM/YYYY'), 'Italia', 8);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Passaporto', 'Q3216547', TO_DATE('17/06/2017', 'DD/MM/YYYY'), TO_DATE('17/06/2027', 'DD/MM/YYYY'), 'Italia', 9);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Carta d''Identità', 'IJ567890', TO_DATE('05/04/2019', 'DD/MM/YYYY'), TO_DATE('05/04/2029', 'DD/MM/YYYY'), 'Italia', 10);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Passaporto', 'X7654321', TO_DATE('12/12/2016', 'DD/MM/YYYY'), TO_DATE('12/12/2026', 'DD/MM/YYYY'), 'Italia', 11);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Carta d''Identità', 'KL098765', TO_DATE('22/08/2018', 'DD/MM/YYYY'), TO_DATE('22/08/2028', 'DD/MM/YYYY'), 'Italia', 12);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Passaporto', 'M4567890', TO_DATE('30/03/2017', 'DD/MM/YYYY'), TO_DATE('30/03/2027', 'DD/MM/YYYY'), 'Italia', 13);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Carta d''Identità', 'MN234567', TO_DATE('15/01/2020', 'DD/MM/YYYY'), TO_DATE('15/01/2030', 'DD/MM/YYYY'), 'Italia', 14);
INSERT INTO "Documento" ("Tipo", "Numero", "DataEmissione", "DataScadenza", "PaeseEmittente", "IdPasseggero")
VALUES ('Passaporto', 'N1234567', TO_DATE('10/10/2015', 'DD/MM/YYYY'), TO_DATE('10/10/2025', 'DD/MM/YYYY'), 'Italia', 15);

COMMIT;

-- Inserimento dati in tabella Itinerario_Volo

-- 1. Milano - Roma diretto → volo AZ123 (id 1)
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (1, 1, 1);

-- 2. Roma - Parigi con scalo a Milano → voli AF852 (Roma → Milano), poi RY456 (Milano → Parigi)
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (2, 7, 1); -- Roma → Milano
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (2, 2, 2); -- Milano → Parigi

-- 3. Napoli - Londra via Roma → voli AZ741 (Napoli → Roma), BA321 (Roma → Londra)
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (3, 8, 1); -- Napoli → Roma
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (3, 4, 2); -- Roma → Londra

-- 4. Torino - Berlino diretto → volo LH789 (id 3)
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (4, 3, 1);

-- 5. Venezia - Madrid con scalo a Barcellona → voli KL963 (Venezia → Barcellona), DL654 (Barcellona → Madrid)
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (5, 9, 1); -- Venezia → Barcellona
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (5, 5, 2); -- Barcellona → Madrid

-- 6. Bologna - Atene diretto → volo AZ741 (id 8)
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (6, 8, 1);

-- 7. Firenze - Lisbona via Milano → voli AF852 (Firenze → Milano), LH789 (Milano → Lisbona)
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (7, 7, 1); -- Firenze → Milano
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (7, 3, 2); -- Milano → Lisbona

-- 8. Genova - Amsterdam diretto → volo RY456 (id 2)
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (8, 2, 1);

-- 9. Catania - New York con scalo a Roma → voli AZ741 (Catania → Roma), DL654 (Roma → New York)
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (9, 8, 1); -- Catania → Roma
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (9, 5, 2); -- Roma → New York

-- 10. Palermo - Tokyo via Dubai e Singapore → EK987 (Palermo → Dubai), NH159 (Singapore → Tokyo)
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (10, 6, 1); -- Palermo → Dubai
INSERT INTO "Itinerario_Volo" ("IdItinerario", "IdVolo", "Ordine") VALUES (10, 10, 2); -- Singapore → Tokyo

COMMIT;

-- Inserimento dati in tabella Prenotazione_Attiva

INSERT INTO "Prenotazione_Attiva" ("IdItinerario", "IdPasseggero") VALUES (1, 1);  -- Giovanni Bianchi prenota itinerario 1 per sé
INSERT INTO "Prenotazione_Attiva" ("IdItinerario", "IdPasseggero") VALUES (2, 2);  -- Giovanni Bianchi prenota itinerario 2 per Laura Bianchi
INSERT INTO "Prenotazione_Attiva" ("IdItinerario", "IdPasseggero") VALUES (3, 3);  -- Maria Verdi prenota itinerario 3 per sé
INSERT INTO "Prenotazione_Attiva" ("IdItinerario", "IdPasseggero") VALUES (4, 4);  -- Luca Rossi prenota itinerario 4 per sé
INSERT INTO "Prenotazione_Attiva" ("IdItinerario", "IdPasseggero") VALUES (5, 5);  -- Luca Rossi prenota itinerario 5 per Giulia Rossi
INSERT INTO "Prenotazione_Attiva" ("IdItinerario", "IdPasseggero") VALUES (1, 3);  -- Maria Verdi prenota anche itinerario 1 (viaggio multiplo)
INSERT INTO "Prenotazione_Attiva" ("IdItinerario", "IdPasseggero") VALUES (2, 6);  -- Anna Neri prenota itinerario 2 per sé
INSERT INTO "Prenotazione_Attiva" ("IdItinerario", "IdPasseggero") VALUES (3, 1);  -- Giovanni Bianchi prenota itinerario 3 per sé (altro viaggio)
INSERT INTO "Prenotazione_Attiva" ("IdItinerario", "IdPasseggero") VALUES (4, 6);  -- Anna Neri prenota itinerario 4 per sé (secondo viaggio)
INSERT INTO "Prenotazione_Attiva" ("IdItinerario", "IdPasseggero") VALUES (5, 3);  -- Maria Verdi prenota itinerario 5 per sé (terzo viaggio)

COMMIT;

