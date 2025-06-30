-- Create table
create table "Biglietto_Opzione"
(
  "IdBiglietto"           NUMBER ,
  "IdOpzione"             NUMBER
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
comment on table "Biglietto_Opzione"  is 'Taballe ponte tra le tabelle Biglietto ed Opzione';

-- Create/Recreate primary, unique and foreign key constraints 
alter table Biglietto_Opzione
  add constraint FKBIGLIETTO foreign key ("IdBiglietto")
  references "Biglietto"  ("IdBiglietto");
alter table Biglietto_Opzione
  add constraint FKOPZIONE foreign key ("IdOpzione")
  references "Opzione"  ("IdOpzione");

create index IDXBiglietto_Opzione on Biglietto_Opzione (IdBiglietto,IdOpzione)
  tablespace TSGX0I00
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
-- Create the synonym 
create or replace public synonym "Biglietto_Opzione"  for "Biglietto_Opzione";
