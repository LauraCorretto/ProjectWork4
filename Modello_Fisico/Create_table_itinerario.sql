-- Create table
create table "Itinerario"
(
  "IdItinerario"             NUMBER GENERATED ALWAYS AS IDENTITY,
  "Descrizione"              VARCHAR2(500) not null,
  "DataCreazione"            DATE not null
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
comment on table "Itinerario"  is 'Taballe contenente gli itinerari acquistabili';

-- Create/Recreate primary, unique and foreign key constraints 
alter table "Itinerario"  add constraint INPKYIDITINERARIO primary key ("IdItinerario")
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

-- Create the synonym 
create or replace public synonym "Itinerario"  for "Itinerario";
