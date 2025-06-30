-- Create table
create table "Documento"
(
  "IdDocumento"             NUMBER GENERATED ALWAYS AS IDENTITY,
  "Tipo"                    VARCHAR2(50) not null,
  "Numero"                  VARCHAR2(100) not null,
  "DataEmissione"           DATE not null,
  "DataScadenza"            DATE not null,
  "PaeseEmittente"          VARCHAR2(100) not null,
  "IdPasseggero"            NUMBER
  
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
comment on table "Documento"  is 'Taballe per la registrazione dei documenti validi dei un passeggeri';

-- Create/Recreate primary, unique and foreign key constraints 
alter table "Documento"  add constraint INPKYIDDOCUMENTO primary key ("IdDocumento")
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

alter table Documento
  add constraint FKDOCUMENTO_PASSEGGERO foreign key ("IdPasseggero")
  references "Passeggero"  ("IdPasseggero");

-- Create the synonym 
create or replace public synonym "Documento"  for "Documento";
