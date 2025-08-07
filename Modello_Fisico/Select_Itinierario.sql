-- Recupero Itinerario --
-- La select sotto riportata estrae per uno specifico itinerario tutti i voli facenti parte in ordine di partenza. 
-- Porta in output le informazioni inerenti i voli coinvolti, gli aeroporti ed i passeggeri del volo.
 
select i."Descrizione" "Descrizione Itinerario", v."NumeroVolo" "Numero Volo", v."DataOraPartenza" "Data/Ora Partenza", 
       v."DataOraArrivo" "Data/Ora Arrivo", v."CompagniaAerea" "Compagnia Aerea", 
       pp."Nome" || '(' || pp."Citta" || ')' "Aeroporto Partenza", a."Nome" || '(' || a."Citta" || ')' "Aeroporto Arrivo",
       p."Nome" "Nome Passeggero", p."Cognome" "Cognome Passeggero" 
from "Itinerario" i, "Itinerario_Volo" iv, "Volo" v, "Aeroporto" a, "Aeroporto" pp, "Biglietto" b, "Passeggero" p 
where i."IdItinerario" = 9
and i."IdItinerario" = iv."IdItinerario"
and iv."IdVolo" = v."IdVolo"
and a."IdAeroporto" = v."IdAeroportoArrivo"
and pp."IdAeroporto" = v."IdAeroportoPartenza"
and b."IdItinerario" = i."IdItinerario"
and b."IdPasseggero" = p."IdPasseggero"
order by iv."Ordine";




