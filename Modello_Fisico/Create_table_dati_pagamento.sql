-- Create table
create table "Dati_Pagamento"
(
  "IdDatiPagamento"          NUMBER GENERATED ALWAYS AS IDENTITY,
  "Tipo"                     VARCHAR2(200) not null,
  "NumeroCarta"              VARCHAR2(200) not null,
  "DataValidita"             DATE not null,
  "Nome"                     VARCHAR2(200) not null,
  "Cognome"                  VARCHAR2(200) not null,
  "Paese"                    VARCHAR2(50),
  "Via"                      VARCHAR2(200),
  "Email"                    VARCHAR2(100),
  "Citta"                    VARCHAR2(100),
  "CAP"                      VARCHAR2(15),
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
comment on table "Dati_Pagamento"  is 'Taballe per la registrazione dei dati di pagamento di un account';

-- Create/Recreate primary, unique and foreign key constraints 
alter table "Dati_Pagamento"  add constraint INPKYIDDATIPAGAMENTO primary key ("IdDatiPagamento")
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

alter table Dati_Pagamento
  add constraint FKPDATIPAGAMENTO_ACCOUNT foreign key ("IdAccount")
  references "Account"  ("IdAccount");

-- Create the synonym 
create or replace public synonym "Dati_Pagamento"  for "Dati_Pagamento";



