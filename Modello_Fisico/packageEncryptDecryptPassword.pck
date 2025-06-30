create or replace package packageEncryptDecryptPassword is

  -- Il package contiene le funzioni atte al cryptaggio e decriptaggio del campo password
  function enc_account_passwd(l_credit_card_no in varchar2)
                              return varchar2;
    
  function dec_account_passwd(l_credit_card_no varchar2)
                              return varchar2;
end packageEncryptDecryptPassword;
/
create or replace package body packageEncryptDecryptPassword is

-- Questo package contiene le funzioni atte al cryptaggio e decriptaggio del campo password,
-- utilizzando il pacchetto base di Oracle dbms_crypto;
-- le funzioni definite possono essere richiamate esternamente riferendo <nome package>.<nome funzione>

  /*Significato dettagliato di DBMS_CRYPTO.des_cbc_pkcs5:
  DES: algoritmo di cifratura Data Encryption Standard (a 56 bit).
  CBC (Cipher Block Chaining): modalità di cifratura in cui ogni blocco di testo cifrato dipende da quello precedente.
  PKCS5: schema di padding per completare i blocchi quando il dato non ha lunghezza multipla del blocco.*/
  

   encrypted_raw      RAW (2048);             -- stores encrypted binary text
   decrypted_raw      RAW (2048);             -- stores decrypted binary text
   key_bytes_raw      RAW (128);              -- stores 128-bit encryption key
   
   enc_mode           number := dbms_crypto.ENCRYPT_AES128 +
                                dbms_crypto.chain_cbc      +
                                dbms_crypto.pad_pkcs5;
                                
  -- questa funzione ha il conpito di  cryptare la password  passatale tramite la variabile varchar2 l_credit_card_no                                                                            
  
  function enc_account_passwd(l_credit_card_no in varchar2)
      return varchar2 as
      
    l_ccn_raw           RAW(128) := UTL_RAW.cast_to_raw(l_credit_card_no); 
    -- casta, ossia converte, il tipo varchar2 password in un tipo raw
    l_key               RAW(128) := UTL_RAW.cast_to_raw('abcdefgh'); 
    -- casta, ossia converte, la chiave stringa in un tipo raw
    l_encrypted_raw     RAW(2048);
    -- dichiara un tipo raw che andrà a contenere la chiave cryptata.
  begin
    -- richiama la function encrypt del package Oracle DBMS_CRYPTO, passandogli
    l_encrypted_raw := DBMS_CRYPTO.encrypt(src => l_ccn_raw, -- la password in raw,
                                           typ => DBMS_CRYPTO.des_cbc_pkcs5, 
                                           -- è una costante predefinita che rappresenta una combinazione 
                                           --di algoritmo di cifratura e modalità di padding
                                           key => l_key); -- la chiave raw per il criptaggio    
                                         
    return UTL_RAW.cast_to_varchar2(l_encrypted_raw);  
  end;
  
 -- funzione per il decryptaggio password dell'utente l_credit_card_no
 
  function dec_account_passwd(l_credit_card_no varchar2)
      return varchar2 as
    l_ccn_raw           RAW(128) ;
    -- dichiara il campo che conterrà la password cryptata prelevata dalla tabella
    l_key               RAW(128) := UTL_RAW.cast_to_raw('abcdefgh');
   -- casta, ossia converte, la chiave stringa in un tipo raw

    l_decrypted_raw     RAW(2048);
    -- dichiara un tipo raw che andrà a contenere la password decryptata.
    
    begin
    -- preleva la pasword cryptata  dell'utente dato in input alla funzione
    select UTL_RAW.cast_to_raw("Password")
    into l_ccn_raw
    from "Account" f
    where "IdAccount" = to_number(l_credit_card_no);
    
    -- della password cryptata effettua il decrypt per renderla in chiaro
    l_decrypted_raw := DBMS_CRYPTO.decrypt(src => l_ccn_raw, 
                                           typ => DBMS_CRYPTO.des_cbc_pkcs5, 
                                           key => l_key);
    -- a questo punto casta, converte, la password in chiaro dal fornato raw al fornmato varchar2
    return UTL_RAW.cast_to_varchar2(l_decrypted_raw);
  end;          
end packageEncryptDecryptPassword;
/
