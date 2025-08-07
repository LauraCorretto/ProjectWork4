-- Create table
create table "Biglietto"
(
  "IdBiglietto"             NUMBER GENERATED ALWAYS AS IDENTITY,
  "Prezzo"                  VARCHAR2(100) not null,
  "DataAcquisto"            DATE not null,
  "IdPasseggero"            NUMBER,
  "IdItinerario"            NUMBER  
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
comment on table "Biglietto"  is 'Taballe per contenente i biglietti aerei';

-- Create/Recreate primary, unique and foreign key constraints 
alter table "Biglietto"  add constraint INPKYIDBIGLIETTO primary key ("IdBiglietto")
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

alter table Biglietto
  add constraint FKBIGLIETTO_PASSEGGERO foreign key ("IdPasseggero")
  references "Passeggero"  ("IdPasseggero");

alter table Biglietto
  add constraint FKBIGLIETTO_ITINERARIO foreign key ("IdItinerario")
  references "Itinerario"  ("IdItinerario");

-- Create the synonym 
create or replace public synonym "Biglietto"  for "Biglietto";


