-- Create table
create table "Account"
( "IdAccount"             NUMBER GENERATED ALWAYS AS IDENTITY,
  "Email"                 VARCHAR2(100) not null,
  "Password"              VARCHAR2(50) not null,
  "DataCreazione"         DATE
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
comment on table "Account"  is 'Taballe per la registrazione degli account dell''applicazione';

-- Create/Recreate primary, unique and foreign key constraints 
alter table "Account"  add constraint INPKYIDACCOUNT primary key ("IdAccount")
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
create or replace public synonym "Account"  for "Account";


