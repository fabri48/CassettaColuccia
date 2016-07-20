-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Lug 19, 2016 alle 23:10
-- Versione del server: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_hypcassettacoluccia`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `ASSISTENZE`
--

CREATE TABLE IF NOT EXISTS `ASSISTENZE` (
  `CODICE` int(11) NOT NULL AUTO_INCREMENT,
  `DOMANDA` mediumtext CHARACTER SET utf8,
  `RISPOSTA` longtext CHARACTER SET utf8,
  `CATEGORIA` enum('Gestione linea e servizi','Controllo costi e pagamenti','Supporto tecnico e configurazione','Supporto tariffe','Contenuti Smart Life') DEFAULT NULL,
  `SUBCAT` enum('Smartphone e Tablet','Linea Telefonica','ADSL e Fibra','Posta','Decoder e TV','Navigazione','Sicurezza PC') DEFAULT NULL COMMENT 'titolo contenitori',
  `GRUPPO` enum('CONFIGURA ONLINE','Servizi per e dal tuo smartphone','Configurare la posta','Configurazioni e manuali') NOT NULL DEFAULT 'Servizi per e dal tuo smartphone',
  PRIMARY KEY (`CODICE`),
  UNIQUE KEY `CODICE` (`CODICE`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `ASSISTENZE`
--

INSERT INTO `ASSISTENZE` (`CODICE`, `DOMANDA`, `RISPOSTA`, `CATEGORIA`, `SUBCAT`, `GRUPPO`) VALUES
(1, 'Assistenza tecnica specializzata con SOSsmartphone', 'SOSsmartphone è il servizio di TIM per tutti i clienti, Ricaricabili o con Abbonamento, che permette di ricevere un’assistenza tecnica specializzata e personalizzata per la gestione del proprio smartphone o tablet.\r\n\r\nGrazie al servizio SOSsmartphone potrai parlare con un esperto che ti fornirà tutta la consulenza e l’assistenza “premium” di cui necessiti e che soprattutto sarà in grado di connettersi in remoto ed operare direttamente sul tuo dispositivo.\r\n\r\nI servizi che potrai ricevere con SOSsmartphone sono:\r\n\r\nsupporto per trasferimento dati in caso di cambio telefono: esempio trasferimento rubrica, foto, sms;\r\nconsulenza nell’utilizzo delle funzioni avanzate dello smartphone;\r\nassistenza specialistica sulle configurazioni avanzate dello smartphone e integrazione nella tua rete domestica;\r\ngestione e sincronizzazione dei tuoi contenuti multimediali;\r\nsupporto per garantire il massimo della sicurezza;\r\nconservazione e protezione dei tuoi dati;\r\ntrasferimento di contenuti;\r\naggiornamento del tuo smartphone;\r\neffettuazione check up.\r\n\r\nPer richiedere il servizio SOSsmartphone potrai:\r\n\r\ncontattare il numero 0458214811 (chiamata a pagamento in base al proprio piano tariffario/offerta);\r\nscaricare l’App SOS Smartphone da APP Store (per iOS) e Google Play (per Android) e richiedere l’intervento.\r\nIl servizio SOSsmartphone prevede un costo ad intervento a partire da 3€ (IVA inclusa). L’importo sarà addebitato in fattura se sei un cliente con Abbonamento mentre sarà scalato dal credito residuo se sei un cliente Ricaricabile.\r\nDal 12 maggio inoltre il servizio SOSsmartphone è disponibile anche in abbonamento a 2€/mese. In questo modo avrai l’assistenza di cui hai bisogno sempre disponibile e completa per un anno.', 'Supporto tecnico e configurazione', 'Smartphone e Tablet', 'Servizi per e dal tuo smartphone'),
(2, 'Buono sconto per cambio telefono', 'Vuoi un nuovo smartphone?\r\n\r\nPortaci il tuo vecchio telefono, da oggi vale uno sconto sul nuovo!\r\n\r\nCon il servizio TIM Valuta puoi far valutare gratuitamente e senza impegno il tuo telefonino, smartphone o tablet.  Ricevi subito uno sconto da utilizzare come meglio desideri: per l’acquisto di un nuovo telefonino, smartphone, tablet, chiavetta, Internet Pack, oppure in Ricarica telefonica TIM. Il servizio è aperto a tutti!\r\n\r\n\r\nFar valutare il telefono è molto semplice. E’ sufficiente:\r\n\r\n• portare presso uno dei negozi TIM che aderiscono all’iniziativa il tuo vecchio telefono, smartphone o tablet\r\n• l’addetto del negozio procederà alla valutazione del prodotto, verificandone le condizioni e lo stato d’uso\r\n• se accetti la valutazione, riceverai uno sconto di pari valore che potrai utilizzare subito per l’acquisto di un nuovo smartphone, tablet, oppure Ricariche telefoniche TIM.', 'Supporto tecnico e configurazione', 'Smartphone e Tablet', 'Servizi per e dal tuo smartphone'),
(3, 'Assistenza tecnica specializzata con SOS PC', 'SOS PC è il nuovo modo di fare assistenza tecnica che TIM mette a disposizione di tutti i suoi clienti, titolari di un contratto in abbonamento di telefonia fissa, per la risoluzione delle problematiche più complesse nella gestione del tuo PC (Desktop, Notebook, Netbook) e del tuo impianto.\r\n\r\nGrazie al servizio SOS PC potrai ricevere assistenza tecnica specializzata anche per le necessità che sino ad ora non erano di competenza del Servizio Clienti 119.\r\n\r\nQuesto servizio è stato creato per integrare e completare il supporto tecnico che da sempre TIM fornisce ai propri clienti. In tal modo, non occorrerà più rivolgersi ad un centro esterno, per risolvere problemi di assistenza tecnica.\r\n\r\nSe, contattando il Servizio Clienti 119, la tua domanda di assistenza non potesse essere gestita poiché riferita a tematiche  per le quali è necessaria una competenza tecnica specializzata, potrai richiedere il supporto degli operatori del servizio SOS PC.\r\n\r\nDi seguito riportiamo le tipologie di assistenza a pagamento fornite con il servizio SOS PC:\r\n\r\nUtilizzo delle PC Suite (software forniti dal produttore per la gestione del terminale da Computer) di Smartphone e telefonini per tutto ciò che non riguardi l’uso di queste Suite per la connessione con il PC in Internet, utilizzando, ad esempio, il telefonino come modem.\r\nAggiornamenti Software delle PC Suite, dei Connection Manager (non disponibili direttamente da www.timinternet.it).  \r\nInstallazione e utilizzo sul PC di applicazioni non TIM per qualsiasi sistema operativo (Windows, Apple, Linux). Ad esempio, Suite Office, Antivirus, Firewall, Messenger, Skype, etc.\r\nAssistenza sulla configurazione del browser del PC: cache, pop-up, proxy, DNS.\r\nAggiornamento sistemi operativi (Windows, Apple, Linux).\r\nConfigurazione in rete LAN di sistemi Client/Server, Stampanti di Rete e LAN Network-Storage.\r\nCondivisione di file e stampanti tra PC e Mac.\r\nConfigurazione Router/Bridge_ADSL.\r\nConfigurazione di Virtual Server/Port Forwarding.\r\nConfigurazione e Gestione di Firewall e Antivirus maggiormente diffusi.\r\nAlice Total security.\r\nCollegamento alla LAN di stampanti di rete.\r\nCollegamento ad Internet delle console di giochi più diffuse: Wii, Playstation, XBox.\r\nCollegamento alla LAN di TV, LAN Media Player.\r\nConfigurazione ed utilizzo di TIMvision.\r\nIl servizio prevede un’assistenza telefonica, su appuntamento, con un tecnico che ti guiderà nella risoluzione del problema. Il costo di questo servizio è di 29,95€ (IVA inclusa) per singolo apparato e per singolo intervento richiesto. L’intervento dovrà essere inerente ad una problematica relativa ad una delle tipologie di assistenza sopra riportate. Il costo della prestazione (che potrebbe prevedere uno o più interventi, in base allo specifico problema) verrà comunque preventivamente comunicato dall’operatore del Servizio Clienti 119 al cliente; quest’ultimo dovrà accettare le condizioni economiche comunicate dall’operatore prima che l’intervento venga effettuato*. L’addebito verrà effettuato sulla prima fattura utile di linea fissa. L’importo sarà addebitato esclusivamente se l’assistenza richiesta non derivi da cause o disservizi dipendenti da TIM.\r\n\r\nNel caso in cui l’assistenza telefonica non dovesse risultare sufficiente per la gestione della tua esigenza, potrai in ogni momento decidere, con l’operatore di SOS PC, se usufruire di un ulteriore servizio offerto a domicilio da TIM, il cui costo è di 94,95€ (IVA inclusa) con addebito sulla prima fattura utile di linea fissa. Nel caso venga accettato tale intervento a domicilio, non verrà addebitato il costo dell’assistenza telefonica.\r\n\r\n\r\n* L’accettazione da parte del cliente, del costo dichiarato dall’operatore del Servizio Clienti 119  (calcolato in base al numero degli interventi necessari per risolvere completamente la problematica del cliente), verrà acquisito tramite registrazione verbale.\r\n', 'Supporto tecnico e configurazione', 'Smartphone e Tablet', 'Servizi per e dal tuo smartphone'),
(4, 'Servizio mappe sul telefonino', 'Il servizio mappe è utilizzabile su numerosi telefoni di ultima generazione. In alcuni casi il software è già installato dal produttore, mentre in altri è possibile scaricare l’applicativo da Internet ed installarlo in un momento successivo all’acquisto. \r\n\r\nLa presenza di tale funzione varia secondo il modello e la versione software del telefonino. \r\nIl programma mappe è fruibile da tutti i telefonini con antenna GPS integrata. \r\n\r\nPer un corretto utilizzo, è importante sapere che la funzione mappe dal telefonino si avvale di una tecnologia particolare chiamata A-GPS, che implica la connessione ad Internet durante la fruizione del servizio. Se sei un cliente ricaricabile o con abbonamento, consulta la sezione dedicata alle offerte Internet e scegli quella più adatta alle tue esigenze . In assenza di un’offerte specifica per il traffico dati verrà applicata  la tariffa base\r\n \r\n\r\n\r\nGlossario: \r\nA-GPS, o Assisted GPS (GPS Assistito), è un sistema che consente di abbattere i tempi necessari alla prima localizzazione durante l''uso di un terminale GPS, ed è normalmente associato ai sistemi di localizzazione basati su telefonia cellulare. \r\nLo scopo principale di questo sistema è quello di "assistere" il ricevitore GPS nel calcolo della posizione, fornendogli informazioni sui satelliti in vista. Tale metodologia richiede il supporto dell''operatore di telefonia mobile, in quanto per recuperare l’elenco dei satelliti in vista viene interrogato un Assistance Server raggiungibile solo attraverso Internet. ', 'Supporto tecnico e configurazione', 'Smartphone e Tablet', 'Servizi per e dal tuo smartphone'),
(5, 'TIM Application Store', 'Con TIM avere sul tuo telefonino le applicazioni che desideri è più facile che mai. \r\nGrazie a TIM Application Store potrai trasformare il tuo telefonino in uno strumento utile a soddisfare qualunque necessità: giocare, essere sempre aggiornato con le ultime notizie e novità, comunicare con i tuoi amici, cercare tutto ciò che ti interessa, accedere a tantissime applicazioni che moltiplicano le funzionalità del tuo telefonino.\r\n \r\n\r\nAccedi al TIM Application Store dal telefonino configurato con gli APN TIM (http://timstore.tim.it) oppure da PC (http://www.timstore.it) registrando il tuo numero telefonico, potrai personalizzare il tuo telefonino scaricando un ampio catalogo di applicazioni garantite da TIM e compatibili con le principali marche/modelli di telefonino e sistemi operativi (Android, Symbian, Windows Phone, Blackberry e Java). \r\n\r\nInoltre scaricando l’applicazione TIM appstore, in download gratuito direttamente dal telefonino (http://timstore.tim.it) oppure da PC (http://www.timstore.it), potrai accedere a TIM Application Store. TIM appstore ti permette di organizzare le applicazioni che hai scaricato, ricevere notifiche sul display del tuo telefonino e scambiare suggerimenti sulle App del momento con i tuoi amici.\r\n\r\n\r\nAccedendo allo store da cellulare verranno visualizzati solo i contenuti disponibili per il modello di telefonino in uso, inoltre se il tuo terminale non è ancora supportato dal servizio si aprirà una pagina informativa dedicata. \r\nSe accedi al sito da PC, una volta autenticato, TIM Application Store selezionerà per  te le applicazioni disponibili per il tuo cellulare in base all’ultimo telefonino che hai utilizzato su rete TIM; se vuoi cambiare modello, selezionalo manualmente dal menu.\r\n\r\n\r\nAttualmente il servizio è accessibile solo ai clienti TIM (Privati ed Azienda). \r\nLe applicazioni scaricate ti verranno addebitate sulla fattura della linea mobile (clienti con abbonamento) o su credito residuo (clienti ricaricabili); i costi IVA inclusa per scaricare le singole applicazioni sono indicati accanto ad ogni applicazione pubblicata sullo Store.\r\n\r\n\r\nI costi di navigazione WAP dipendono dal tuo profilo e da eventuali Promozioni/offerte attive. In assenza di un’offerta specifica per il traffico dati verrà applicata la tariffa base.\r\n\r\nTIM Application Store non è un servizio in abbonamento.', 'Supporto tecnico e configurazione', 'Smartphone e Tablet', 'Servizi per e dal tuo smartphone'),
(6, 'Servizio di assistenza Samsung a Torino', 'E’ stato inaugurato il 5 giugno presso il negozio di Torino di Via Po, il primo centro di assistenza in Italia, autorizzato alla riparazione dei prodotti Samsung.\r\nPuoi recarti al negozio dove un esperto valuterà il guasto con risoluzione immediata e, ove non possibile, provvederà alla spedizione al centro di assistenza con rientro del terminale al massimo entro quattro giorni.\r\n\r\nPuoi prenotare il tuo appuntamento per fissare data e ora direttamente in negozio, telefonicamente o via e-mail, utilizzando i recapiti riportati qui sotto.\r\n\r\nSMARTEASY SRL\r\nVIA PO, 8/BIS   \r\n10123    TORINO\r\nTelefono: 011 8391928\r\ne-mail: assistenza@smarteasy.it', 'Supporto tecnico e configurazione', 'Smartphone e Tablet', 'Servizi per e dal tuo smartphone');

-- --------------------------------------------------------

--
-- Struttura della tabella `FOTO`
--

CREATE TABLE IF NOT EXISTS `FOTO` (
  `ORDINE` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORIA` enum('PRODOTTI','SLS','TARIFFE') CHARACTER SET utf8 DEFAULT NULL,
  `SUBCAT` enum('ADSL E MODEM','TABLET E COMPUTER','TV E SMARTLIVING','INTRATTENIMENTO E SPETTACOLO',' VIVERE SMART','FISSO E MOBILE','FISSO','MOBILE','SMARTPHONES') CHARACTER SET utf8 NOT NULL,
  `IMMAGINE` text CHARACTER SET utf8,
  `INDIRIZZO` text,
  PRIMARY KEY (`ORDINE`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dump dei dati per la tabella `FOTO`
--

INSERT INTO `FOTO` (`ORDINE`, `CATEGORIA`, `SUBCAT`, `IMMAGINE`, `INDIRIZZO`) VALUES
(1, 'TARIFFE', 'FISSO E MOBILE', 'images/tariffe/fisso_mobile.png', 'ndisp.html'),
(2, 'TARIFFE', 'FISSO', 'images/tariffe/fisso.png', 'ndisp.html'),
(3, 'TARIFFE', 'MOBILE', 'images/tariffe/mobile.png', 'mobile.html'),
(4, 'TARIFFE', 'INTRATTENIMENTO E SPETTACOLO', 'images/tariffe/intrattenimento.png', 'intrattenimento.html'),
(5, 'PRODOTTI', 'SMARTPHONES', 'images/prodotti/smartphone.jpg', 'prodotti_tutti.html'),
(6, 'PRODOTTI', 'ADSL E MODEM', 'images/prodotti/adsl.png', 'ndisp.html'),
(7, 'PRODOTTI', 'TABLET E COMPUTER', 'images/prodotti/tablet.png', 'prodotti_tutti.html'),
(8, 'PRODOTTI', 'TV E SMARTLIVING', 'images/prodotti/sls.png', 'ndisp.html'),
(9, 'SLS', 'INTRATTENIMENTO E SPETTACOLO', 'images/sls/Intrattenimento.jpg', 'intrattenimento.html'),
(10, 'SLS', ' VIVERE SMART', 'images/sls/vivere_smart.jpg', 'ndisp.html');

-- --------------------------------------------------------

--
-- Struttura della tabella `ORGASS`
--

CREATE TABLE IF NOT EXISTS `ORGASS` (
  `ELEMENTO` int(11) NOT NULL AUTO_INCREMENT,
  `CODICE` int(11) NOT NULL,
  `CATEGORIA` enum('Gestione linea e servizi','Controllo costi e pagamenti','Supporto tecnico e configurazione','Supporto tariffe','Contenuti Smart Life') DEFAULT NULL,
  `SUBCAT` enum('Smartphone e Tablet','Linea Telefonica','ADSL e Fibra','Posta','Decoder e TV','Navigazione','Sicurezza PC') DEFAULT NULL,
  `GRUPPO` enum('CONFIGURA ONLINE','Servizi per e dal tuo smartphone','Configurare la posta','Configurazioni e manuali','Guida ai servizi telefonici','Problemi Linea Telefonica','Linea ISDN','Fibra','Modem ADSL','Ripetitori Wi-Fi','Risorse di rete','Guida TIM Mail','Username e Password','Configurazione casella di posta','Problemi di posta','TIMvision','TIM SKY','Premium Online','Domande e Risposte','Impostazioni per la navigazione','Problemi di navigazione','Total Security','Antivirus','Navigare sicuri','Sicurezza Posta') DEFAULT NULL,
  PRIMARY KEY (`ELEMENTO`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dump dei dati per la tabella `ORGASS`
--

INSERT INTO `ORGASS` (`ELEMENTO`, `CODICE`, `CATEGORIA`, `SUBCAT`, `GRUPPO`) VALUES
(1, 1, 'Gestione linea e servizi', NULL, NULL),
(2, 2, 'Controllo costi e pagamenti', NULL, NULL),
(3, 0, 'Supporto tecnico e configurazione', 'Smartphone e Tablet', 'CONFIGURA ONLINE'),
(4, 0, 'Supporto tecnico e configurazione', 'Smartphone e Tablet', 'Servizi per e dal tuo smartphone'),
(5, 0, 'Supporto tecnico e configurazione', 'Smartphone e Tablet', 'Configurare la posta'),
(6, 0, 'Supporto tecnico e configurazione', 'Smartphone e Tablet', 'Configurazioni e manuali'),
(7, 0, 'Supporto tecnico e configurazione', 'Linea Telefonica', 'Guida ai servizi telefonici'),
(8, 0, 'Supporto tecnico e configurazione', 'Linea Telefonica', 'Problemi Linea Telefonica'),
(9, 0, 'Supporto tecnico e configurazione', 'Linea Telefonica', 'Linea ISDN'),
(10, 0, 'Supporto tecnico e configurazione', 'ADSL e Fibra', 'Fibra'),
(11, 0, 'Supporto tecnico e configurazione', 'ADSL e Fibra', 'Modem ADSL'),
(12, 0, 'Supporto tecnico e configurazione', 'ADSL e Fibra', 'Ripetitori Wi-Fi'),
(13, 0, 'Supporto tecnico e configurazione', 'ADSL e Fibra', 'Risorse di rete'),
(14, 0, 'Supporto tecnico e configurazione', 'Posta', 'Configurazione casella di posta'),
(15, 0, 'Supporto tecnico e configurazione', 'Posta', 'Guida TIM Mail'),
(16, 0, 'Supporto tecnico e configurazione', 'Posta', 'Username e Password'),
(17, 0, 'Supporto tecnico e configurazione', 'Posta', 'Problemi di posta'),
(18, 0, 'Supporto tecnico e configurazione', 'Decoder e TV', 'TIMvision'),
(19, 0, 'Supporto tecnico e configurazione', 'Decoder e TV', 'TIM SKY'),
(20, 0, 'Supporto tecnico e configurazione', 'Decoder e TV', 'Premium Online'),
(21, 0, 'Supporto tecnico e configurazione', 'Decoder e TV', 'Domande e Risposte'),
(22, 0, 'Supporto tecnico e configurazione', 'Navigazione', 'Impostazioni per la navigazione'),
(23, 0, 'Supporto tecnico e configurazione', 'Navigazione', 'Problemi di navigazione'),
(24, 0, 'Supporto tecnico e configurazione', 'Sicurezza PC', 'Total Security'),
(25, 0, 'Supporto tecnico e configurazione', 'Sicurezza PC', 'Antivirus'),
(26, 0, 'Supporto tecnico e configurazione', 'Sicurezza PC', 'Navigare sicuri'),
(27, 0, 'Supporto tecnico e configurazione', 'Sicurezza PC', 'Sicurezza Posta'),
(28, 3, 'Supporto tariffe', NULL, NULL),
(29, 4, 'Contenuti Smart Life', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `ORGTAR`
--

CREATE TABLE IF NOT EXISTS `ORGTAR` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODICE` int(11) NOT NULL DEFAULT '0',
  `CATEGORIA` enum('Fisso e mobile','Fisso','Mobile','Intrattenimento e Spettacolo') NOT NULL,
  `SUBCAT` enum('Voce e internet','Internet si misura per te','Smatphone e Tablet a rate','Estero','Servizi mobile e App') DEFAULT NULL,
  `GRUPPO` enum('TIM Special','TIM Young','TIM 60+','Altre Offerte','Piani Base','Smartphone','Tablet','iPhone','iPad','SUPERGIGA','Internet Start','Internet Large','Internet XL','Internet 50 GB','Internet 100 GB','Dall''Italia','All''Estero','Ricarica','App','Sicurezza','Altri servizi','Smart Life') DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dump dei dati per la tabella `ORGTAR`
--

INSERT INTO `ORGTAR` (`ID`, `CODICE`, `CATEGORIA`, `SUBCAT`, `GRUPPO`) VALUES
(1, 1, 'Fisso e mobile', NULL, NULL),
(2, 2, 'Fisso', NULL, NULL),
(3, 3, 'Intrattenimento e Spettacolo', NULL, NULL),
(4, 0, 'Mobile', 'Voce e internet', 'TIM Special'),
(5, 0, 'Mobile', 'Voce e internet', 'TIM Young'),
(6, 0, 'Mobile', 'Voce e internet', 'TIM 60+'),
(7, 0, 'Mobile', 'Voce e internet', 'Altre Offerte'),
(8, 0, 'Mobile', 'Voce e internet', 'Piani Base'),
(9, 0, 'Mobile', 'Internet si misura per te', 'SUPERGIGA'),
(10, 0, 'Mobile', 'Internet si misura per te', 'Internet Start'),
(11, 0, 'Mobile', 'Internet si misura per te', 'Internet Large'),
(12, 0, 'Mobile', 'Internet si misura per te', 'Internet XL'),
(13, 0, 'Mobile', 'Internet si misura per te', 'Internet 50 GB'),
(14, 0, 'Mobile', 'Internet si misura per te', 'Internet 100 GB'),
(15, 0, 'Mobile', 'Smatphone e Tablet a rate', 'Smartphone'),
(16, 0, 'Mobile', 'Smatphone e Tablet a rate', 'Tablet'),
(17, 0, 'Mobile', 'Smatphone e Tablet a rate', 'iPhone'),
(18, 0, 'Mobile', 'Smatphone e Tablet a rate', 'iPad'),
(19, 0, 'Mobile', 'Estero', 'Dall''Italia'),
(20, 0, 'Mobile', 'Estero', 'All''Estero'),
(21, 0, 'Mobile', 'Servizi mobile e App', 'Ricarica'),
(22, 0, 'Mobile', 'Servizi mobile e App', 'App'),
(23, 0, 'Mobile', 'Servizi mobile e App', 'Sicurezza'),
(24, 0, 'Mobile', 'Servizi mobile e App', 'Altri servizi');

-- --------------------------------------------------------

--
-- Struttura della tabella `PACON`
--

CREATE TABLE IF NOT EXISTS `PACON` (
  `PRODOTTO` int(16) NOT NULL,
  `ASSISTENZA` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='relazioni prodotti assistenza- e viceversa';

--
-- Dump dei dati per la tabella `PACON`
--

INSERT INTO `PACON` (`PRODOTTO`, `ASSISTENZA`) VALUES
(2, 1),
(2, 2),
(4, 1),
(4, 2),
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `PRCOLFOTO`
--

CREATE TABLE IF NOT EXISTS `PRCOLFOTO` (
  `IDTAB` int(11) NOT NULL AUTO_INCREMENT,
  `PRODOTTO` int(16) NOT NULL,
  `BASE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'identifica se l''immagine associata è quella mostrata per prima',
  `COLORE` text CHARACTER SET utf8,
  `FOTO` text CHARACTER SET utf8 NOT NULL,
  `POSIZIONE` enum('Fronte','Retro','LatoSin','LatoDes','45Des','45Sin') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`IDTAB`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dump dei dati per la tabella `PRCOLFOTO`
--

INSERT INTO `PRCOLFOTO` (`IDTAB`, `PRODOTTO`, `BASE`, `COLORE`, `FOTO`, `POSIZIONE`) VALUES
(1, 4, 1, '#ffffff', '', 'Fronte'),
(2, 1, 0, '#ffffff', 'images/prodotti_tutti/s_galaxy_view.png', 'Fronte'),
(3, 2, 1, '#F5F5F5', '', 'Fronte'),
(4, 2, 0, '#696969', 'images/prodotti_tutti/huawei_p9.png', 'Fronte'),
(5, 4, 0, '#000000', 'images/prodotti_tutti/microsoft_lumia950xl.png', 'Fronte'),
(6, 5, 0, NULL, 'images/prodotti_tutti/s_galaxy_s7.png', 'Fronte'),
(7, 6, 0, NULL, 'images/prodotti_tutti/apple_iphone6s.png', 'Fronte'),
(8, 7, 0, NULL, 'images/prodotti_tutti/lg_k8.png', 'Fronte'),
(9, 8, 0, NULL, 'images/prodotti_tutti/apple_iphone5s.png', 'Fronte'),
(19, 1, 2, '#000000', 'images/prodotto_singolo/s_galaxy_view/s_galaxy_view_black_1.jpg', 'Fronte'),
(11, 2, 2, '#696969', 'images/prodotto_singolo/huawei_p9/huawei_p9_1.jpg', 'Fronte'),
(16, 2, 2, '#F5F5F5', 'images/prodotto_singolo/huawei_p9/huawei_p9_white_1.jpg', 'Fronte'),
(13, 2, 2, '#696969', 'images/prodotto_singolo/huawei_p9/huawei_p9_2.jpg', 'LatoDes'),
(15, 2, 2, '#696969', 'images/prodotto_singolo/huawei_p9/huawei_p9_3.jpg', 'Retro'),
(17, 2, 2, '#F5F5F5', 'images/prodotto_singolo/huawei_p9/huawei_p9_white_2.jpg', 'LatoDes'),
(18, 2, 2, '#F5F5F5', 'images/prodotto_singolo/huawei_p9/huawei_p9_white_3.jpg', 'Retro'),
(20, 1, 2, '#000000', 'images/prodotto_singolo/s_galaxy_view/s_galaxy_view_black_2.jpg', 'LatoDes'),
(21, 1, 2, '#000000', 'images/prodotto_singolo/s_galaxy_view/s_galaxy_view_black_3.jpg', 'Retro'),
(22, 1, 2, '#ffffff', 'images/prodotto_singolo/s_galaxy_view/s_galaxy_view_1.jpg', 'Fronte'),
(23, 1, 2, '#ffffff', 'images/prodotto_singolo/s_galaxy_view/s_galaxy_view_2.jpg', 'LatoDes'),
(24, 1, 2, '#ffffff', 'images/prodotto_singolo/s_galaxy_view/s_galaxy_view_3.jpg', 'Retro'),
(25, 4, 2, '#000000', 'images/prodotto_singolo/microsoft_950XL/microsoft_950XL_1.jpg', 'Fronte'),
(26, 4, 2, '#000000', 'images/prodotto_singolo/microsoft_950XL/microsoft_950XL_2.jpg', 'LatoDes'),
(27, 4, 2, '#000000', 'images/prodotto_singolo/microsoft_950XL/microsoft_950XL_3.jpg', 'Retro'),
(28, 4, 2, '#ffffff', 'images/prodotto_singolo/microsoft_950XL/microsoft_950XL_white_1.jpg', 'Fronte'),
(29, 4, 2, '#ffffff', 'images/prodotto_singolo/microsoft_950XL/microsoft_950XL_white_2.jpg', 'LatoDes'),
(30, 4, 2, '#ffffff', 'images/prodotto_singolo/microsoft_950XL/microsoft_950XL_white_3.jpg', 'Retro');

-- --------------------------------------------------------

--
-- Struttura della tabella `PRODOTTI`
--

CREATE TABLE IF NOT EXISTS `PRODOTTI` (
  `CODICE` int(16) NOT NULL AUTO_INCREMENT,
  `NOME` text CHARACTER SET utf8,
  `DESBR` text CHARACTER SET utf8 COMMENT 'caratteristiche principali',
  `MARCA` enum('Alcatel','Apple','BlackBerry','Doro','Huawei','LG','Microsoft','Nokia','Samsung','Sony','TIM','WIKO','ZTE') CHARACTER SET utf8 DEFAULT NULL,
  `GRUPPO` enum('Smartphone','iPhone','Telefonini','Cordless e Cordered','Tablet','IPad','Computer','Modem','Repeater','Chiavette','Internet Pack','Smart TV','Decoder','Videocamere','Orologi e smartband','Casse') CHARACTER SET utf8 DEFAULT NULL,
  `SISTEMA` enum('Android','iOS','Windows') CHARACTER SET utf8 DEFAULT NULL,
  `CONNESSIONE` enum('3G','4G LTE','4G PLUS') CHARACTER SET utf8 DEFAULT NULL,
  `SCHERMO` float DEFAULT NULL,
  `FOTOCAMERA` float DEFAULT NULL,
  `CATEGORIA` enum('Telefonia','Pc','Internet','Smart') CHARACTER SET utf8 DEFAULT NULL,
  `PREZZO` text CHARACTER SET utf8 NOT NULL,
  `COSTO` double NOT NULL,
  `PROMOZIONE` tinyint(1) NOT NULL DEFAULT '0',
  `DISP` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CODICE`),
  UNIQUE KEY `CODICE` (`CODICE`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `PRODOTTI`
--

INSERT INTO `PRODOTTI` (`CODICE`, `NOME`, `DESBR`, `MARCA`, `GRUPPO`, `SISTEMA`, `CONNESSIONE`, `SCHERMO`, `FOTOCAMERA`, `CATEGORIA`, `PREZZO`, `COSTO`, `PROMOZIONE`, `DISP`) VALUES
(1, 'Samsung Galaxy View', 'Processore OctaCore 1.6 GHz\r\nDisplay 18.4” TFT, 1920x1080 Full HD\r\nSistema Operativo AndroidTM 5.1 (Lollipop)\r\nMemoria interna 32GB (espandibile fino a 128GB)\r\nInternet TV', 'Samsung', 'Tablet', 'Android', '4G LTE', 18.4, 2.1, 'Pc', '799.90 €', 799.9, 0, 6),
(2, 'Huawei P9 ', 'Sistema Operativo Android 6.0\r\nDisplay IPS Full HD da 5.2’’\r\nDoppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl\r\nProcessore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', 'Huawei', 'Smartphone', 'Android', '4G LTE', 5.2, 12, 'Telefonia', '599.90 €', 599.9, 1, 4),
(4, 'Microsoft LUMIA 950 XL', '4GPLUS\r\nSistema Operativo Windows 10\r\nDisplay Quad HD AMOLED ClearBlack da 5.7’’\r\nProcessore Snapdragon Octa-Core 810 da 2,0 GHz\r\nFotocamera da 20 Mpxl - f/1.9 a 6 lenti obiettivo Zeiss + anteriore grandangolo full HD da 5 Mpxl', 'Microsoft', 'Smartphone', 'Windows', '4G LTE', 5.7, 20, 'Telefonia', '699.90 €', 699.9, 0, 4),
(5, 'Galaxy S7 Edge', NULL, 'Samsung', 'Smartphone', 'Android', '4G LTE', 5.5, NULL, 'Telefonia', '829.90 €', 829.9, 0, 0),
(6, 'iPhone 6s', NULL, 'Apple', 'iPhone', 'iOS', '4G PLUS', 4.7, NULL, 'Telefonia', '789.90 €', 789.9, 0, 7),
(7, 'LG K8\r\n', NULL, 'LG', 'Smartphone', 'Android', '3G', 5, NULL, 'Telefonia', '179.90 €', 179.9, 0, 0),
(8, 'iPhone 5s ', NULL, 'Apple', 'iPhone', 'iOS', '4G LTE', 4, NULL, 'Telefonia', '429.90 €', 429.9, 1, 7);

-- --------------------------------------------------------

--
-- Struttura della tabella `PSCON`
--

CREATE TABLE IF NOT EXISTS `PSCON` (
  `PRODOTTO` int(16) NOT NULL,
  `SERVIZIO` int(16) NOT NULL,
  `BASE` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='relazioni prodotti smartlife - e viceversa';

--
-- Dump dei dati per la tabella `PSCON`
--

INSERT INTO `PSCON` (`PRODOTTO`, `SERVIZIO`, `BASE`) VALUES
(1, 1, 0),
(1, 2, 1),
(1, 3, 1),
(2, 1, 0),
(2, 2, 1),
(2, 3, 1),
(1, 4, 1),
(2, 4, 1),
(4, 1, 0),
(4, 2, 1),
(4, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `PTCON`
--

CREATE TABLE IF NOT EXISTS `PTCON` (
  `PRODOTTO` int(16) NOT NULL,
  `TARIFFA` int(16) NOT NULL,
  `BASE` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='relazioni tra prodotti e tariffe consigliati- vale in entrambi i sensi';

--
-- Dump dei dati per la tabella `PTCON`
--

INSERT INTO `PTCON` (`PRODOTTO`, `TARIFFA`, `BASE`) VALUES
(1, 2, 0),
(1, 11, 1),
(1, 1, 1),
(2, 4, 0),
(2, 2, 1),
(2, 11, 1),
(2, 1, 1),
(4, 2, 0),
(4, 3, 1),
(4, 5, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `SACON`
--

CREATE TABLE IF NOT EXISTS `SACON` (
  `SERVIZIO` int(16) NOT NULL,
  `ASSISTENZA` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='relazioni sls assistenza';

-- --------------------------------------------------------

--
-- Struttura della tabella `SCHEDA`
--

CREATE TABLE IF NOT EXISTS `SCHEDA` (
  `CODICE` int(16) NOT NULL,
  `TECNOLOGIA` text,
  `CONNETTIVITA` text,
  `SISTEMA` text,
  `GPS` text,
  `DISPLAY` text,
  `FOTOCAMERA` text,
  `MEMINTERNA` text,
  `PROCESSORE` text,
  `SIM` text,
  `FORMSUPP` text,
  `VIDEO` text,
  `MUSICA` text,
  `DOTAZIONE` text,
  ` DIMENSIONI` text,
  `PESO` text,
  `AUTONOMIA` text,
  `CONFEZIONE` text,
  `APPLICAZIONI` text,
  `NOTE` text,
  PRIMARY KEY (`CODICE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `SCHEDA`
--

INSERT INTO `SCHEDA` (`CODICE`, `TECNOLOGIA`, `CONNETTIVITA`, `SISTEMA`, `GPS`, `DISPLAY`, `FOTOCAMERA`, `MEMINTERNA`, `PROCESSORE`, `SIM`, `FORMSUPP`, `VIDEO`, `MUSICA`, `DOTAZIONE`, ` DIMENSIONI`, `PESO`, `AUTONOMIA`, `CONFEZIONE`, `APPLICAZIONI`, `NOTE`) VALUES
(1, NULL, 'Connettività WirelessBluetooth 4.1, BLEWi-Fi 802.11 a/b/g/n/ac', 'AndroidTM 5.1 (Lollipop)', NULL, 'Display 18.4” TFT PLS ,1920x1080 Full HD', 'Fotocamera (Front: 2.1 MP)', 'Interna 32GB (espandibile fino a 128GB)', 'OctaCore da 1.6 GHzx', NULL, 'Lettore multimediale, aac,amr,awb,mp3,ogg,wav, DivX, XviD, MPEG4, VP8, H.263, H.264, H.265', NULL, NULL, NULL, '451,8x275,8x11,9 mm.', '2,65 kg', 'fino a 8h in video play', 'Carica batteria, Manuale d’uso', 'Android Market, Google Mobile App, Youtube, Inserimento testo e ricerca vocale, E-mail, GPS Glonass, SMS/MMS,', NULL),
(2, NULL, '4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac\r\n dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC\r\n', NULL, 'GPS Integrato', 'Display IPS Full HD da 5.2’’', 'Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4', '32GB', 'Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', NULL, NULL, NULL, NULL, 'Smartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida', '145 x 70,9 x 6,95 mm', '144 grammi', 'Stand-by fino a 566 ore - Conversazione fino a 1980 min', NULL, NULL, NULL),
(4, NULL, 'Wi-Fi - Bluetooth - Micro USB Type C - NFC', NULL, 'Integrato', '5.7” 16 Milioni colori Touch', '20 Mpixel/Flash', '32GB', 'OctaCore 2 GHz', 'Nano', NULL, 'Video Recorder&Playback', 'MP3 Player – Radio FM', 'Caricabatteria standard - Auricolare stereo - Cavo Dati USB Type C - Manuale d’uso', '151,9x78,4x8,1 mm', '165 gr.', 'Stand-by fino a 288 ore - Conversazione fino a 1040 min', NULL, NULL, 'Memory Card - Micro SD fino a 2TB\r\n');

-- --------------------------------------------------------

--
-- Struttura della tabella `SLS`
--

CREATE TABLE IF NOT EXISTS `SLS` (
  `CODICE` int(16) NOT NULL AUTO_INCREMENT,
  `NOME` text CHARACTER SET utf8,
  `GRUPPO` enum('VISION','MUSIC','READING','GAME','SERIEA','SB','CF','SP') CHARACTER SET utf8 NOT NULL COMMENT 'sb (salute e benessere), CF(casa e famiglia), SP(servizi alla persona)',
  `CATEGORIA` enum('TV','VIVERE') CHARACTER SET utf8 NOT NULL,
  `FOTO` text CHARACTER SET utf8,
  `FOTOGRUPPO` text CHARACTER SET utf8,
  `DESCRIZIONE` longtext CHARACTER SET utf8 NOT NULL,
  `PREZZO` text CHARACTER SET utf8,
  `RINNOVO` text CHARACTER SET utf8,
  `PROMOZIONE` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CODICE`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `SLS`
--

INSERT INTO `SLS` (`CODICE`, `NOME`, `GRUPPO`, `CATEGORIA`, `FOTO`, `FOTOGRUPPO`, `DESCRIZIONE`, `PREZZO`, `RINNOVO`, `PROMOZIONE`) VALUES
(1, 'Tim Vision', 'VISION', 'TV', 'images/In_promozione/timvision_inpromo.jpg', 'images/sls/intrattenimento/logo_tim_vision.jpg', 'TIMvision è la TV sempre on demand con oltre 8.000 titoli sempre disponibili, tra cartoni, film, serie tv, documentari e molto altro ancora.\r\nUna TV che ti segue ovunque, anche smartphone e tablet, contemporaneamente e senza consumare GB.', '5€', 'mese', 1),
(2, 'Tim Music', 'MUSIC', 'TV', 'images/In_promozione/timmusic_inpromo.jpg', 'images/sls/intrattenimento/logo_tim_music.jpg', 'LA COLONNA SONORA DELLA TUA VITA\r\n\r\nEntra in un mondo di musica con l''app TIMmusic. Milioni di brani in streaming, tutte le ultime uscite discografiche e tante playlist, da ascoltare dove e quando vuoi, senza consumare GB!', '0.99 €', 'mese', 1),
(3, 'Serie A Tim', 'SERIEA', 'TV', NULL, 'images/sls/intrattenimento/logo_serie_a.jpg', 'Il calcio è di chi lo ama\r\n\r\nVivi il meglio della Serie A TIM e i migliori momenti del Campionato 2015/2016\r\ncon tutte le notizie, i video-goal, le sintesi sul tuo Smartphone o Tablet\r\ne senza consumare GB. L’unica App ufficiale della Serie A TIM.\r\nScarica l’App e vivi la magia del calcio!', '9.99 €', 'anno', 0),
(4, 'Tim Games', 'GAME', 'TV', NULL, 'images/sls/intrattenimento/logo_tim_games.jpg', 'Sparatutto, sport estremi, i migliori Classici e molto altro ancora... Con TIMgames hai a disposizione centinaia di giochi per il tuosmartphone e tablet, per divertirti dove e quando vuoi', '2 €', 'settimana', 0),
(5, 'Tim Reading', 'READING', 'TV', NULL, 'images/sls/intrattenimento/logo_tim_reading.jpg', '', '-.-- €', '----', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `TACON`
--

CREATE TABLE IF NOT EXISTS `TACON` (
  `TARIFFA` int(16) NOT NULL,
  `ASSISTENZA` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='relazione tariffe assistenza';

-- --------------------------------------------------------

--
-- Struttura della tabella `TARIFFE`
--

CREATE TABLE IF NOT EXISTS `TARIFFE` (
  `CODICE` int(16) NOT NULL AUTO_INCREMENT,
  `ID` int(11) NOT NULL DEFAULT '0',
  `MENU` int(11) NOT NULL DEFAULT '0',
  `GRUPPO` enum('FibraSmart','ADSLSmart','FMISmart','Internet','Sky','Voce','VoceInt','Pc','Estero','Rate','Servizi','TV','Sport','Musica','Libri','Giochi') CHARACTER SET utf8 DEFAULT NULL,
  `CATEGORIA` enum('FM','F','M','SMART') CHARACTER SET utf8 DEFAULT NULL,
  `NOME` text CHARACTER SET utf8,
  `NOMESEZIONE` text CHARACTER SET utf8,
  `DESBR` text CHARACTER SET utf8 COMMENT 'breve descrizione',
  `CHIAMATE` text CHARACTER SET utf8,
  `SMS` text CHARACTER SET utf8,
  `CHIAMSMS` text CHARACTER SET utf8,
  `ESTERO` text CHARACTER SET utf8,
  `INTERNET` text CHARACTER SET utf8,
  `ALTRO` text CHARACTER SET utf8,
  `FOTO` text CHARACTER SET utf8,
  `PREZZO` text CHARACTER SET utf8 NOT NULL,
  `RINNOVO` int(11) DEFAULT '4',
  `PROMOZIONE` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CODICE`),
  UNIQUE KEY `CODICE` (`CODICE`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dump dei dati per la tabella `TARIFFE`
--

INSERT INTO `TARIFFE` (`CODICE`, `ID`, `MENU`, `GRUPPO`, `CATEGORIA`, `NOME`, `NOMESEZIONE`, `DESBR`, `CHIAMATE`, `SMS`, `CHIAMSMS`, `ESTERO`, `INTERNET`, `ALTRO`, `FOTO`, `PREZZO`, `RINNOVO`, `PROMOZIONE`) VALUES
(1, 0, 0, 'VoceInt', 'M', 'Tim Special Voce', 'Tim Special', '500 minuti', '500 minuti', NULL, NULL, NULL, NULL, NULL, NULL, '10€', 4, 0),
(2, 0, 0, 'VoceInt', 'M', 'Tim Special Voce e Dati', 'Tim Special', '500 minuti\r\n2GB 4G\r\nTIMENTERTAINMENT \r\nincluso per 3 mesi ', '500 minuti', NULL, NULL, NULL, '2GB 4G\r\n', 'TIMENTERTAINMENT \r\nincluso per 3 mesi ', 'images/In_promozione/timspecialvocedati_inpromo.jpg', '15€', 4, 1),
(3, 0, 0, 'VoceInt', 'M', 'Tim Special Start', 'Tim Special', '1000 minuti\r\n2GB 4G\r\nTIMENTERTAINMENT \r\nincluso per 3 mesi ', '1000 minuti', NULL, NULL, NULL, '2GB 4G', 'TIMENTERTAINMENT \r\nincluso per 3 mesi', NULL, '20€', 4, 0),
(4, 0, 0, 'VoceInt', 'M', 'Tim Special Large', 'Tim Special', '3000 minuti\r\n3GB 4G\r\nTIMENTERTAINMENT \r\nincluso per 3 mesi ', '3000 minuti', NULL, NULL, NULL, '3GB 4G', 'TIMENTERTAINMENT \r\nincluso per 3 mesi ', NULL, '30€', 4, 0),
(5, 0, 0, 'VoceInt', 'M', 'Tim Special Unlimited', 'Tim Special', 'Chiamate e sms illimitati\r\n250 minuti \r\nEuropa e USA\r\n3GB 4G\r\nTIMENTERTAINMENT \r\nincluso per 3 mesi ', NULL, NULL, 'Chiamate e sms illimitati\r\n', '250 minuti \r\nEuropa e USA\r\n', '3GB 4G\r\n', 'TIMENTERTAINMENT \r\nincluso per 3 mesi ', 'images/In_promozione/timspecialunlimited_inpromo.jpg', '40€', 4, 1),
(6, 0, 1, 'VoceInt', 'M', 'OPZIONE 1G', 'Tim Special', '1GB 4G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5€', 4, 0),
(7, 0, 1, 'VoceInt', 'M', 'OPZIONE 2G', 'Tim Special', '2GB 4G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10€', 4, 0),
(8, 0, 1, 'VoceInt', 'M', 'OPZIONE 500 min', 'Tim Special', '500 min', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5€', 4, 0),
(9, 0, 1, 'VoceInt', 'M', 'OPZIONE 100 SMS', 'Tim Special', '100 SMS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3€', 4, 0),
(10, 0, 1, 'VoceInt', 'M', 'OPZIONE SMS ILLIMITATI', 'Tim Special', 'SMS ILLIMITATI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5€', 4, 0),
(11, 1, 0, 'VoceInt', 'M', 'Tim Young & Music', 'Tim Young', '100 sms\r\nverso tutti\r\n3GB 4G\r\nTim Music \r\nsenza consumare GB', NULL, '100 sms\r\nverso tutti', NULL, NULL, '3GB 4G', 'Tim Music \r\nsenza consumare GB', NULL, '9€', 4, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `TPCON`
--

CREATE TABLE IF NOT EXISTS `TPCON` (
  `TARIFFA` int(11) NOT NULL,
  `PRODOTTO` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `TPCON`
--

INSERT INTO `TPCON` (`TARIFFA`, `PRODOTTO`) VALUES
(0, 1),
(0, 2),
(0, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
