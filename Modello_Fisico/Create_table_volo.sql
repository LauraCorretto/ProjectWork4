-- Create table
create table "Volo"
(
  "IdVolo"                  NUMBER GENERATED ALWAYS AS IDENTITY,
  "NumeroVolo"              VARCHAR2(100) not null,
  "DataOraPartenza"         DATE not null,
  "DataOraArrivo"           DATE not null,
  "CompagniaAerea"          VARCHAR2(100) not null,
  "IdAeroportoPartenza"     NUMBER,
  "IdAeroportoArrivo"       NUMBER
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
comment on table "Volo"  is 'Taballe contenente l''elenco dei voli';

-- Create/Recreate primary, unique and foreign key constraints 
alter table "Volo"  add constraint INPKYIDVOLO primary key ("IdVolo")
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

alter table Volo
  add constraint FKVOLO_AEROPORTOPARTENZA foreign key ("IdAeroportoPartenza")
  references "Aeroporto"  ("IdAeroportoPartenza");
alter table Volo
  add constraint FKVOLO_AEROPORTOARRIVO foreign key ("IdAeroportoArrivo")
  references "Aeroporto"  ("IdAeroportoArrivo");

-- Create the synonym 
create or replace public synonym "Volo"  for "Volo";
