-- Create table
create table "Opzione"
(
  "IdOpzione"             NUMBER GENERATED ALWAYS AS IDENTITY,
  "Tipo"                  VARCHAR2(100) not null,
  "Prezzo"                NUMBER not null
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
comment on table "Opzione"  is 'Taballe contenente le opzioni acquistabili';

-- Create/Recreate primary, unique and foreign key constraints 
alter table "Opzione"  add constraint INPKYIDOPZIONE primary key ("IdOpzione")
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
create or replace public synonym "Opzione"  for "Opzione";
