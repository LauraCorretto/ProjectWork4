-- Create table
create table "Aeroporto"
(
  "IdAeroporto"             NUMBER GENERATED ALWAYS AS IDENTITY,
  "Nome"                    VARCHAR2(100) not null,
  "Codice"                  VARCHAR2(100) not null,
  "Citta"                   VARCHAR2(100) not null,
  "Nazione"                 VARCHAR2(100) not null
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
comment on table "Aeroporto"  is 'Taballe contenente gli aeroporti';

-- Create/Recreate primary, unique and foreign key constraints 
alter table "Aeroporto"  add constraint INPKYIDAEROPORTO primary key ("IdAeroporto")
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
create or replace public synonym "Aeroporto"  for "Aeroporto";
