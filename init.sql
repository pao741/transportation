CREATE TABLE IF NOT EXISTS consists_of (
  stationID char(5) NOT NULL,
  trainID char(5) NOT NULL,
  PRIMARY KEY (stationID,trainID)
);

INSERT INTO consists_of VALUES('BSKMC',01);
INSERT INTO consists_of VALUES('BSKSK',02);
INSERT INTO consists_of VALUES('BSKSP',03);
INSERT INTO consists_of VALUES('BSKAR',04);
INSERT INTO consists_of VALUES('BSKVM',05);
INSERT INTO consists_of VALUES('BSKPT',06);
INSERT INTO consists_of VALUES('BSKRW',07);
INSERT INTO consists_of VALUES('BSKSM',08);
INSERT INTO consists_of VALUES('BSKPC',09);
INSERT INTO consists_of VALUES('BSKNN',10);
INSERT INTO consists_of VALUES('BSKAS',11);
INSERT INTO consists_of VALUES('BSKPP',12);
INSERT INTO consists_of VALUES('BSKTL',13);
INSERT INTO consists_of VALUES('BSKEK',14);
INSERT INTO consists_of VALUES('BSKPK',15);
INSERT INTO consists_of VALUES('BSKON',16);
INSERT INTO consists_of VALUES('BSKBC',17);
INSERT INTO consists_of VALUES('BSKPW',18);
INSERT INTO consists_of VALUES('BSKUS',19);
INSERT INTO consists_of VALUES('BSKBN',20);
INSERT INTO consists_of VALUES('BSKBR',21);
INSERT INTO consists_of VALUES('BSLNS',22);
INSERT INTO consists_of VALUES('BSLSM',23);
INSERT INTO consists_of VALUES('BSLRD',24);
INSERT INTO consists_of VALUES('BSLSD',25);
INSERT INTO consists_of VALUES('BSLCN',26);
INSERT INTO consists_of VALUES('BSLSR',27);
INSERT INTO consists_of VALUES('BSLST',28);
INSERT INTO consists_of VALUES('BSLKT',29);
INSERT INTO consists_of VALUES('BSLWY',30);
INSERT INTO consists_of VALUES('BSLPN',31);
INSERT INTO consists_of VALUES('BSLTP',32);
INSERT INTO consists_of VALUES('BSLWK',33);
INSERT INTO consists_of VALUES('BSLBW',34);
INSERT INTO consists_of VALUES('MBLHL',35);
INSERT INTO consists_of VALUES('MBLSY',36);
INSERT INTO consists_of VALUES('MBLSL',37);
INSERT INTO consists_of VALUES('MBLLM',39);
INSERT INTO consists_of VALUES('MBLKT',40);
INSERT INTO consists_of VALUES('MBLQS',41);
INSERT INTO consists_of VALUES('MBLSK',42);
INSERT INTO consists_of VALUES('MBLPB',43);
INSERT INTO consists_of VALUES('MBLPR',44);
INSERT INTO consists_of VALUES('MBLTC',45);
INSERT INTO consists_of VALUES('MBLHK',46);
INSERT INTO consists_of VALUES('MBLSS',47);
INSERT INTO consists_of VALUES('MBLRP',48);
INSERT INTO consists_of VALUES('MBLLP',49);
INSERT INTO consists_of VALUES('MBLPY',50);
INSERT INTO consists_of VALUES('MBLCP',51);
INSERT INTO consists_of VALUES('MBLKP',52);
INSERT INTO consists_of VALUES('MBLBS',53);
INSERT INTO consists_of VALUES('MBLTP',54);
INSERT INTO consists_of VALUES('MPKKB',55);
INSERT INTO consists_of VALUES('MPKTB',56);
INSERT INTO consists_of VALUES('MPKSY',57);
INSERT INTO consists_of VALUES('MPKBP',58);
INSERT INTO consists_of VALUES('MPKBR',59);
INSERT INTO consists_of VALUES('MPKBN',60);
INSERT INTO consists_of VALUES('MPKSM',61);
INSERT INTO consists_of VALUES('MPKPN',62);
INSERT INTO consists_of VALUES('MPKYN',63);
INSERT INTO consists_of VALUES('MPKBK',64);
INSERT INTO consists_of VALUES('MPKNC',65);
INSERT INTO consists_of VALUES('MPKMP',66);
INSERT INTO consists_of VALUES('MPKYT',67);
INSERT INTO consists_of VALUES('MPKWS',68);
INSERT INTO consists_of VALUES('MPKBS',69);
INSERT INTO consists_of VALUES('MPKTP',70);


CREATE TABLE IF NOT EXISTS station (
  stationID char(5) NOT NULL,
  stationName varchar(40) DEFAULT NULL,
  PRIMARY KEY (stationID)
);

INSERT INTO station VALUES('BSKMC','Mo Chit');
INSERT INTO station VALUES('BSKSK','Saphan Kwai');
INSERT INTO station VALUES('BSKSP','Sanam Pao');
INSERT INTO station VALUES('BSKAR','Ari');
INSERT INTO station VALUES('BSKVM','Victory Monuments');
INSERT INTO station VALUES('BSKPT','Phaya Thai');
INSERT INTO station VALUES('BSKRW','Ratchathewi');
INSERT INTO station VALUES('BSKSM','Siam');
INSERT INTO station VALUES('BSKPC','Phloen Chit');
INSERT INTO station VALUES('BSKNN','Nana');
INSERT INTO station VALUES('BSKAS','Asok');
INSERT INTO station VALUES('BSKPP','Phrom Phong');
INSERT INTO station VALUES('BSKTL','Thong Lo');
INSERT INTO station VALUES('BSKEK','Ekkamai');
INSERT INTO station VALUES('BSKPK','Phra Khanong');
INSERT INTO station VALUES('BSKON','On Nut');
INSERT INTO station VALUES('BSKBC','Bang Chak');
INSERT INTO station VALUES('BSKPW','Punnawithi');
INSERT INTO station VALUES('BSKUS','Udom Suk');
INSERT INTO station VALUES('BSKBN','Bang Na');
INSERT INTO station VALUES('BSKBR','Bearing');
INSERT INTO station VALUES('BSLNS','National Stadium');
INSERT INTO station VALUES('BSLSM','Siam');
INSERT INTO station VALUES('BSLRD','Ratchadamri');
INSERT INTO station VALUES('BSLSD','Sala Daeng');
INSERT INTO station VALUES('BSLCN','Chong Nonsi');
INSERT INTO station VALUES('BSLSR','Surasak');
INSERT INTO station VALUES('BSLST','Saphan Taksin');
INSERT INTO station VALUES('BSLKT','Krung Thonburi');
INSERT INTO station VALUES('BSLWY','Wongwian Yai');
INSERT INTO station VALUES('BSLPN','Pho Nimit');
INSERT INTO station VALUES('BSLTP','Talat Phlu');
INSERT INTO station VALUES('BSLWK','Wutthakat');
INSERT INTO station VALUES('BSLBW','Bangwa');
INSERT INTO station VALUES('MBLHL','Hua Lamphong');
INSERT INTO station VALUES('MBLSY','Sam Yan');
INSERT INTO station VALUES('MBLSL','Silom');
INSERT INTO station VALUES('MBLLM','Lumphini');
INSERT INTO station VALUES('MBLKT','Khlong Toei');
INSERT INTO station VALUES('MBLQS','Queen Sirikit National Convention Center');
INSERT INTO station VALUES('MBLSK','Sukhumvit');
INSERT INTO station VALUES('MBLPB','Phetchaburi');
INSERT INTO station VALUES('MBLPR','Phra Ram 9');
INSERT INTO station VALUES('MBLTC','Thailand Cultural Center');
INSERT INTO station VALUES('MBLHK','Hai Khwang');
INSERT INTO station VALUES('MBLSS','Sutthisan');
INSERT INTO station VALUES('MBLRP','Ratchadaphisek');
INSERT INTO station VALUES('MBLLP','Lat Phrao');
INSERT INTO station VALUES('MBLPY','Phahon Yothin');
INSERT INTO station VALUES('MBLCP','Chatuchak Park');
INSERT INTO station VALUES('MBLKP','Kamphaeng Phet');
INSERT INTO station VALUES('MBLBS','Bang Sue');
INSERT INTO station VALUES('MBLTP','Tao Poon');
INSERT INTO station VALUES('MPKKB','Khlong Bang Phai');
INSERT INTO station VALUES('MPKTB','Talat Bang Yai');
INSERT INTO station VALUES('MPKSY','Sam Yaek Bang Yai');
INSERT INTO station VALUES('MPKBP','Bang Phlu');
INSERT INTO station VALUES('MPKBR','Bang Rak Yai');
INSERT INTO station VALUES('MPKBN','Bang Rak Noi Tha It');
INSERT INTO station VALUES('MPKSM','Sai Ma');
INSERT INTO station VALUES('MPKPN','Phra Nangkhlao Bridge');
INSERT INTO station VALUES('MPKYN','Yaek Nonthaburi 1');
INSERT INTO station VALUES('MPKBK','Bang Krasor');
INSERT INTO station VALUES('MPKNC','Nonthaburi Civic Center');
INSERT INTO station VALUES('MPKMP','Ministry of Public Health');
INSERT INTO station VALUES('MPKYT','Yaek Tiwanon');
INSERT INTO station VALUES('MPKWS','Wong Sawang');
INSERT INTO station VALUES('MPKBS','Bang Son');
INSERT INTO station VALUES('MPKTP','Tao Poon');


CREATE TABLE IF NOT EXISTS train (
  trainID char(5) NOT NULL,
  startStationID char(4) DEFAULT NULL,
  endStationID char(4) DEFAULT NULL,
  PRIMARY KEY (trainID)
);