-- Create table
create table "Itinerario_Volo"
(
  "IdItinerario"           NUMBER,
  "IdVolo"                 NUMBER,
  "Ordine"                 NUMBER
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
comment on table "Itinerario_Volo"  is 'Taballe ponte tra le tabelle Itinerario e Volo';

-- Create/Recreate primary, unique and foreign key constraints 
alter table Itinerario_Volo
  add constraint FKITINERARIO foreign key ("IdItinerario")
  references "Itinerario"  ("IdItinerario");
alter table Itinerario_Volo
  add constraint FKVOLO foreign key ("IdVolo")
  references "Volo"  ("IdVolo");

create index IDXItinerario_Volo on Itinerario_Volo (IdItinerario, IdVolo)
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
create or replace public synonym "Itinerario_Volo"  for "Itinerario_Volo";
