# Progetto-Citibike-5
Gestione e analisi di grandi quantità di dati forniti da CitibBikeNYC tramite l'utilizzo di Excel, SQL (postgreSQL), Visual Studio (Python) e Microsoft Power BI.

ENG: Management and analysis of large amounts of data provided by CitiBikeNYC using Excel, SQL (PostgreSQL), Visual Studio (Python) and Microsoft Power BI.

1) Sono stati ottenuti dati sul noleggio di biciclette elettriche e non dal sito di citibikenyc, dal seguente link: https://citibikenyc.com/system-data.
il file zip ->  JC-202407-citibike-tripdata.csv.zip	8 agosto 2024, 17:40:05
che comprende:

- ID corsa
- Tipo cavalcabile
- Iniziato a
- Terminato alle
- Nome della stazione di partenza
- ID stazione di partenza
- Nome della stazione di arrivo
- ID stazione finale
- Latitudine di partenza
- Longitudine iniziale
- Latitudine finale
- Longitudine finale
- Membro o passeggero occasionale

L'obbiettivo del progetto è quello di mostrare all'azienda, tramite grafici, qual è la realazione tra l'utilizzo dei mezzi forniti da citibike e il meteo giornaliero. Mostrare all'azienda le stazioni utilizzate in maniera prioritaria dai clienti e quelle che invece vengono utilizzate meno; con lo scopo di ottimizzare la distribuzione delle biciclette spostandole dalle aree meno frequentate a quelle più attive. Creare grafici che rendano chiaro l'andamento dell'utilizzo dei mezzi messi a disposizione nelle varie fasce orarie in ognuno dei giorni della settimana; per capire, per esempio, quando effettuare manutenzioni alle stazioni per recare meno disagi ai clienti.

2) File aperto e controllato tramite Excel, per analizzare il contenuto (112444 righe) e verificare se ci sono eventuali elemeti da "pulire" prima di effetuare i calcoli. File nominato: "FileDiPartenza.csv" in questo progetto.
Per le informazioni Sul meteo di New York è stato utilizzato il file: "weather_nyc_july2024.csv".

3) Viene creato un database con postgreSQL e importo i dati al suo interno. File nominato: "CreazioneDatabase.sql".

4) Tramite query in SQL vengono realizzate nuove tabelle che raggruppano le precipitazioni; la descrizione del meteo (es. cielo pulito, pioggia leggera, pioggia, pioggia forte o nuvolosa) e la temperatura (la minima e anche la minima, media e massima) per ogni giorno del mese. Successivamente i dati vengono elaborati su Visual Studio tramite il linguaggio Python e altre query SQL all'interno di PostgreSQL.
File che fa riferimento a questo processo:
"MetodoAlternativoPerImport.sql"
"ControlloImport.sql"
"Temperature.sql"
"ViewMeteo.sql"
"TipologieDiMeteo.sql"

Nuove tabelle che raggruppano dati sulla tipologia dei mezzi di trasporto utilizzati, sul tipo di utente che utilizza il servizio (membro o no), sulla durata dei viaggi e nei giorni in cui viene effettuato il viaggio.
File che fa riferimento a questo processo:
StatisticheSullaDurata.sql
CreazioneTabella_DurataViaggi.sql

Tramite query in SQL creiamo una view contenente i dati dei giorni della settimana in cui vengono effettuati gli spostamenti e le fasce orarie. Le fasce orarie sono state divise in: Notte (00-05); Mattina (06-11); Pomeriggio (12-17); Sera (18-23).
File che fa riferimento a questo processo:
ViaggioSettimanale_ConFasciaOraria.sql

Tramite query in SQL troviamo 2 tabelle, che rispettivamente mostrano: le 20 stazioni più e meno utilizzate; il tutto dopo una pulizia dei viaggi che capitava risultassero di zero secondi.
Parte dei file che sono stati caricati sono:
Pulizia_dati.sql
Stazioni_meno_utilizzate.sql
Stazioni_più_utilizzate.sql

5) In fine sono stati creati grafici che mostrano:
- MappaDelleStazioni.png -> la mappa di New York con la posizione di tutte le stazioni.
- 20StazioniMenoUsate.png -> grafico a barre in pila delle 20 stazioni meno utilizzate dai clienti e la tabella originale derivante da SQL.
- 20MenoUtilizzateGrafico2.png -> grafico a linee delle 20 stazioni meno utilizzate dai clienti.
- 20StazioniPiùUtilizzate.png -> istogramma a colonne in pila delle 20 stazioni più utilizzate dai clienti e la tabella originale derivante da SQL.
- 20utilizzateGrafico2.png -> grafico a linee delle 20 stazioni meno utilizzate dai clienti.
- TutteLeStazioniTorta.png -> grafico a torta che mostra la distrubuzione di tutti gli utilizzi di tutte le stazione nell'arco di tempo dell'analisi.
- TutteLeStazioniNastri.png -> grafico a nastri con l'andamento degli utilizzi di tutte le stazioni.
- "BarreInPila_GiornoDellaSettimana_FasciaOraria.png" -> raggruppamento in pila degli utilizzi nelle fasce orarie con legenda che mostra il colore di ogni giorno.
- "BarreRaggruppate_GiornoDellaSettimana_FasciaOraria.png" -> raggruppamento per fascia oraria di tutti i viaggi effettuati in un giorno della settimana.
- "GraficoLinee_AndamentoOrario.png" -> mostra in modo chiaro l'andamento dei giorni della settimana durante le fasce orarie dall'apice al punto minimo.
- "Torta_FasciaOrariaUtilizzo.png" -> mostra la distribuzione delle fasce orarie di tutti i viaggi effettuati con i mezzi della società.
- "TipologiaDiBici.png" -> paragone tra tempo di utilizzo (in minuti) delle due tipologie di biciclette fornite dall'azienda.
- "TipoDiBiciConMembership.png" -> paragone tra tempo di utilizzo delle due tipologie di biciclette; con legenda che indica le tempistiche di utilizzo di utenti membri o utenti casuali.
- "TortaTempoTrascorsoPerTipologiaBici.png" -> diagramma a torta che mostra tempo di utilizzo (in minuti) delle due tipologie di biciclette (con percentuali delle fette).
- "GraficoAdArea_AndamentoUtilizzoPerMembership.png" -> grafico ad area che mostra l'andamento dell'utilizzo giornaliero dei mezzi di trasporto da parte dei membri o utenti casuali.
- "TortaUtilizzoGiornoPerGiorno_ConTipologiaBici.png" -> grafico a torta che indica quanto influisce ogni singolo viaggio sul totale di tempistiche aziendali (totale viaggi in minuti).
- "DiminuzioneDellaDomandaInBaseAlMeteo.png" -> Grafico ad aree che mostra l'andaento del numero dei viaggi basandosi sul meteo.
- "TemperaturaMinimaMediaMassimaGenerale.png" -> istogramma che rappresenta la temperatura minima, media e massima di tutte le temperature rilevate.
- "TemperaturaMinimaMediaMassimaGiornoPerGiorno.png" -> istogramma che rappresenta la temperatura minima, media e massima delle temperature rilevate quotidianamente (raggruppando giorno per giorno).
- "TemperaturaMinimaMediaMassimaPerTipologiaDiMeteo.png" -> istogramma che rappresenta la temperatura minima, media e massima delle temperature raggruppate per tipologia di meteo (es. cielo pulito, pioggia leggera, pioggia, pioggia forte e nuvolosa).
- "TortaViaggiInBaseAlMeteo.png" -> diagramma a torta che mostra la suddivisione percentuale dei viaggi in base al meteo.

Il risultato finale mostra un completo squilibrio tra le stazioni più utilizzate, in particolare la prima, con il restante delle stazioni. Quindi ottimizzabile per esempio tramite lo spostamento di parte dei mezzi di spostamento in favore di determinate stazioni (in situazioni di quotidianità e on per esempio di eventi i luoghi specifici).
Un equilibrio durante l'arco della giornata (con un leggero aumento a favore del pomeriggio) e un netto calo durante 5 ore notturne che vanno da mezzanotte alle 5 di mattina. Molto curioso l'andamento del fine settimana (vederdì sabato e domenica), che vede un utilizzo inferiore durante mattina e pomeriggio e sera rispetto agli altri 4 giorni; per poi avere picchi che surclassano notevolmente gli altri giorni durante la notte. Quindi, riassumendo, nel caso in cui si volesse effettuare una manutenzione di alcune strutture si potrebbe effettuare nell'arco notturno dal lunedì al giovedi, oppure se l'azienda ne è impossibilitata, durante la giornata nel fine settimana.
Un rapporto quasi egualitario tra bicicletta elettrica e classica (con una leggera propensione per l'elettrica). Ma non solo, notiamo anche un dato molto curioso: le biciclette elettriche vengono utilizzate maggiormente da clienti che non sono membri affiliati dell'azienda; mentre quelle classiche maggiormente da clienti membri.
In fine notiamo che la maggior parte dei viaggi effettuati tramite biciclette fornite da citibike sono effettuati durante le giornate soleggiate (oltre il 52%); mentre i restanti viaggi vengono effettuati in percentuale inversamente proporzionale all'intensità della pioggia (più piove meno viaggi ci sono). 
Va però precisato che alla precedente frase va esclusa la percentuale del cielo nuvoloso, che risulta essere la più bassa di tutte (3,23%); la causa potrebbe essere attribuibile alla metodologia con cui viene indicato questo titolo alla giornata, dato che potrebbe essergli spesso preferito il titolo di soleggiato o di pioggia leggera e che quindi ottenga poche rilevazioni.


  // ENGLISH VERION

1) Data Collection

Data on electric and standard bicycle rentals were obtained from the Citibike NYC website at the following link: https://citibikenyc.com/system-data. The ZIP file → JC-202407-citibike-tripdata.csv.zip (August 8, 2024, 17:40:05)
contains the following columns:

Ride ID
Rideable type
Started at
Ended at
Start station name
Start station ID
End station name
End station ID
Start latitude
Start longitude
End latitude
End longitude
Member or casual rider

The goal of the project is to show the company, through visualizations, the relationship between the use of Citibike vehicles and daily weather conditions.
We aim to identify the most and least used stations so that the company can optimize bike distribution—relocating bikes from less busy areas to high-demand ones.
And we create visualizations showing bike usage trends across different time slots and days of the week, to help identify optimal times for maintenance with minimal disruption to customers.

2) Data Cleaning and Preparation:
The file was opened and checked in Excel to review its contents (112,444 rows) and verify whether any elements needed cleaning before analysis.
The dataset used in the project was named “FileDiPartenza.csv”.
For weather information in New York City, another dataset was used: “weather_nyc_july2024.csv”.

3) Database Creation -> A PostgreSQL database was created and the data were imported into it. The SQL file used for this process is “CreazioneDatabase.sql”.

4) Data Processing with SQL and Python
Using SQL queries, new tables were created to group together: Precipitation levels; Weather descriptions (e.g., clear sky, light rain, rain, heavy rain, cloudy); Temperature data (minimum, average, and maximum for each day of the month);
These data were further processed in Visual Studio using Python and additional SQL queries within PostgreSQL.
Files used in this step include:
- MetodoAlternativoPerImport.sql
- ControlloImport.sql
- Temperature.sql
- ViewMeteo.sql
- TipologieDiMeteo.sql

New tables were also created to group data about: The type of vehicle used; The type of user (member or casual); Trip duration; The day the trip occurred.
Relevant files for these processes:
StatisticheSullaDurata.sql
CreazioneTabella_DurataViaggi.sql

A SQL view was created containing data on the day of the week and time slot in which trips occurred.
Time slots were divided as follows: Night (00–05); Morning (06–11); Afternoon (12–17); Evening (18–23).
File used for this process:
ViaggioSettimanale_ConFasciaOraria.sql

Two additional SQL tables were generated showing, respectively, the 20 most used and 20 least used stations—after cleaning out trips with zero duration.
Files used include:
Pulizia_dati.sql
Stazioni_meno_utilizzate.sql
Stazioni_più_utilizzate.sql

5) Data Visualization, several charts were created:
- MappaDelleStazioni.png → Map of New York City showing all station locations.
- 20StazioniMenoUsate.png → Stacked bar chart of the 20 least used stations (with the original SQL data table).
- 20MenoUtilizzateGrafico2.png → Line chart of the 20 least used stations.
- 20StazioniPiùUtilizzate.png → Stacked column chart of the 20 most used stations (with the original SQL data table).
- 20utilizzateGrafico2.png → Line chart of the 20 most used stations.
- TutteLeStazioniTorta.png → Pie chart showing the distribution of all station uses during the analysis period.
- TutteLeStazioniNastri.png → Ribbon chart showing usage trends for all stations.
- BarreInPila_GiornoDellaSettimana_FasciaOraria.png → Stacked bar chart of hourly usage by weekday, with color legend.
- BarreRaggruppate_GiornoDellaSettimana_FasciaOraria.png → Grouped bar chart of total trips by weekday and time slot.
- GraficoLinee_AndamentoOrario.png → Line chart showing usage trends across weekdays and time slots, highlighting peaks and lows.
- Torta_FasciaOrariaUtilizzo.png → Pie chart showing the distribution of trips across time slots.
- TipologiaDiBici.png → Comparison of total usage time (in minutes) between the two types of bikes offered.
- TipoDiBiciConMembership.png → Comparison of usage time by bike type, with member vs. casual rider segmentation.
- TortaTempoTrascorsoPerTipologiaBici.png → Pie chart showing total usage time (in minutes) by bike type (with percentages).
- GraficoAdArea_AndamentoUtilizzoPerMembership.png → Area chart showing daily usage trends by membership type.
- TortaUtilizzoGiornoPerGiorno_ConTipologiaBici.png → Pie chart showing how each trip contributes to the company’s total usage time (in minutes).
- DiminuzioneDellaDomandaInBaseAlMeteo.png → Area chart showing demand variation according to weather conditions.
- TemperaturaMinimaMediaMassimaGenerale.png → Histogram representing the overall minimum, average, and maximum temperatures.
- TemperaturaMinimaMediaMassimaGiornoPerGiorno.png → Histogram representing daily min/avg/max temperatures.
- TemperaturaMinimaMediaMassimaPerTipologiaDiMeteo.png → Histogram showing min/avg/max temperatures grouped by weather type (clear, light rain, rain, heavy rain, cloudy).
- TortaViaggiInBaseAlMeteo.png → Pie chart showing the percentage distribution of trips by weather condition.

6) Final Results and Insights:

The final results show a strong imbalance between the most and least used stations, with the top station having a significantly higher usage than the rest.
This suggests optimization potential—for example, redistributing bikes from underused stations to high-demand ones, especially during regular days or specific events.

Usage throughout the day is fairly balanced, with a slight increase in the afternoon and a sharp decline between midnight and 5 a.m.
Interestingly, weekend behavior (Friday–Sunday) differs: usage is lower during morning, afternoon, and evening compared to weekdays, but much higher during the night.
Therefore, maintenance could be performed during nighttime from Monday to Thursday, or alternatively during daytime on weekends if night work is not feasible.

A nearly equal balance is observed between electric and classic bikes, with a slight preference for electric bikes.
However, an interesting insight emerges: non-member (casual) users tend to use electric bikes more, while members prefer classic bikes.

Finally, most trips were made on sunny days (over 52%), while the remaining trips decreased in proportion to rain intensity—the heavier the rain, the fewer the trips.
One exception is the “cloudy” category, which accounts for only 3.23% of cases.
This may be due to inconsistent labeling in weather data—days marked as “partly cloudy” might often be recorded as “sunny” or “light rain,” thus undercounting the cloudy category.
