-- Create table
create table "Passeggero"
(
  "IdPasseggero"             NUMBER GENERATED ALWAYS AS IDENTITY,
  "Nome"                     VARCHAR2(200) not null,
  "Cognome"                  VARCHAR2(200) not null,
  "DataNascita"              DATE,
  "CF"                       VARCHAR2(20) not null,
  "Sesso"                    VARCHAR2(2),
  "Email"                    VARCHAR2(100),
  "Telefono"                 VARCHAR2(15),
  "IdAccount"                NUMBER
  
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
comment on table "Passeggero"  is 'Taballe per la registrazione dei passeggeri dell''applicazione';

-- Create/Recreate primary, unique and foreign key constraints 
alter table "Passeggero"  add constraint INPKYIDPASSEGGERO primary key ("IdPasseggero")
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

alter table Passeggero
  add constraint FKPASSEGGERO_ACCOUNT foreign key ("IdAccount")
  references "Account"  ("IdAccount");

-- Create the synonym 
create or replace public synonym "Passeggero"  for "Passeggero";



