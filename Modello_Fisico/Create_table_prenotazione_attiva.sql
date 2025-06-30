-- Create table
create table "Prenotazione_Attiva"
( 
  "IdPrenotazione"         NUMBER GENERATED ALWAYS AS IDENTITY,
  "IdItinerario"           NUMBER,
  "IdAccount"              NUMBER,
  "IdPasseggero"           NUMBER
)
tablespace TSGX0D00
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
  
  
-- Add comments to the table 
comment on table "Prenotazione_Attiva"  is 'Taballe contenente l''elenco delle prenotazioni attive';

-- Create/Recreate primary, unique and foreign key constraints 
alter table Prenotazione_Attiva
  add constraint FKITINERARIO1 foreign key ("IdItinerario")
  references "Itinerario"  ("IdItinerario");
alter table Prenotazione_Attiva
  add constraint FKACCOUNT foreign key ("IdAccount")
  references "Account"  ("IdAccount");
alter table Prenotazione_Attiva
  add constraint FKPASSEGGERO foreign key ("IdPasseggero")
  references "Passeggero"  ("IdPasseggero");

-- Create the synonym 
create or replace public synonym "Prenotazione_Attiva"  for "Prenotazione_Attiva";
