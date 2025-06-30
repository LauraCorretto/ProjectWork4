-- Create table
create table "Storico_Prenotazione"
( 
  "IdStorico"              NUMBER not null,
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
comment on table "Storico_Prenotazione"  is 'Taballe contenente l''elenco dello storico prenotazioni';

-- Create/Recreate primary, unique and foreign key constraints 
alter table Storico_Prenotazione  add constraint INPKYIdStorico primary key (IdStorico)
  using index 
  tablespace TSGX0I00
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 40K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table Storico_Prenotazione
  add constraint FKITINERARIO2 foreign key ("IdItinerario")
  references "Itinerario"  ("IdItinerario");
alter table Storico_Prenotazione
  add constraint FKACCOUNT1 foreign key ("IdAccount")
  references "Account"  ("IdAccount");
alter table Storico_Prenotazione
  add constraint FKPASSEGGERO1 foreign key ("IdPasseggero")
  references "Passeggero"  ("IdPasseggero");

-- Create the synonym 
create or replace public synonym "Storico_Prenotazione"  for "Storico_Prenotazione";
