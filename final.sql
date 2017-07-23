DROP TABLE series_watchlist;
DROP TABLE movie_watchlist;
DROP TABLE profile_series;
drop table watchlist_movie;
DROP TABLE profile_movie;
DROP TABLE episode;
DROP TABLE series;
DROP TABLE movie;
DROP TABLE profile;
DROP TABLE customer;
select * from tab;

create table customer(
user_id varchar2(15) not null,
credit_card number not null,
f_name varchar2(15) not null,
l_name varchar2(15) not null,
email varchar2(25) not null,
plan varchar2(10) not null,
constraint user_id_pk primary key (user_id)
);

create table profile(
user_id varchar2(15) not null,
profile_id varchar2(15) not null,
name varchar2(15) not null,
constraint user_profile_pk primary key (profile_id),
constraint user_id_fk foreign key (user_id) references customer (user_id)
);

create table movie(
movie_id varchar2(10) not null,
name varchar2(30) not null,
genre varchar2(15) not null,
rating Number(2,1),
released_date date,
constraint muv_id_pk primary key (movie_id)
);

create table series (
series_id varchar2(10) not null,
name varchar2(30) not null,
genre varchar2(15) not null,
rating number(2,1),
released_date date,
constraint series_s_pk primary key (series_id)
);

create table episode (
series_id varchar2(10) not null,
episode_no varchar2(10) not null,
name varchar2(15) not null,
constraint ep_series_episode_pk primary key (series_id, episode_no),
constraint series_id_fk foreign key (series_id) references series (series_id)
);

create table profile_movie (
movie_id varchar2(10) not null,
profile_id VARCHAR2(15) not null,
accessed_date date,                                    
constraint prfl_mv_id_pk primary key (movie_id, profile_id),
constraint prfl_mv_id_fk Foreign Key (movie_id) references movie (movie_id),
constraint prfl_id_fk Foreign Key (profile_id) references Profile (profile_id)
);

create table profile_series(
series_id varchar2(10) not null,
profile_id varchar2(15) not null,
accessed_date date,                                    
constraint prfle_s_usr_prfle_pk primary key (series_id,profile_id),                      
constraint prfl_s_userid_fk Foreign Key (series_id) references series (series_id), 
constraint prfl_s_prflid_fk Foreign Key (profile_id) references profile (profile_id) 
);

create table movie_watchlist(
movie_id varchar2(10) not null,
profile_id varchar2(15) not null,
constraint mov_wat_pk primary key (movie_id, profile_id),
constraint mov_mov_fk Foreign Key (movie_id) references movie (movie_id),
constraint mov_pro_fk foreign key (profile_id) references profile (profile_id)
);

create table series_watchlist(
series_id varchar2(10) not null,
profile_id varchar2(15) not null,
constraint ser_wat_pk primary key (series_id, profile_id),
constraint ser_ser_fk Foreign Key (series_id) references series (series_id),
constraint ser_pro_fk foreign key (profile_id) references profile (profile_id)
);

select * from tab;


--customer('user_id', credit_card, 'f_name', 'l_name', phone_no, 'plan')--
insert into customer values ('AA1', 1236789545612589, 'Ashley', 'Adams', 8015689623, 'Basic');
insert into customer values ('AA2', 5265986532565265, 'Adam', 'Appleton', 6852145986, 'Standard');
insert into customer values ('BB1', 8569745214563258, 'Bailey', 'Brown', 2541259876, 'Premium');
insert into customer values ('BB2', 5412698569857452, 'Bob', 'Bowlsby', 5862145269, 'Standard');
insert into customer values ('CC1', 5245632541255245, 'Carrie', 'Crood', 3219856456, 'Basic');
insert into customer values ('CC2', 4521456985632568, 'Clint', 'Cepek', 5648446515, 'Basic');
insert into customer values ('DD1', 3123456897545312, 'Dave', 'Davidson', 2165656185, 'Premium');
insert into customer values ('DD2', 8975643134567895, 'Dana', 'Diamond', 3546498565, 'Premium');
insert into customer values ('EE1', 3545678945631234, 'Erica', 'Erickson', 7987987987, 'Basic');
insert into customer values ('EE2', 1323468756423123, 'Erik', 'Erikson', 2313213211, 'Standard');
insert into customer values ('FF1', 5646764531234564, 'Fiorina', 'Florence', 1321564549, 'Standard');
insert into customer values ('FF2', 9156483564531234, 'Fred', 'Feinbaum', 2132168798, 'Standard');
insert into customer values ('GG1', 4567864534567864, 'Gina', 'Grayson', 2139879411, 'Basic');
insert into customer values ('GG2', 3456845364864554, 'Geoff', 'Goon', 3697723648, 'Standard');
insert into customer values ('HH1', 9632585445225556, 'Hillary', 'Handley', 2168465161, 'Standard');
insert into customer values ('HH2', 5886543156486456, 'Harry', 'Hook', 2165461651, 'Premium');
insert into customer values ('II1', 6635486456545545, 'Irina', 'Ivasof', 6549875135, 'Standard');
insert into customer values ('II2', 4554124451354686, 'Igor', 'Iceman', 9368217253, 'Standard');
insert into customer values ('JJ1', 6565674564854564, 'Jane', 'Jorgenson', 9393718398, 'Standard');
insert into customer values ('JJ2', 4563358525584555, 'Jack', 'Jvornikssen', 3982871828, 'Standard');
insert into customer values ('KK1', 6353383453484534, 'Kira', 'Klundt', 9398171239, 'Standard');
insert into customer values ('KK2', 3134864578552545, 'Klint', 'Krinnenmen', 9393982873, 'Premium');
insert into customer values ('LL1', 2313453584534554, 'Linda', 'Lake', 9393927139, 'Standard');
insert into customer values ('LL2', 4567836456786454, 'Larry', 'Lazenby', 9398293833, 'Basic');
insert into customer values ('MM1', 6686644854522588, 'Mary', 'Michaels', 9398272938, 'Premium');
insert into customer values ('MM2', 6396852817417552, 'Manny', 'Moon', 2135498132, 'Standard');
insert into customer values ('NN1', 1474285283852852, 'Nina', 'Newport', 8798465156, 'Basic');
insert into customer values ('NN2', 4752752757527277, 'Nordi', 'Nunbeck', 2316548151, 'Standard');
insert into customer values ('OO1', 2275378254537457, 'Olivia', 'Oliveira', 9872824682, 'Standard');
insert into customer values ('OO2', 7866453456752888, 'Oliver', 'Ogenbrimmer', 1642548155, 'Standard');
insert into customer values ('PP1', 7867320458375753, 'Paulina', 'Pine', 9456498456, 'Standard');
insert into customer values ('PP2', 3453783543537835, 'Paul', 'Paulson', 5481351455, 'Standard');
insert into customer values ('QQ1', 5486753456786454, 'Aphrodite', 'Roman', 3216843165, 'Basic');
insert into customer values ('QQ2', 4567834534537534, 'Elphrid', 'Ryn', 2168431564, 'Standard');
insert into customer values ('RR1', 4537831231656552, 'Rhianna', 'Rain', 2135461635, 'Premium');
insert into customer values ('RR2', 9652756464323456, 'Ryan', 'Rhorbach', 5184351845, 'Standard');
insert into customer values ('SS1', 1348653486543554, 'Stevie', 'Sanders', 2164351351, 'Premium');
insert into customer values ('SS2', 4567834534675313, 'Steve', 'Sykes', 1351665168, 'Basic');
insert into customer values ('TT1', 4564534863153483, 'Tina', 'Timmons', 9876838465, 'Standard');
insert into customer values ('TT2', 1231536486453135, 'Tom', 'Tinders', 9387384282, 'Standard');
insert into customer values ('UU1', 4567835343338468, 'Ulysses', 'Updyke', 9381793875, 'Premium');
insert into customer values ('UU2', 4534864538764534, 'Kate', 'Upton', 9398193829, 'Premium');
insert into customer values ('VV1', 4567834534864345, 'Vivian', 'Valkstadt', 8728934263, 'Standard');
insert into customer values ('VV2', 3134534853486345, 'Alicia', 'Vikander', 9393713982, 'Standard');
insert into customer values ('WW1', 4538313456453456, 'Waldo', 'Thoreau', 9398193829, 'Basic');
insert into customer values ('WW2', 3686352741752875, 'Anna', 'Weinstsin', 9818989183, 'Basic');
insert into customer values ('XX1', 1728583572752727, 'Xandra', 'Green', 9389823983, 'Basic');
insert into customer values ('XX2', 9638627524142555, 'Xavier', 'Muschamp', 9381839829, 'Premium');
insert into customer values ('YY1', 2838527527275245, 'Yoldanda', 'Prince', 9372193818, 'Premium');
insert into customer values ('YY2', 5283535387525767, 'Ygor', 'Yarolov', 9382398392, 'Premium');
insert into customer values ('AAQ1', 5265896587452145, 'Alley', 'Smith', 6325625478, 'Basic');
insert into customer values ('AAW2', 9632587412548965, 'Alex', 'Jensen', 5896587452, 'Standard');
insert into customer values ('BBE1', 6541236547896587, 'Brittany', 'Johnson', 5235652145, 'Premium');
insert into customer values ('BBR2', 5265896854785412, 'Bruce', 'Jackson', 6325487412, 'Standard');
insert into customer values ('CCT1', 3165496156841654, 'Carla', 'Ford', 7375272525, 'Basic');
insert into customer values ('CCY2', 3126498132383455, 'Charles', 'Xavier', 3938252717, 'Basic');
insert into customer values ('DDU1', 1718418528418525, 'Dominique', 'Gonzalez', 2752752525, 'Premium');
insert into customer values ('DDI2', 1741841852969155, 'Raven', 'Stormclaw', 6837535275, 'Premium');
insert into customer values ('EEO1', 9398289898982925, 'Logan', 'Verine', 3963827544, 'Basic');
insert into customer values ('EEP2', 3936982171423987, 'Rey', 'Starwalker', 3963823757, 'Standard');
insert into customer values ('FFA1', 5626569741956144, 'Huckleberry', 'Finn', 3696385275, 'Standard');
insert into customer values ('FFS2', 2313219879714766, 'Moby', 'Doom', 3963852751, 'Standard');
insert into customer values ('GGD1', 9363981793318719, 'Metta', 'Peace', 3963752425, 'Basic');
insert into customer values ('GGF2', 2131298798414173, 'Hillary', 'Swank', 6878678688, 'Standard');
insert into customer values ('HHG1', 9363971783915639, 'Kally', 'Ford', 9786453532, 'Standard');
insert into customer values ('HHH2', 1313219879798814, 'Marcus', 'Williams', 4521864535, 'Premium');
insert into customer values ('IIJ1', 9363987139719317, 'Remy', 'Swift', 5647835345, 'Standard');
insert into customer values ('IIK2', 8979798123212717, 'Hailey', 'Claussen', 7564534555, 'Standard');
insert into customer values ('JJL1', 2313219879868363, 'Victoria', 'Dali', 3456645344, 'Standard');
insert into customer values ('JJZ2', 1471798798732132, 'Jack', 'Johnson', 4567864531, 'Standard');
insert into customer values ('KKX1', 9399671872951717, 'Rebecca', 'Ferguson', 3786454561, 'Standard');
insert into customer values ('KKC2', 2313219879871419, 'Henry', 'Tudor', 3578645441, 'Premium');
insert into customer values ('LLV1', 2313189816365711, 'Elizabeth', 'Gray', 3989786453, 'Standard');
insert into customer values ('LLB2', 1212121212121211, 'Irina', 'Shayk', 1321567845, 'Basic');
insert into customer values ('MMN1', 2323232323233232, 'Flander', 'Flinders', 3153678945, 'Premium');
insert into customer values ('MMM2', 3636363636363363, 'Jessica', 'Jones', 9281829529, 'Standard');
insert into customer values ('NNQ1', 2525252525525225, 'Adam', 'Jensen', 3215678455, 'Basic');
insert into customer values ('NNW2', 1414141414141414, 'Princess', 'Zelda', 3156489755, 'Standard');
insert into customer values ('OOR1', 7477474747474744, 'Mario', 'Albertoni', 7895321345, 'Standard');
insert into customer values ('OOE2', 4545454545545455, 'Link', 'Goron', 1345645344, 'Standard');
insert into customer values ('PPT1', 5656565656565656, 'Mary', 'Poppins', 2354542311, 'Standard');
insert into customer values ('PPY2', 9827928728719844, 'Hermione', 'Weasley', 1234864531, 'Standard');
insert into customer values ('QQU1', 1919191919119111, 'Luke', 'Potter', 1234567453, 'Basic');
insert into customer values ('QQI2', 9292929292929292, 'Darth', 'Maul', 3156483453, 'Standard');
insert into customer values ('RRO1', 6598728492849187, 'Ethan', 'Hunt', 3215431234, 'Premium');
insert into customer values ('RRP2', 2168461354513545, 'Zora', 'Marcus', 1234567834, 'Standard');
insert into customer values ('SSA1', 9879845612195195, 'Caesar', 'Little', 1324564311, 'Premium');
insert into customer values ('SSS2', 9393928178297112, 'Stuart', 'Redwall', 1234834531, 'Basic');
insert into customer values ('TTD1', 9871983849284982, 'Gandledor', 'Dumbledalf', 1234864566, 'Standard');
insert into customer values ('TTF2', 9399829846458711, 'Calvin', 'Klein', 3633838275, 'Standard');
insert into customer values ('UUG1', 8971984298498428, 'Olivia', 'Roberts', 8397527537, 'Premium');
insert into customer values ('UUH2', 8926549872849828, 'George', 'Kastanza', 7538542545, 'Premium');
insert into customer values ('VVJ1', 5165465162866824, 'Adam', 'Scott', 7538945435, 'Standard');
insert into customer values ('VVK2', 2168246546262467, 'Jamie', 'Alexander', 1474185255, 'Standard');
insert into customer values ('WWL1', 3216461654236516, 'Nancy', 'Smith', 1871798797, 'Basic');
insert into customer values ('WWZ2', 2649242516524425, 'Kjirsti', 'Christenssen', 2133198798, 'Basic');
insert into customer values ('XXC1', 3216824646254215, 'Sasha', 'Pevlov', 1313249814, 'Basic');
insert into customer values ('XXV2', 5498426542628425, 'Dom', 'Trevlyn', 9639184192, 'Premium');
insert into customer values ('YYX1', 7142369896318983, 'Elliot', 'Thomson', 3962917295, 'Premium');
insert into customer values ('YYB2', 9787981174131329, 'Erica', 'Tomlinson', 8979166663, 'Premium');

--profile('user_id', 'profile_id', 'name')--
insert into profile values ('AA1', 'PAA1', 'Ashley');
insert into profile values ('AA2', 'PAA2', 'Adam');
insert into profile values ('BB1', 'PBB1', 'Bailey');
insert into profile values ('BB2', 'PBB2', 'Bob');
insert into profile values ('CC1', 'PCC1', 'Carrie');
insert into profile values ('CC2', 'PCC2', 'Clint');
insert into profile values ('DD1', 'PDD1', 'Dave');
insert into profile values ('DD2', 'PDD2', 'Dana');
insert into profile values ('EE1', 'PEE1', 'Erica');
insert into profile values ('EE2', 'PEE2', 'Erik');
insert into profile values ('FF1', 'PFF1', 'Fiorina');
insert into profile values ('FF2', 'PFF2', 'Fred');
insert into profile values ('GG1', 'PGG1', 'Gina');
insert into profile values ('GG2', 'PGG2', 'Geoff');
insert into profile values ('HH1', 'PHH1', 'Hillary');
insert into profile values ('HH2', 'PHH2', 'Harry');
insert into profile values ('II1', 'PII1', 'Irina');
insert into profile values ('II2', 'PII2', 'Igor');
insert into profile values ('JJ1', 'PJJ1', 'Jane');
insert into profile values ('JJ2', 'PJJ2', 'Jack');
insert into profile values ('KK1', 'PKK1', 'Kira');
insert into profile values ('KK2', 'PKK2', 'Klint');
insert into profile values ('LL1', 'PLL1', 'Linda');
insert into profile values ('LL2', 'PLL2', 'Larry');
insert into profile values ('MM1', 'PMM1', 'Mary');
insert into profile values ('MM2', 'PMM2', 'Manny');
insert into profile values ('NN1', 'PNN1', 'Nina');
insert into profile values ('NN2', 'PNN2', 'Nordi');
insert into profile values ('OO1', 'POO1', 'Olivia');
insert into profile values ('OO2', 'POO2', 'Oliver');
insert into profile values ('PP1', 'PPP1', 'Paulina');
insert into profile values ('PP2', 'PPP2', 'Paul');
insert into profile values ('QQ1', 'PQQ1', 'Aphrodite');
insert into profile values ('QQ2', 'PQQ2', 'Elphrid');
insert into profile values ('RR1', 'PRR1', 'Rhianna');
insert into profile values ('RR2', 'PRR2', 'Ryan');
insert into profile values ('SS1', 'PSS1', 'Stevie');
insert into profile values ('SS2', 'PSS2', 'Steve');
insert into profile values ('TT1', 'PTT1', 'Tina');
insert into profile values ('TT2', 'PTT2', 'Tom');
insert into profile values ('UU1', 'PUU1', 'Ulysses');
insert into profile values ('UU2', 'PUU2', 'Kate');
insert into profile values ('VV1', 'PVV1', 'Vivian');
insert into profile values ('VV2', 'PVV2', 'Alicia');
insert into profile values ('WW1', 'PWW1', 'Waldo');
insert into profile values ('WW2', 'PWW2', 'Anna');
insert into profile values ('XX1', 'PXX1', 'Xandra');
insert into profile values ('XX2', 'PXX2', 'Xavier');
insert into profile values ('YY1', 'PYY1', 'Yoldanda');
insert into profile values ('YY2', 'PYY2', 'Ygor');
insert into profile values ('AAQ1', 'PAAQ1', 'Alley');
insert into profile values ('AAW2', 'PAAW2', 'Alex');
insert into profile values ('BBE1', 'PBBE1', 'Brittany');
insert into profile values ('BBR2', 'PBBR2', 'Bruce');
insert into profile values ('CCT1', 'PCCT1', 'Carla');
insert into profile values ('CCY2', 'PCCY2', 'Charles');
insert into profile values ('DDU1', 'PDDU1', 'Dominique');
insert into profile values ('DDI2', 'PDDI2', 'Raven');
insert into profile values ('EEO1', 'PEEO1', 'Logan');
insert into profile values ('EEP2', 'PEEP2', 'Rey');
insert into profile values ('FFA1', 'PFFA1', 'Huckleberry');
insert into profile values ('FFS2', 'PFFS2', 'Moby');
insert into profile values ('GGD1', 'PGGD1', 'Metta');
insert into profile values ('GGF2', 'PGGF2', 'Hillary');
insert into profile values ('HHG1', 'PHHG1', 'Kally');
insert into profile values ('HHH2', 'PHHH2', 'Marcus');
insert into profile values ('IIJ1', 'PIIJ1', 'Remy');
insert into profile values ('IIK2', 'PIIK2', 'Hailey');
insert into profile values ('JJL1', 'PJJL1', 'Victoria');
insert into profile values ('JJZ2', 'PJJZ2', 'Jack');
insert into profile values ('KKX1', 'PKKX1', 'Rebecca');
insert into profile values ('KKC2', 'PKKC2', 'Henry');
insert into profile values ('LLV1', 'PLLV1', 'Elizabeth');
insert into profile values ('LLB2', 'PLLB2', 'Irina');
insert into profile values ('MMN1', 'PMMN1', 'Flander');
insert into profile values ('MMM2', 'PMMM2', 'Jessica');
insert into profile values ('NNQ1', 'PNNQ1', 'Adam');
insert into profile values ('NNW2', 'PNNW2', 'Princess');
insert into profile values ('OOR1', 'POOR1', 'Mario');
insert into profile values ('OOE2', 'POOE2', 'Link');
insert into profile values ('PPT1', 'PPPT1', 'Mary');
insert into profile values ('PPY2', 'PPPY2', 'Hermione');
insert into profile values ('QQU1', 'PQQU1', 'Luke');
insert into profile values ('QQI2', 'PQQI2', 'Darth');
insert into profile values ('RRO1', 'PRRO1', 'Ethan');
insert into profile values ('RRP2', 'PRRP2', 'Zora');
insert into profile values ('SSA1', 'PSSA1', 'Caesar');
insert into profile values ('SSS2', 'PSSS2', 'Stuart');
insert into profile values ('TTD1', 'PTTD1', 'Gandledor');
insert into profile values ('TTF2', 'PTTF2', 'Calvin');
insert into profile values ('UUG1', 'PUUG1', 'Olivia');
insert into profile values ('UUH2', 'PUUH2', 'George');
insert into profile values ('VVJ1', 'PVVJ1', 'Adam');
insert into profile values ('VVK2', 'PVVK2', 'Jamie');
insert into profile values ('WWL1', 'PWWL1', 'Nancy');
insert into profile values ('WWZ2', 'PWWZ2', 'Kjirsti');
insert into profile values ('XXC1', 'PXXC1', 'Sasha');
insert into profile values ('XXV2', 'PXXV2', 'Dom');
insert into profile values ('YYX1', 'PYYX1', 'Elliot');
insert into profile values ('YYB2', 'PYYB2', 'Erica');

--movie('movie_id', 'name', 'genre', rating, 'released_date')--
insert into movie values ('M101', 'Jamie Bond', 'Action', 4.0, '22-JAN-2006');
insert into movie values ('M102', 'Impossible Mission', 'Action', 4.5, '03-FEB-2015');
insert into movie values ('M103', 'Frodo Baggins', 'Adventure', 5.0, '02-MAR-2014');
insert into movie values ('M104', 'Parry Hotter', 'Comedy', 2.5, '11-AUG-2016');
insert into movie values ('M105', 'Queen of England', 'Documentary', 1.5, '26-OCT-2005');
insert into movie values ('M106', 'Sean Bean Dies', 'Action', 5.0, '23-NOV-2013');
insert into movie values ('M107', 'Car Story 3', 'Adventure', 3.5, '11-APR-2015');
insert into movie values ('M108', 'Star Pilgrimage', 'Adventure', 4.0, '13-MAY-2011');
insert into movie values ('M109', 'The Lord of the Necklaces', 'Action', 3.5, '18-DEC-2001');
insert into movie values ('M110', 'The Prince of Azkabania', 'Adventure', 5.0, '02-JUL-2004');
insert into movie values ('M111', 'Strange', 'Drama', 5.0, '24-JUL-2016');
insert into movie values ('M112', 'Funny Person', 'Comedy', 3.5, '15-OCT-2001');
insert into movie values ('M113', 'Robot', 'Drama', 5.0, '21-JUL-2015');
insert into movie values ('M114', 'Thrones', 'Drama', 5.0, '20-MAY-2009');
insert into movie values ('M115', 'Romania', 'Drama', 5.0, '05-JAN-2002');
insert into movie values ('M116', 'Kramer', 'Comedy', 4.5, '09-NOV-1989');
insert into movie values ('M117', 'The Store', 'Comedy', 4.5, '28-AUG-2000');
insert into movie values ('M118', 'Life', 'Education', 5.0, '20-FEB-2003');
insert into movie values ('M119', 'Cooking', 'Reality', 3.5, '01-MAR-2006');
insert into movie values ('M120', 'Fishing', 'Reality', 3.0, '18-SEP-2008');
insert into movie values ('M121', 'The Boat', 'Drama', 3.5, '10-JAN-2001');
insert into movie values ('M122', 'Part-T', 'Comedy', 4.0, '20-FEB-2002');
insert into movie values ('M123', '25', 'Action', 4.5, '30-MAR-2003');
insert into movie values ('M124', 'The Field', 'Horror', 3.5, '02-APR-2004');
insert into movie values ('M125', 'The Nail', 'Horror', 3.5, '03-MAY-2005');
insert into movie values ('M126', 'Upon A Mountain', 'Adventure', 3.5, '04-JUN-2006');
insert into movie values ('M127', 'Upwards', 'Comedy', 4.0, '05-JUL-2007');
insert into movie values ('M128', 'You and Me', 'Drama', 5.0, '16-AUG-2007');
insert into movie values ('M129', 'Space Adventure', 'Adventure', 3.5, '17-SEP-2008');
insert into movie values ('M130', 'Jack Preacher', 'Drama', 3.5, '19-OCT-2009');
insert into movie values ('M131', 'Rogue Two', 'Adventure', 4.0, '15-NOV-2010');
insert into movie values ('M132', 'Gojira', 'Action', 4.5, '03-DEC-2011');
insert into movie values ('M133', 'House In The River', 'Horror', 4.5, '30-JAN-2012');
insert into movie values ('M134', 'What Is Your Name', 'Drama', 4.5, '22-FEB-2014');
insert into movie values ('M135', 'Nature', 'Documentary', 4.5, '23-MAR-2013');
insert into movie values ('M136', 'The Trip', 'Adventure', 4.5, '05-MAY-2015');
insert into movie values ('M137', 'Onward', 'Action', 3.5, '06-JUN-2016');
insert into movie values ('M138', '44 Bullets', 'Action', 3.0, '05-JUL-2005');
insert into movie values ('M139', 'A Man And A Woman', 'Adventure', 2.0, '18-AUG-2015');
insert into movie values ('M140', 'Politics', 'Comedy', 4.5, '22-SEP-2011');
insert into movie values ('M141', 'The Student', 'Drama', 3.5, '26-OCT-2001');
insert into movie values ('M142', 'Skynet', 'Adventure', 2.5, '15-NOV-2005');
insert into movie values ('M143', 'Earth', 'Documentary', 5.0, '31-DEC-2006');
insert into movie values ('M144', 'Final Exam', 'Horror', 4.5, '05-JAN-2013');
insert into movie values ('M145', 'Guns N Guns', 'Action', 4.0, '06-FEB-2006');
insert into movie values ('M146', 'Desert To Sea', 'Adventure', 3.5, '07-MAY-2013');
insert into movie values ('M147', 'Furious Max', 'Action', 4.5, '16-OCT-2014');
insert into movie values ('M148', 'Egypt', 'Drama', 3.5, '01-NOV-2015');
insert into movie values ('M149', 'Ancient Family', 'Comedy', 4.5, '18-JUN-2015');
insert into movie values ('M150', 'Jump', 'Action', 4.0, '01-AUG-2016');

--series('series_id', 'name', 'genre', rating, 'released_date')--
insert into series values ('S101', 'Strange', 'Drama', 5.0, '24-JUL-2016');
insert into series values ('S102', 'Funny Person', 'Comedy', 3.5, '15-OCT-2001');
insert into series values ('S103', 'Robot', 'Drama', 5.0, '21-JUL-2015');
insert into series values ('S104', 'Thrones', 'Drama', 5.0, '20-MAY-2009');
insert into series values ('S105', 'Romania', 'Drama', 5.0, '05-JAN-2002');
insert into series values ('S106', 'Kramer', 'Comedy', 4.5, '09-NOV-1989');
insert into series values ('S107', 'The Store', 'Comedy', 4.5, '28-AUG-2000');
insert into series values ('S108', 'Life', 'Education', 5.0, '20-FEB-2003');
insert into series values ('S109', 'Cooking', 'Reality', 3.5, '01-MAR-2006');
insert into series values ('S110', 'Fishing', 'Reality', 3.0, '18-SEP-2008');
insert into series values ('S111', 'Jamie Bond', 'Action', 4.5, '22-JAN-2006');
insert into series values ('S112', 'Impossible Mission', 'Action', 4.5, '03-FEB-2015');
insert into series values ('S113', 'Frodo Baggins', 'Adventure', 5.0, '02-MAR-2014');
insert into series values ('S114', 'Parry Hotter', 'Comedy', 2.5, '11-AUG-2016');
insert into series values ('S115', 'Queen of England', 'Documentary', 1.5, '26-OCT-2005');
insert into series values ('S116', 'Sean Bean Dies', 'Action', 5.0, '23-NOV-2013');
insert into series values ('S117', 'Car Story 3', 'Adventure', 3.5, '11-APR-2015');
insert into series values ('S118', 'Star Pilgrimage', 'Adventure', 4.0, '13-MAY-2011');
insert into series values ('S119', 'The Lord of the Necklaces', 'Action', 3.5, '18-DEC-2001');
insert into series values ('S120', 'The Prince of Azkabania', 'Adventure', 5.0, '02-JUL-2004');
insert into series values ('S121', 'The Trip', 'Adventure', 4.5, '05-MAY-2015');
insert into series values ('S122', 'Onward', 'Action', 3.5, '06-JUN-2016');
insert into series values ('S123', '44 Bullets', 'Action', 3.0, '05-JUL-2005');
insert into series values ('S124', 'A Man And A Woman', 'Adventure', 2.0, '18-AUG-2015');
insert into series values ('S125', 'Politics', 'Comedy', 4.5, '22-SEP-2011');
insert into series values ('S126', 'The Student', 'Drama', 3.5, '26-OCT-2001');
insert into series values ('S127', 'Skynet', 'Adventure', 2.5, '15-NOV-2005');
insert into series values ('S128', 'Earth', 'Documentary', 5.0, '31-DEC-2006');
insert into series values ('S129', 'Final Exam', 'Horror', 4.5, '05-JAN-2013');
insert into series values ('S130', 'Guns N Guns', 'Action', 4.0, '06-FEB-2006');
insert into series values ('S131', 'Desert To Sea', 'Adventure', 3.5, '07-MAY-2013');
insert into series values ('S132', 'Furious Max', 'Action', 4.5, '16-OCT-2014');
insert into series values ('S133', 'Egypt', 'Drama', 3.5, '01-NOV-2015');
insert into series values ('S134', 'Ancient Family', 'Comedy', 4.5, '18-JUN-2015');
insert into series values ('S135', 'Jump', 'Action', 4.0, '01-AUG-2016');
insert into series values ('S136', 'The Boat', 'Drama', 3.5, '10-JAN-2001');
insert into series values ('S137', 'Part-T', 'Comedy', 4.0, '20-FEB-2002');
insert into series values ('S138', '25', 'Action', 4.5, '30-MAR-2003');
insert into series values ('S139', 'The Field', 'Horror', 3.5, '02-APR-2004');
insert into series values ('S140', 'The Nail', 'Horror', 3.5, '03-MAY-2005');
insert into series values ('S141', 'Upon A Mountain', 'Adventure', 3.5, '04-JUN-2006');
insert into series values ('S142', 'Upwards', 'Comedy', 4.0, '05-JUL-2007');
insert into series values ('S143', 'You and Me', 'Drama', 5.0, '16-AUG-2007');
insert into series values ('S144', 'Space Adventure', 'Adventure', 3.5, '17-SEP-2008');
insert into series values ('S145', 'Jack Preacher', 'Drama', 3.5, '19-OCT-2009');
insert into series values ('S146', 'Rogue Two', 'Adventure', 4.0, '15-NOV-2010');
insert into series values ('S147', 'Gojira', 'Action', 4.5, '03-DEC-2011');
insert into series values ('S148', 'House In The River', 'Horror', 4.5, '30-JAN-2012');
insert into series values ('S149', 'What Is Your Name', 'Drama', 4.5, '22-FEB-2014');
insert into series values ('S150', 'Nature', 'Documentary', 4.5, '23-MAR-2013');

--episode('series_id', 'episode_no', 'name')--
insert into episode values ('S101', 'S101-1', 'Ep 1');
insert into episode values ('S101', 'S101-2', 'Ep 2');
insert into episode values ('S101', 'S101-3', 'Ep 3');
insert into episode values ('S101', 'S101-4', 'Ep 4');
insert into episode values ('S101', 'S101-5', 'Ep 5');
insert into episode values ('S102', 'S102-1', 'Ep 1');
insert into episode values ('S102', 'S102-2', 'Ep 2');
insert into episode values ('S102', 'S102-3', 'Ep 3');
insert into episode values ('S102', 'S102-4', 'Ep 4');
insert into episode values ('S102', 'S102-5', 'Ep 5');
insert into episode values ('S103', 'S103-1', 'Ep 1');
insert into episode values ('S103', 'S103-2', 'Ep 2');
insert into episode values ('S103', 'S103-3', 'Ep 3');
insert into episode values ('S103', 'S103-4', 'Ep 4');
insert into episode values ('S103', 'S103-5', 'Ep 5');
insert into episode values ('S104', 'S104-1', 'Ep 1');
insert into episode values ('S104', 'S104-2', 'Ep 2');
insert into episode values ('S104', 'S104-3', 'Ep 3');
insert into episode values ('S104', 'S104-4', 'Ep 4');
insert into episode values ('S104', 'S104-5', 'Ep 5');
insert into episode values ('S105', 'S105-1', 'Ep 1');
insert into episode values ('S105', 'S105-2', 'Ep 2');
insert into episode values ('S105', 'S105-3', 'Ep 3');
insert into episode values ('S105', 'S105-4', 'Ep 4');
insert into episode values ('S105', 'S105-5', 'Ep 5');
insert into episode values ('S106', 'S106-1', 'Ep 1');
insert into episode values ('S106', 'S106-2', 'Ep 2');
insert into episode values ('S106', 'S106-3', 'Ep 3');
insert into episode values ('S106', 'S106-4', 'Ep 4');
insert into episode values ('S106', 'S106-5', 'Ep 5');
insert into episode values ('S107', 'S107-1', 'Ep 1');
insert into episode values ('S107', 'S107-2', 'Ep 2');
insert into episode values ('S107', 'S107-3', 'Ep 3');
insert into episode values ('S107', 'S107-4', 'Ep 4');
insert into episode values ('S107', 'S107-5', 'Ep 5');
insert into episode values ('S108', 'S108-1', 'Ep 1');
insert into episode values ('S108', 'S108-2', 'Ep 2');
insert into episode values ('S108', 'S108-3', 'Ep 3');
insert into episode values ('S108', 'S108-4', 'Ep 4');
insert into episode values ('S108', 'S108-5', 'Ep 5');
insert into episode values ('S109', 'S109-1', 'Ep 1');
insert into episode values ('S109', 'S109-2', 'Ep 2');
insert into episode values ('S109', 'S109-3', 'Ep 3');
insert into episode values ('S109', 'S109-4', 'Ep 4');
insert into episode values ('S109', 'S109-5', 'Ep 5');
insert into episode values ('S110', 'S110-1', 'Ep 1');
insert into episode values ('S110', 'S110-2', 'Ep 2');
insert into episode values ('S110', 'S110-3', 'Ep 3');
insert into episode values ('S110', 'S110-4', 'Ep 4');
insert into episode values ('S110', 'S110-5', 'Ep 5');
insert into episode values ('S111', 'S111-1', 'Ep 1');
insert into episode values ('S111', 'S111-2', 'Ep 2');
insert into episode values ('S111', 'S111-3', 'Ep 3');
insert into episode values ('S111', 'S111-4', 'Ep 4');
insert into episode values ('S111', 'S111-5', 'Ep 5');
insert into episode values ('S112', 'S112-1', 'Ep 1');
insert into episode values ('S112', 'S112-2', 'Ep 2');
insert into episode values ('S112', 'S112-3', 'Ep 3');
insert into episode values ('S112', 'S112-4', 'Ep 4');
insert into episode values ('S112', 'S112-5', 'Ep 5');
insert into episode values ('S113', 'S113-1', 'Ep 1');
insert into episode values ('S113', 'S113-2', 'Ep 2');
insert into episode values ('S113', 'S113-3', 'Ep 3');
insert into episode values ('S113', 'S113-4', 'Ep 4');
insert into episode values ('S113', 'S113-5', 'Ep 5');
insert into episode values ('S114', 'S114-1', 'Ep 1');
insert into episode values ('S114', 'S114-2', 'Ep 2');
insert into episode values ('S114', 'S114-3', 'Ep 3');
insert into episode values ('S114', 'S114-4', 'Ep 4');
insert into episode values ('S114', 'S114-5', 'Ep 5');
insert into episode values ('S115', 'S115-1', 'Ep 1');
insert into episode values ('S115', 'S115-2', 'Ep 2');
insert into episode values ('S115', 'S115-3', 'Ep 3');
insert into episode values ('S115', 'S115-4', 'Ep 4');
insert into episode values ('S115', 'S115-5', 'Ep 5');
insert into episode values ('S116', 'S116-1', 'Ep 1');
insert into episode values ('S116', 'S116-2', 'Ep 2');
insert into episode values ('S116', 'S116-3', 'Ep 3');
insert into episode values ('S116', 'S116-4', 'Ep 4');
insert into episode values ('S116', 'S116-5', 'Ep 5');
insert into episode values ('S117', 'S117-1', 'Ep 1');
insert into episode values ('S117', 'S117-2', 'Ep 2');
insert into episode values ('S117', 'S117-3', 'Ep 3');
insert into episode values ('S117', 'S117-4', 'Ep 4');
insert into episode values ('S117', 'S117-5', 'Ep 5');
insert into episode values ('S118', 'S118-1', 'Ep 1');
insert into episode values ('S118', 'S118-2', 'Ep 2');
insert into episode values ('S118', 'S118-3', 'Ep 3');
insert into episode values ('S118', 'S118-4', 'Ep 4');
insert into episode values ('S118', 'S118-5', 'Ep 5');
insert into episode values ('S119', 'S119-1', 'Ep 1');
insert into episode values ('S119', 'S119-2', 'Ep 2');
insert into episode values ('S119', 'S119-3', 'Ep 3');
insert into episode values ('S119', 'S119-4', 'Ep 4');
insert into episode values ('S119', 'S119-5', 'Ep 5');
insert into episode values ('S120', 'S120-1', 'Ep 1');
insert into episode values ('S120', 'S120-2', 'Ep 2');
insert into episode values ('S120', 'S120-3', 'Ep 3');
insert into episode values ('S120', 'S120-4', 'Ep 4');
insert into episode values ('S120', 'S120-5', 'Ep 5');
insert into episode values ('S121', 'S121-1', 'Ep 1');
insert into episode values ('S121', 'S121-2', 'Ep 2');
insert into episode values ('S121', 'S121-3', 'Ep 3');
insert into episode values ('S121', 'S121-4', 'Ep 4');
insert into episode values ('S121', 'S121-5', 'Ep 5');
insert into episode values ('S122', 'S122-1', 'Ep 1');
insert into episode values ('S122', 'S122-2', 'Ep 2');
insert into episode values ('S122', 'S122-3', 'Ep 3');
insert into episode values ('S122', 'S122-4', 'Ep 4');
insert into episode values ('S122', 'S122-5', 'Ep 5');
insert into episode values ('S123', 'S123-1', 'Ep 1');
insert into episode values ('S123', 'S123-2', 'Ep 2');
insert into episode values ('S123', 'S123-3', 'Ep 3');
insert into episode values ('S123', 'S123-4', 'Ep 4');
insert into episode values ('S123', 'S123-5', 'Ep 5');
insert into episode values ('S124', 'S124-1', 'Ep 1');
insert into episode values ('S124', 'S124-2', 'Ep 2');
insert into episode values ('S124', 'S124-3', 'Ep 3');
insert into episode values ('S124', 'S124-4', 'Ep 4');
insert into episode values ('S124', 'S124-5', 'Ep 5');
insert into episode values ('S125', 'S125-1', 'Ep 1');
insert into episode values ('S125', 'S125-2', 'Ep 2');
insert into episode values ('S125', 'S125-3', 'Ep 3');
insert into episode values ('S125', 'S125-4', 'Ep 4');
insert into episode values ('S125', 'S125-5', 'Ep 5');
insert into episode values ('S126', 'S126-1', 'Ep 1');
insert into episode values ('S126', 'S126-2', 'Ep 2');
insert into episode values ('S126', 'S126-3', 'Ep 3');
insert into episode values ('S126', 'S126-4', 'Ep 4');
insert into episode values ('S126', 'S126-5', 'Ep 5');
insert into episode values ('S127', 'S127-1', 'Ep 1');
insert into episode values ('S127', 'S127-2', 'Ep 2');
insert into episode values ('S127', 'S127-3', 'Ep 3');
insert into episode values ('S127', 'S127-4', 'Ep 4');
insert into episode values ('S127', 'S127-5', 'Ep 5');
insert into episode values ('S128', 'S128-1', 'Ep 1');
insert into episode values ('S128', 'S128-2', 'Ep 2');
insert into episode values ('S128', 'S128-3', 'Ep 3');
insert into episode values ('S128', 'S128-4', 'Ep 4');
insert into episode values ('S128', 'S128-5', 'Ep 5');
insert into episode values ('S129', 'S129-1', 'Ep 1');
insert into episode values ('S129', 'S129-2', 'Ep 2');
insert into episode values ('S129', 'S129-3', 'Ep 3');
insert into episode values ('S129', 'S129-4', 'Ep 4');
insert into episode values ('S129', 'S129-5', 'Ep 5');
insert into episode values ('S130', 'S130-1', 'Ep 1');
insert into episode values ('S130', 'S130-2', 'Ep 2');
insert into episode values ('S130', 'S130-3', 'Ep 3');
insert into episode values ('S130', 'S130-4', 'Ep 4');
insert into episode values ('S130', 'S130-5', 'Ep 5');
insert into episode values ('S131', 'S131-1', 'Ep 1');
insert into episode values ('S131', 'S131-2', 'Ep 2');
insert into episode values ('S131', 'S131-3', 'Ep 3');
insert into episode values ('S131', 'S131-4', 'Ep 4');
insert into episode values ('S131', 'S131-5', 'Ep 5');
insert into episode values ('S132', 'S132-1', 'Ep 1');
insert into episode values ('S132', 'S132-2', 'Ep 2');
insert into episode values ('S132', 'S132-3', 'Ep 3');
insert into episode values ('S132', 'S132-4', 'Ep 4');
insert into episode values ('S132', 'S132-5', 'Ep 5');
insert into episode values ('S133', 'S133-1', 'Ep 1');
insert into episode values ('S133', 'S133-2', 'Ep 2');
insert into episode values ('S133', 'S133-3', 'Ep 3');
insert into episode values ('S133', 'S133-4', 'Ep 4');
insert into episode values ('S133', 'S133-5', 'Ep 5');
insert into episode values ('S134', 'S134-1', 'Ep 1');
insert into episode values ('S134', 'S134-2', 'Ep 2');
insert into episode values ('S134', 'S134-3', 'Ep 3');
insert into episode values ('S134', 'S134-4', 'Ep 4');
insert into episode values ('S134', 'S134-5', 'Ep 5');
insert into episode values ('S135', 'S135-1', 'Ep 1');
insert into episode values ('S135', 'S135-2', 'Ep 2');
insert into episode values ('S135', 'S135-3', 'Ep 3');
insert into episode values ('S135', 'S135-4', 'Ep 4');
insert into episode values ('S135', 'S135-5', 'Ep 5');
insert into episode values ('S136', 'S136-1', 'Ep 1');
insert into episode values ('S136', 'S136-2', 'Ep 2');
insert into episode values ('S136', 'S136-3', 'Ep 3');
insert into episode values ('S136', 'S136-4', 'Ep 4');
insert into episode values ('S136', 'S136-5', 'Ep 5');
insert into episode values ('S137', 'S137-1', 'Ep 1');
insert into episode values ('S137', 'S137-2', 'Ep 2');
insert into episode values ('S137', 'S137-3', 'Ep 3');
insert into episode values ('S137', 'S137-4', 'Ep 4');
insert into episode values ('S137', 'S137-5', 'Ep 5');
insert into episode values ('S138', 'S138-1', 'Ep 1');
insert into episode values ('S138', 'S138-2', 'Ep 2');
insert into episode values ('S138', 'S138-3', 'Ep 3');
insert into episode values ('S138', 'S138-4', 'Ep 4');
insert into episode values ('S138', 'S138-5', 'Ep 5');
insert into episode values ('S139', 'S139-1', 'Ep 1');
insert into episode values ('S139', 'S139-2', 'Ep 2');
insert into episode values ('S139', 'S139-3', 'Ep 3');
insert into episode values ('S139', 'S139-4', 'Ep 4');
insert into episode values ('S139', 'S139-5', 'Ep 5');
insert into episode values ('S140', 'S140-1', 'Ep 1');
insert into episode values ('S140', 'S140-2', 'Ep 2');
insert into episode values ('S140', 'S140-3', 'Ep 3');
insert into episode values ('S140', 'S140-4', 'Ep 4');
insert into episode values ('S140', 'S140-5', 'Ep 5');
insert into episode values ('S141', 'S141-1', 'Ep 1');
insert into episode values ('S141', 'S141-2', 'Ep 2');
insert into episode values ('S141', 'S141-3', 'Ep 3');
insert into episode values ('S141', 'S141-4', 'Ep 4');
insert into episode values ('S141', 'S141-5', 'Ep 5');
insert into episode values ('S142', 'S142-1', 'Ep 1');
insert into episode values ('S142', 'S142-2', 'Ep 2');
insert into episode values ('S142', 'S142-3', 'Ep 3');
insert into episode values ('S142', 'S142-4', 'Ep 4');
insert into episode values ('S142', 'S142-5', 'Ep 5');
insert into episode values ('S143', 'S143-1', 'Ep 1');
insert into episode values ('S143', 'S143-2', 'Ep 2');
insert into episode values ('S143', 'S143-3', 'Ep 3');
insert into episode values ('S143', 'S143-4', 'Ep 4');
insert into episode values ('S143', 'S143-5', 'Ep 5');
insert into episode values ('S144', 'S144-1', 'Ep 1');
insert into episode values ('S144', 'S144-2', 'Ep 2');
insert into episode values ('S144', 'S144-3', 'Ep 3');
insert into episode values ('S144', 'S144-4', 'Ep 4');
insert into episode values ('S144', 'S144-5', 'Ep 5');
insert into episode values ('S145', 'S145-1', 'Ep 1');
insert into episode values ('S145', 'S145-2', 'Ep 2');
insert into episode values ('S145', 'S145-3', 'Ep 3');
insert into episode values ('S145', 'S145-4', 'Ep 4');
insert into episode values ('S145', 'S145-5', 'Ep 5');
insert into episode values ('S146', 'S146-1', 'Ep 1');
insert into episode values ('S146', 'S146-2', 'Ep 2');
insert into episode values ('S146', 'S146-3', 'Ep 3');
insert into episode values ('S146', 'S146-4', 'Ep 4');
insert into episode values ('S146', 'S146-5', 'Ep 5');
insert into episode values ('S147', 'S147-1', 'Ep 1');
insert into episode values ('S147', 'S147-2', 'Ep 2');
insert into episode values ('S147', 'S147-3', 'Ep 3');
insert into episode values ('S147', 'S147-4', 'Ep 4');
insert into episode values ('S147', 'S147-5', 'Ep 5');
insert into episode values ('S148', 'S148-1', 'Ep 1');
insert into episode values ('S148', 'S148-2', 'Ep 2');
insert into episode values ('S148', 'S148-3', 'Ep 3');
insert into episode values ('S148', 'S148-4', 'Ep 4');
insert into episode values ('S148', 'S148-5', 'Ep 5');
insert into episode values ('S149', 'S149-1', 'Ep 1');
insert into episode values ('S149', 'S149-2', 'Ep 2');
insert into episode values ('S149', 'S149-3', 'Ep 3');
insert into episode values ('S149', 'S149-4', 'Ep 4');
insert into episode values ('S149', 'S149-5', 'Ep 5');
insert into episode values ('S150', 'S150-1', 'Ep 1');
insert into episode values ('S150', 'S150-2', 'Ep 2');
insert into episode values ('S150', 'S150-3', 'Ep 3');
insert into episode values ('S150', 'S150-4', 'Ep 4');
insert into episode values ('S150', 'S150-5', 'Ep 5');

--profile_movie('movie_id', 'profile_id', 'accessed_date')--
insert into profile_movie values ('M150', 'PAA1', '01-JAN-2016');
insert into profile_movie values ('M149', 'PAA2', '02-FEB-2016');
insert into profile_movie values ('M148', 'PBB1', '03-MAR-2016');
insert into profile_movie values ('M147', 'PBB2', '04-APR-2016');
insert into profile_movie values ('M146', 'PCC1', '05-MAY-2016');
insert into profile_movie values ('M145', 'PCC2', '06-JUN-2016');
insert into profile_movie values ('M144', 'PDD1', '07-JUL-2016');
insert into profile_movie values ('M143', 'PDD2', '08-AUG-2016');
insert into profile_movie values ('M142', 'PEE1', '09-SEP-2016');
insert into profile_movie values ('M141', 'PEE2', '10-OCT-2016');
insert into profile_movie values ('M140', 'PFF1', '11-AUG-2016');
insert into profile_movie values ('M139', 'PFF2', '12-MAY-2016');
insert into profile_movie values ('M138', 'PGG1', '13-JAN-2016');
insert into profile_movie values ('M137', 'PGG2', '14-FEB-2016');
insert into profile_movie values ('M136', 'PHH1', '15-MAR-2016');
insert into profile_movie values ('M135', 'PHH2', '16-APR-2016');
insert into profile_movie values ('M134', 'PII1', '17-MAY-2016');
insert into profile_movie values ('M133', 'PII2', '18-JUN-2016');
insert into profile_movie values ('M132', 'PJJ1', '19-JUL-2016');
insert into profile_movie values ('M131', 'PJJ2', '20-AUG-2016');
insert into profile_movie values ('M130', 'PKK1', '21-SEP-2016');
insert into profile_movie values ('M129', 'PKK2', '22-AUG-2016');
insert into profile_movie values ('M128', 'PLL1', '23-MAY-2016');
insert into profile_movie values ('M127', 'PLL2', '24-SEP-2016');
insert into profile_movie values ('M126', 'PMM1', '25-JAN-2016');
insert into profile_movie values ('M125', 'PMM2', '26-FEB-2016');
insert into profile_movie values ('M124', 'PNN1', '27-MAR-2016');
insert into profile_movie values ('M123', 'PNN2', '01-APR-2016');
insert into profile_movie values ('M122', 'POO1', '02-MAY-2016');
insert into profile_movie values ('M121', 'POO2', '03-JUN-2016');
insert into profile_movie values ('M120', 'PPP1', '04-JUL-2016');
insert into profile_movie values ('M119', 'PPP2', '05-AUG-2016');
insert into profile_movie values ('M118', 'PQQ1', '06-SEP-2016');
insert into profile_movie values ('M117', 'PQQ2', '07-OCT-2016');
insert into profile_movie values ('M116', 'PRR1', '08-JAN-2016');
insert into profile_movie values ('M115', 'PRR2', '09-FEB-2016');
insert into profile_movie values ('M114', 'PSS1', '10-MAR-2016');
insert into profile_movie values ('M113', 'PSS2', '11-APR-2016');
insert into profile_movie values ('M112', 'PTT1', '12-MAY-2016');
insert into profile_movie values ('M111', 'PTT2', '13-JUN-2016');
insert into profile_movie values ('M110', 'PUU1', '14-JUL-2016');
insert into profile_movie values ('M109', 'PUU2', '15-AUG-2016');
insert into profile_movie values ('M108', 'PVV1', '16-SEP-2016');
insert into profile_movie values ('M107', 'PVV2', '17-OCT-2016');
insert into profile_movie values ('M106', 'PWW1', '18-JAN-2016');
insert into profile_movie values ('M105', 'PWW2', '19-FEB-2016');
insert into profile_movie values ('M104', 'PXX1', '20-MAR-2016');
insert into profile_movie values ('M103', 'PXX2', '21-APR-2016');
insert into profile_movie values ('M102', 'PYY1', '22-MAY-2016');
insert into profile_movie values ('M101', 'PYY2', '23-JUN-2016');
insert into profile_movie values ('M101', 'PAAQ1', '24-JUL-2016');
insert into profile_movie values ('M102', 'PAAW2', '25-AUG-2016');
insert into profile_movie values ('M103', 'PBBE1', '26-SEP-2016');
insert into profile_movie values ('M104', 'PBBR2', '27-JAN-2016');
insert into profile_movie values ('M105', 'PCCT1', '28-FEB-2016');
insert into profile_movie values ('M106', 'PCCY2', '01-MAR-2016');
insert into profile_movie values ('M107', 'PDDU1', '02-APR-2016');
insert into profile_movie values ('M108', 'PDDI2', '03-MAY-2016');
insert into profile_movie values ('M109', 'PEEO1', '04-JUN-2016');
insert into profile_movie values ('M110', 'PEEP2', '05-JUL-2016');
insert into profile_movie values ('M111', 'PFFA1', '06-AUG-2016');
insert into profile_movie values ('M112', 'PFFS2', '07-SEP-2016');
insert into profile_movie values ('M113', 'PGGD1', '08-OCT-2016');
insert into profile_movie values ('M114', 'PGGF2', '09-JAN-2016');
insert into profile_movie values ('M115', 'PHHG1', '10-FEB-2016');
insert into profile_movie values ('M116', 'PHHH2', '11-MAR-2016');
insert into profile_movie values ('M117', 'PIIJ1', '12-APR-2016');
insert into profile_movie values ('M118', 'PIIK2', '13-MAY-2016');
insert into profile_movie values ('M119', 'PJJL1', '14-JUN-2016');
insert into profile_movie values ('M120', 'PJJZ2', '15-JUL-2016');
insert into profile_movie values ('M121', 'PKKX1', '16-AUG-2016');
insert into profile_movie values ('M122', 'PKKC2', '17-SEP-2016');
insert into profile_movie values ('M123', 'PLLV1', '18-OCT-2016');
insert into profile_movie values ('M124', 'PLLB2', '19-JAN-2016');
insert into profile_movie values ('M125', 'PMMN1', '20-FEB-2016');
insert into profile_movie values ('M126', 'PMMM2', '21-MAR-2016');
insert into profile_movie values ('M127', 'PNNQ1', '22-APR-2016');
insert into profile_movie values ('M128', 'PNNW2', '23-MAY-2016');
insert into profile_movie values ('M129', 'POOR1', '24-JUN-2016');
insert into profile_movie values ('M130', 'POOE2', '25-JUL-2016');
insert into profile_movie values ('M131', 'PPPT1', '26-AUG-2016');
insert into profile_movie values ('M132', 'PPPY2', '27-SEP-2016');
insert into profile_movie values ('M133', 'PQQU1', '28-JAN-2016');
insert into profile_movie values ('M134', 'PQQI2', '01-FEB-2016');
insert into profile_movie values ('M135', 'PRRO1', '02-MAR-2016');
insert into profile_movie values ('M136', 'PRRP2', '03-APR-2016');
insert into profile_movie values ('M137', 'PSSA1', '04-MAY-2016');
insert into profile_movie values ('M138', 'PSSS2', '05-JUN-2016');
insert into profile_movie values ('M139', 'PTTD1', '06-JUL-2016');
insert into profile_movie values ('M140', 'PTTF2', '07-AUG-2016');
insert into profile_movie values ('M141', 'PUUG1', '08-SEP-2016');
insert into profile_movie values ('M142', 'PUUH2', '09-OCT-2016');
insert into profile_movie values ('M143', 'PVVJ1', '10-JAN-2016');
insert into profile_movie values ('M144', 'PVVK2', '11-FEB-2016');
insert into profile_movie values ('M145', 'PWWL1', '12-MAR-2016');
insert into profile_movie values ('M146', 'PWWZ2', '13-APR-2016');
insert into profile_movie values ('M147', 'PXXC1', '14-MAY-2016');
insert into profile_movie values ('M148', 'PXXV2', '15-JUN-2016');
insert into profile_movie values ('M149', 'PYYX1', '16-JUL-2016');
insert into profile_movie values ('M150', 'PYYB2', '17-AUG-2016');
insert into profile_movie values ('M134', 'PAA1', '01-JAN-2016');
insert into profile_movie values ('M134', 'PAA2', '02-FEB-2016');
insert into profile_movie values ('M134', 'PBB1', '03-MAR-2016');
insert into profile_movie values ('M134', 'PBB2', '04-APR-2016');
insert into profile_movie values ('M134', 'PCC1', '05-MAY-2016');
insert into profile_movie values ('M134', 'PCC2', '06-JUN-2016');
insert into profile_movie values ('M134', 'PDD1', '07-JUL-2016');
insert into profile_movie values ('M134', 'PDD2', '08-AUG-2016');
insert into profile_movie values ('M134', 'PEE1', '09-SEP-2016');
insert into profile_movie values ('M134', 'PEE2', '10-OCT-2016');
insert into profile_movie values ('M134', 'PFF1', '11-AUG-2016');
insert into profile_movie values ('M134', 'PFF2', '12-MAY-2016');
insert into profile_movie values ('M134', 'PGG1', '13-JAN-2016');
insert into profile_movie values ('M134', 'PGG2', '14-FEB-2016');
insert into profile_movie values ('M134', 'PHH1', '15-MAR-2016');
insert into profile_movie values ('M133', 'PHH2', '16-APR-2016');
insert into profile_movie values ('M133', 'PII1', '17-MAY-2016');
insert into profile_movie values ('M131', 'PII2', '18-JUN-2016');
insert into profile_movie values ('M133', 'PJJ1', '19-JUL-2016');
insert into profile_movie values ('M133', 'PJJ2', '20-AUG-2016');
insert into profile_movie values ('M133', 'PKK1', '21-SEP-2016');
insert into profile_movie values ('M133', 'PKK2', '22-AUG-2016');
insert into profile_movie values ('M133', 'PLL1', '23-MAY-2016');
insert into profile_movie values ('M133', 'PLL2', '24-SEP-2016');
insert into profile_movie values ('M133', 'PMM1', '25-JAN-2016');
insert into profile_movie values ('M133', 'PMM2', '26-FEB-2016');
insert into profile_movie values ('M133', 'PNN1', '27-MAR-2016');
insert into profile_movie values ('M118', 'PNN2', '01-APR-2016');
insert into profile_movie values ('M118', 'POO1', '02-MAY-2016');
insert into profile_movie values ('M118', 'POO2', '03-JUN-2016');
insert into profile_movie values ('M118', 'PPP1', '04-JUL-2016');
insert into profile_movie values ('M118', 'PPP2', '05-AUG-2016');
insert into profile_movie values ('M117', 'PQQ1', '06-SEP-2016');
insert into profile_movie values ('M118', 'PQQ2', '07-OCT-2016');
insert into profile_movie values ('M118', 'PRR1', '08-JAN-2016');
insert into profile_movie values ('M118', 'PRR2', '09-FEB-2016');
insert into profile_movie values ('M118', 'PSS1', '10-MAR-2016');
insert into profile_movie values ('M118', 'PSS2', '11-APR-2016');
insert into profile_movie values ('M118', 'PTT1', '12-MAY-2016');
insert into profile_movie values ('M118', 'PTT2', '13-JUN-2016');
insert into profile_movie values ('M118', 'PUU1', '14-JUL-2016');
insert into profile_movie values ('M118', 'PUU2', '15-AUG-2016');
insert into profile_movie values ('M118', 'PVV1', '16-SEP-2016');
insert into profile_movie values ('M118', 'PVV2', '17-OCT-2016');
insert into profile_movie values ('M118', 'PWW1', '18-JAN-2016');
insert into profile_movie values ('M118', 'PWW2', '19-FEB-2016');
insert into profile_movie values ('M118', 'PXX1', '20-MAR-2016');
insert into profile_movie values ('M118', 'PXX2', '21-APR-2016');
insert into profile_movie values ('M118', 'PYY1', '22-MAY-2016');
insert into profile_movie values ('M109', 'PYY2', '23-JUN-2016');
insert into profile_movie values ('M109', 'PAAQ1', '24-JUL-2016');
insert into profile_movie values ('M109', 'PAAW2', '25-AUG-2016');
insert into profile_movie values ('M109', 'PBBE1', '26-SEP-2016');
insert into profile_movie values ('M109', 'PBBR2', '27-JAN-2016');
insert into profile_movie values ('M109', 'PCCT1', '28-FEB-2016');
insert into profile_movie values ('M109', 'PCCY2', '01-MAR-2016');
insert into profile_movie values ('M109', 'PDDU1', '02-APR-2016');
insert into profile_movie values ('M109', 'PDDI2', '03-MAY-2016');
insert into profile_movie values ('M101', 'PEEO1', '04-JUN-2016');
insert into profile_movie values ('M109', 'PEEP2', '05-JUL-2016');
insert into profile_movie values ('M110', 'PFFA1', '06-AUG-2016');
insert into profile_movie values ('M110', 'PFFS2', '07-SEP-2016');
insert into profile_movie values ('M110', 'PGGD1', '08-OCT-2016');
insert into profile_movie values ('M110', 'PGGF2', '09-JAN-2016');
insert into profile_movie values ('M110', 'PHHG1', '10-FEB-2016');
insert into profile_movie values ('M110', 'PHHH2', '11-MAR-2016');
insert into profile_movie values ('M110', 'PIIJ1', '12-APR-2016');
insert into profile_movie values ('M110', 'PIIK2', '13-MAY-2016');
insert into profile_movie values ('M110', 'PJJL1', '14-JUN-2016');
insert into profile_movie values ('M110', 'PJJZ2', '15-JUL-2016');
insert into profile_movie values ('M112', 'PKKX1', '16-AUG-2016');
insert into profile_movie values ('M112', 'PKKC2', '17-SEP-2016');
insert into profile_movie values ('M112', 'PLLV1', '18-OCT-2016');
insert into profile_movie values ('M112', 'PLLB2', '19-JAN-2016');
insert into profile_movie values ('M112', 'PMMN1', '20-FEB-2016');
insert into profile_movie values ('M112', 'PMMM2', '21-MAR-2016');
insert into profile_movie values ('M112', 'PNNQ1', '22-APR-2016');
insert into profile_movie values ('M112', 'PNNW2', '23-MAY-2016');
insert into profile_movie values ('M112', 'POOR1', '24-JUN-2016');
insert into profile_movie values ('M112', 'POOE2', '25-JUL-2016');
insert into profile_movie values ('M111', 'PPPT1', '26-AUG-2016');
insert into profile_movie values ('M111', 'PPPY2', '27-SEP-2016');
insert into profile_movie values ('M111', 'PQQU1', '28-JAN-2016');
insert into profile_movie values ('M111', 'PQQI2', '01-FEB-2016');
insert into profile_movie values ('M111', 'PRRO1', '02-MAR-2016');
insert into profile_movie values ('M111', 'PRRP2', '03-APR-2016');
insert into profile_movie values ('M111', 'PSSA1', '04-MAY-2016');
insert into profile_movie values ('M111', 'PSSS2', '05-JUN-2016');
insert into profile_movie values ('M111', 'PTTD1', '06-JUL-2016');
insert into profile_movie values ('M111', 'PTTF2', '07-AUG-2016');
insert into profile_movie values ('M111', 'PUUG1', '08-SEP-2016');
insert into profile_movie values ('M111', 'PUUH2', '09-OCT-2016');
insert into profile_movie values ('M111', 'PVVJ1', '10-JAN-2016');
insert into profile_movie values ('M111', 'PVVK2', '11-FEB-2016');
insert into profile_movie values ('M111', 'PWWL1', '12-MAR-2016');
insert into profile_movie values ('M111', 'PWWZ2', '13-APR-2016');
insert into profile_movie values ('M111', 'PXXC1', '14-MAY-2016');
insert into profile_movie values ('M111', 'PXXV2', '15-JUN-2016');
insert into profile_movie values ('M111', 'PYYX1', '16-JUL-2016');
insert into profile_movie values ('M111', 'PYYB2', '17-AUG-2016');

--profile_series('series_id', 'profile_id', 'accessed_date')--
insert into profile_series values ('S150', 'PAA1', '01-JAN-2016');
insert into profile_series values ('S149', 'PAA2', '02-FEB-2016');
insert into profile_series values ('S148', 'PBB1', '03-MAR-2016');
insert into profile_series values ('S147', 'PBB2', '04-APR-2016');
insert into profile_series values ('S146', 'PCC1', '05-MAY-2016');
insert into profile_series values ('S145', 'PCC2', '06-JUN-2016');
insert into profile_series values ('S144', 'PDD1', '07-JUL-2016');
insert into profile_series values ('S143', 'PDD2', '08-AUG-2016');
insert into profile_series values ('S142', 'PEE1', '09-SEP-2016');
insert into profile_series values ('S141', 'PEE2', '10-OCT-2016');
insert into profile_series values ('S140', 'PFF1', '11-AUG-2016');
insert into profile_series values ('S139', 'PFF2', '12-MAY-2016');
insert into profile_series values ('S138', 'PGG1', '13-JAN-2016');
insert into profile_series values ('S137', 'PGG2', '14-FEB-2016');
insert into profile_series values ('S136', 'PHH1', '15-MAR-2016');
insert into profile_series values ('S135', 'PHH2', '16-APR-2016');
insert into profile_series values ('S134', 'PII1', '17-MAY-2016');
insert into profile_series values ('S133', 'PII2', '18-JUN-2016');
insert into profile_series values ('S132', 'PJJ1', '19-JUL-2016');
insert into profile_series values ('S131', 'PJJ2', '20-AUG-2016');
insert into profile_series values ('S130', 'PKK1', '21-SEP-2016');
insert into profile_series values ('S129', 'PKK2', '22-AUG-2016');
insert into profile_series values ('S128', 'PLL1', '23-MAY-2016');
insert into profile_series values ('S127', 'PLL2', '24-SEP-2016');
insert into profile_series values ('S126', 'PMM1', '25-JAN-2016');
insert into profile_series values ('S125', 'PMM2', '26-FEB-2016');
insert into profile_series values ('S124', 'PNN1', '27-MAR-2016');
insert into profile_series values ('S123', 'PNN2', '01-APR-2016');
insert into profile_series values ('S122', 'POO1', '02-MAY-2016');
insert into profile_series values ('S121', 'POO2', '03-JUN-2016');
insert into profile_series values ('S120', 'PPP1', '04-JUL-2016');
insert into profile_series values ('S119', 'PPP2', '05-AUG-2016');
insert into profile_series values ('S118', 'PQQ1', '06-SEP-2016');
insert into profile_series values ('S117', 'PQQ2', '07-OCT-2016');
insert into profile_series values ('S116', 'PRR1', '08-JAN-2016');
insert into profile_series values ('S115', 'PRR2', '09-FEB-2016');
insert into profile_series values ('S114', 'PSS1', '10-MAR-2016');
insert into profile_series values ('S113', 'PSS2', '11-APR-2016');
insert into profile_series values ('S112', 'PTT1', '12-MAY-2016');
insert into profile_series values ('S111', 'PTT2', '13-JUN-2016');
insert into profile_series values ('S110', 'PUU1', '14-JUL-2016');
insert into profile_series values ('S109', 'PUU2', '15-AUG-2016');
insert into profile_series values ('S108', 'PVV1', '16-SEP-2016');
insert into profile_series values ('S107', 'PVV2', '17-OCT-2016');
insert into profile_series values ('S106', 'PWW1', '18-JAN-2016');
insert into profile_series values ('S105', 'PWW2', '19-FEB-2016');
insert into profile_series values ('S104', 'PXX1', '20-MAR-2016');
insert into profile_series values ('S103', 'PXX2', '21-APR-2016');
insert into profile_series values ('S102', 'PYY1', '22-MAY-2016');
insert into profile_series values ('S101', 'PYY2', '23-JUN-2016');
insert into profile_series values ('S101', 'PAAQ1', '24-JUL-2016');
insert into profile_series values ('S102', 'PAAW2', '25-AUG-2016');
insert into profile_series values ('S103', 'PBBE1', '26-SEP-2016');
insert into profile_series values ('S104', 'PBBR2', '27-JAN-2016');
insert into profile_series values ('S105', 'PCCT1', '28-FEB-2016');
insert into profile_series values ('S106', 'PCCY2', '01-MAR-2016');
insert into profile_series values ('S107', 'PDDU1', '02-APR-2016');
insert into profile_series values ('S108', 'PDDI2', '03-MAY-2016');
insert into profile_series values ('S109', 'PEEO1', '04-JUN-2016');
insert into profile_series values ('S110', 'PEEP2', '05-JUL-2016');
insert into profile_series values ('S111', 'PFFA1', '06-AUG-2016');
insert into profile_series values ('S112', 'PFFS2', '07-SEP-2016');
insert into profile_series values ('S113', 'PGGD1', '08-OCT-2016');
insert into profile_series values ('S114', 'PGGF2', '09-JAN-2016');
insert into profile_series values ('S115', 'PHHG1', '10-FEB-2016');
insert into profile_series values ('S116', 'PHHH2', '11-MAR-2016');
insert into profile_series values ('S117', 'PIIJ1', '12-APR-2016');
insert into profile_series values ('S118', 'PIIK2', '13-MAY-2016');
insert into profile_series values ('S119', 'PJJL1', '14-JUN-2016');
insert into profile_series values ('S120', 'PJJZ2', '15-JUL-2016');
insert into profile_series values ('S121', 'PKKX1', '16-AUG-2016');
insert into profile_series values ('S122', 'PKKC2', '17-SEP-2016');
insert into profile_series values ('S123', 'PLLV1', '18-OCT-2016');
insert into profile_series values ('S124', 'PLLB2', '19-JAN-2016');
insert into profile_series values ('S125', 'PMMN1', '20-FEB-2016');
insert into profile_series values ('S126', 'PMMM2', '21-MAR-2016');
insert into profile_series values ('S127', 'PNNQ1', '22-APR-2016');
insert into profile_series values ('S128', 'PNNW2', '23-MAY-2016');
insert into profile_series values ('S129', 'POOR1', '24-JUN-2016');
insert into profile_series values ('S130', 'POOE2', '25-JUL-2016');
insert into profile_series values ('S131', 'PPPT1', '26-AUG-2016');
insert into profile_series values ('S132', 'PPPY2', '27-SEP-2016');
insert into profile_series values ('S133', 'PQQU1', '28-JAN-2016');
insert into profile_series values ('S134', 'PQQI2', '01-FEB-2016');
insert into profile_series values ('S135', 'PRRO1', '02-MAR-2016');
insert into profile_series values ('S136', 'PRRP2', '03-APR-2016');
insert into profile_series values ('S137', 'PSSA1', '04-MAY-2016');
insert into profile_series values ('S138', 'PSSS2', '05-JUN-2016');
insert into profile_series values ('S139', 'PTTD1', '06-JUL-2016');
insert into profile_series values ('S140', 'PTTF2', '07-AUG-2016');
insert into profile_series values ('S141', 'PUUG1', '08-SEP-2016');
insert into profile_series values ('S142', 'PUUH2', '09-OCT-2016');
insert into profile_series values ('S143', 'PVVJ1', '10-JAN-2016');
insert into profile_series values ('S144', 'PVVK2', '11-FEB-2016');
insert into profile_series values ('S145', 'PWWL1', '12-MAR-2016');
insert into profile_series values ('S146', 'PWWZ2', '13-APR-2016');
insert into profile_series values ('S147', 'PXXC1', '14-MAY-2016');
insert into profile_series values ('S148', 'PXXV2', '15-JUN-2016');
insert into profile_series values ('S149', 'PYYX1', '16-JUL-2016');
insert into profile_series values ('S150', 'PYYB2', '17-AUG-2016');
insert into profile_series values ('S134', 'PAA1', '01-JAN-2016');
insert into profile_series values ('S134', 'PAA2', '02-FEB-2016');
insert into profile_series values ('S134', 'PBB1', '03-MAR-2016');
insert into profile_series values ('S134', 'PBB2', '04-APR-2016');
insert into profile_series values ('S134', 'PCC1', '05-MAY-2016');
insert into profile_series values ('S134', 'PCC2', '06-JUN-2016');
insert into profile_series values ('S134', 'PDD1', '07-JUL-2016');
insert into profile_series values ('S134', 'PDD2', '08-AUG-2016');
insert into profile_series values ('S134', 'PEE1', '09-SEP-2016');
insert into profile_series values ('S134', 'PEE2', '10-OCT-2016');
insert into profile_series values ('S134', 'PFF1', '11-AUG-2016');
insert into profile_series values ('S134', 'PFF2', '12-MAY-2016');
insert into profile_series values ('S134', 'PGG1', '13-JAN-2016');
insert into profile_series values ('S134', 'PGG2', '14-FEB-2016');
insert into profile_series values ('S134', 'PHH1', '15-MAR-2016');
insert into profile_series values ('S133', 'PHH2', '16-APR-2016');
insert into profile_series values ('S133', 'PII1', '17-MAY-2016');
insert into profile_series values ('S131', 'PII2', '18-JUN-2016');
insert into profile_series values ('S133', 'PJJ1', '19-JUL-2016');
insert into profile_series values ('S133', 'PJJ2', '20-AUG-2016');
insert into profile_series values ('S133', 'PKK1', '21-SEP-2016');
insert into profile_series values ('S133', 'PKK2', '22-AUG-2016');
insert into profile_series values ('S133', 'PLL1', '23-MAY-2016');
insert into profile_series values ('S133', 'PLL2', '24-SEP-2016');
insert into profile_series values ('S133', 'PMM1', '25-JAN-2016');
insert into profile_series values ('S133', 'PMM2', '26-FEB-2016');
insert into profile_series values ('S133', 'PNN1', '27-MAR-2016');
insert into profile_series values ('S118', 'PNN2', '01-APR-2016');
insert into profile_series values ('S118', 'POO1', '02-MAY-2016');
insert into profile_series values ('S118', 'POO2', '03-JUN-2016');
insert into profile_series values ('S118', 'PPP1', '04-JUL-2016');
insert into profile_series values ('S118', 'PPP2', '05-AUG-2016');
insert into profile_series values ('S117', 'PQQ1', '06-SEP-2016');
insert into profile_series values ('S118', 'PQQ2', '07-OCT-2016');
insert into profile_series values ('S118', 'PRR1', '08-JAN-2016');
insert into profile_series values ('S118', 'PRR2', '09-FEB-2016');
insert into profile_series values ('S118', 'PSS1', '10-MAR-2016');
insert into profile_series values ('S118', 'PSS2', '11-APR-2016');
insert into profile_series values ('S118', 'PTT1', '12-MAY-2016');
insert into profile_series values ('S118', 'PTT2', '13-JUN-2016');
insert into profile_series values ('S118', 'PUU1', '14-JUL-2016');
insert into profile_series values ('S118', 'PUU2', '15-AUG-2016');
insert into profile_series values ('S118', 'PVV1', '16-SEP-2016');
insert into profile_series values ('S118', 'PVV2', '17-OCT-2016');
insert into profile_series values ('S118', 'PWW1', '18-JAN-2016');
insert into profile_series values ('S118', 'PWW2', '19-FEB-2016');
insert into profile_series values ('S118', 'PXX1', '20-MAR-2016');
insert into profile_series values ('S118', 'PXX2', '21-APR-2016');
insert into profile_series values ('S118', 'PYY1', '22-MAY-2016');
insert into profile_series values ('S109', 'PYY2', '23-JUN-2016');
insert into profile_series values ('S109', 'PAAQ1', '24-JUL-2016');
insert into profile_series values ('S109', 'PAAW2', '25-AUG-2016');
insert into profile_series values ('S109', 'PBBE1', '26-SEP-2016');
insert into profile_series values ('S109', 'PBBR2', '27-JAN-2016');
insert into profile_series values ('S109', 'PCCT1', '28-FEB-2016');
insert into profile_series values ('S109', 'PCCY2', '01-MAR-2016');
insert into profile_series values ('S109', 'PDDU1', '02-APR-2016');
insert into profile_series values ('S109', 'PDDI2', '03-MAY-2016');
insert into profile_series values ('S101', 'PEEO1', '04-JUN-2016');
insert into profile_series values ('S109', 'PEEP2', '05-JUL-2016');
insert into profile_series values ('S110', 'PFFA1', '06-AUG-2016');
insert into profile_series values ('S110', 'PFFS2', '07-SEP-2016');
insert into profile_series values ('S110', 'PGGD1', '08-OCT-2016');
insert into profile_series values ('S110', 'PGGF2', '09-JAN-2016');
insert into profile_series values ('S110', 'PHHG1', '10-FEB-2016');
insert into profile_series values ('S110', 'PHHH2', '11-MAR-2016');
insert into profile_series values ('S110', 'PIIJ1', '12-APR-2016');
insert into profile_series values ('S110', 'PIIK2', '13-MAY-2016');
insert into profile_series values ('S110', 'PJJL1', '14-JUN-2016');
insert into profile_series values ('S110', 'PJJZ2', '15-JUL-2016');
insert into profile_series values ('S112', 'PKKX1', '16-AUG-2016');
insert into profile_series values ('S112', 'PKKC2', '17-SEP-2016');
insert into profile_series values ('S112', 'PLLV1', '18-OCT-2016');
insert into profile_series values ('S112', 'PLLB2', '19-JAN-2016');
insert into profile_series values ('S112', 'PMMN1', '20-FEB-2016');
insert into profile_series values ('S112', 'PMMM2', '21-MAR-2016');
insert into profile_series values ('S112', 'PNNQ1', '22-APR-2016');
insert into profile_series values ('S112', 'PNNW2', '23-MAY-2016');
insert into profile_series values ('S112', 'POOR1', '24-JUN-2016');
insert into profile_series values ('S112', 'POOE2', '25-JUL-2016');
insert into profile_series values ('S111', 'PPPT1', '26-AUG-2016');
insert into profile_series values ('S111', 'PPPY2', '27-SEP-2016');
insert into profile_series values ('S111', 'PQQU1', '28-JAN-2016');
insert into profile_series values ('S111', 'PQQI2', '01-FEB-2016');
insert into profile_series values ('S111', 'PRRO1', '02-MAR-2016');
insert into profile_series values ('S111', 'PRRP2', '03-APR-2016');
insert into profile_series values ('S111', 'PSSA1', '04-MAY-2016');
insert into profile_series values ('S111', 'PSSS2', '05-JUN-2016');
insert into profile_series values ('S111', 'PTTD1', '06-JUL-2016');
insert into profile_series values ('S111', 'PTTF2', '07-AUG-2016');
insert into profile_series values ('S111', 'PUUG1', '08-SEP-2016');
insert into profile_series values ('S111', 'PUUH2', '09-OCT-2016');
insert into profile_series values ('S111', 'PVVJ1', '10-JAN-2016');
insert into profile_series values ('S111', 'PVVK2', '11-FEB-2016');
insert into profile_series values ('S111', 'PWWL1', '12-MAR-2016');
insert into profile_series values ('S111', 'PWWZ2', '13-APR-2016');
insert into profile_series values ('S111', 'PXXC1', '14-MAY-2016');
insert into profile_series values ('S111', 'PXXV2', '15-JUN-2016');
insert into profile_series values ('S111', 'PYYX1', '16-JUL-2016');
insert into profile_series values ('S111', 'PYYB2', '17-AUG-2016');



--movie_watchlist('profile_id', 'movie_id')--
insert into movie_watchlist values ('M101', 'PAA1');
insert into movie_watchlist values ('M101', 'PAA2');
insert into movie_watchlist values ('M101', 'PBB1');
insert into movie_watchlist values ('M101', 'PBB2');
insert into movie_watchlist values ('M101', 'PCC1');
insert into movie_watchlist values ('M101', 'PCC2');
insert into movie_watchlist values ('M101', 'PDD1');
insert into movie_watchlist values ('M101', 'PDD2');
insert into movie_watchlist values ('M101', 'PEE1');
insert into movie_watchlist values ('M101', 'PEE2');
insert into movie_watchlist values ('M101', 'PFF1');
insert into movie_watchlist values ('M101', 'PFF2');
insert into movie_watchlist values ('M101', 'PGG1');
insert into movie_watchlist values ('M101', 'PGG2');
insert into movie_watchlist values ('M101', 'PHH1');
insert into movie_watchlist values ('M101', 'PHH2');
insert into movie_watchlist values ('M101', 'PII1');
insert into movie_watchlist values ('M101', 'PII2');
insert into movie_watchlist values ('M101', 'PJJ1');
insert into movie_watchlist values ('M101', 'PJJ2');
insert into movie_watchlist values ('M101', 'PKK1');
insert into movie_watchlist values ('M101', 'PKK2');
insert into movie_watchlist values ('M101', 'PLL1');
insert into movie_watchlist values ('M101', 'PLL2');
insert into movie_watchlist values ('M101', 'PMM1');
insert into movie_watchlist values ('M105', 'PMM2');
insert into movie_watchlist values ('M105', 'PNN1');
insert into movie_watchlist values ('M105', 'PNN2');
insert into movie_watchlist values ('M105', 'POO1');
insert into movie_watchlist values ('M105', 'POO2');
insert into movie_watchlist values ('M105', 'PPP1');
insert into movie_watchlist values ('M105', 'PPP2');
insert into movie_watchlist values ('M105', 'PQQ1');
insert into movie_watchlist values ('M105', 'PQQ2');
insert into movie_watchlist values ('M105', 'PRR1');
insert into movie_watchlist values ('M105', 'PRR2');
insert into movie_watchlist values ('M105', 'PSS1');
insert into movie_watchlist values ('M105', 'PSS2');
insert into movie_watchlist values ('M105', 'PTT1');
insert into movie_watchlist values ('M105', 'PTT2');
insert into movie_watchlist values ('M105', 'PUU1');
insert into movie_watchlist values ('M105', 'PUU2');
insert into movie_watchlist values ('M105', 'PVV1');
insert into movie_watchlist values ('M105', 'PVV2');
insert into movie_watchlist values ('M105', 'PWW1');
insert into movie_watchlist values ('M105', 'PWW2');
insert into movie_watchlist values ('M105', 'PXX1');
insert into movie_watchlist values ('M105', 'PXX2');
insert into movie_watchlist values ('M105', 'PYY1');
insert into movie_watchlist values ('M105', 'PYY2');
insert into movie_watchlist values ('M108', 'PAAQ1');
insert into movie_watchlist values ('M108', 'PAAW2');
insert into movie_watchlist values ('M108', 'PBBE1');
insert into movie_watchlist values ('M108', 'PBBR2');
insert into movie_watchlist values ('M108', 'PCCT1');
insert into movie_watchlist values ('M108', 'PCCY2');
insert into movie_watchlist values ('M108', 'PDDU1');
insert into movie_watchlist values ('M108', 'PDDI2');
insert into movie_watchlist values ('M108', 'PEEO1');
insert into movie_watchlist values ('M108', 'PEEP2');
insert into movie_watchlist values ('M108', 'PFFA1');
insert into movie_watchlist values ('M108', 'PFFS2');
insert into movie_watchlist values ('M108', 'PGGD1');
insert into movie_watchlist values ('M108', 'PGGF2');
insert into movie_watchlist values ('M108', 'PHHG1');
insert into movie_watchlist values ('M108', 'PHHH2');
insert into movie_watchlist values ('M108', 'PIIJ1');
insert into movie_watchlist values ('M108', 'PIIK2');
insert into movie_watchlist values ('M108', 'PJJL1');
insert into movie_watchlist values ('M108', 'PJJZ2');
insert into movie_watchlist values ('M108', 'PKKX1');
insert into movie_watchlist values ('M108', 'PKKC2');
insert into movie_watchlist values ('M108', 'PLLV1');
insert into movie_watchlist values ('M108', 'PLLB2');
insert into movie_watchlist values ('M108', 'PMMN1');
insert into movie_watchlist values ('M128', 'PMMM2');
insert into movie_watchlist values ('M128', 'PNNQ1');
insert into movie_watchlist values ('M128', 'PNNW2');
insert into movie_watchlist values ('M128', 'POOR1');
insert into movie_watchlist values ('M128', 'POOE2');
insert into movie_watchlist values ('M128', 'PPPT1');
insert into movie_watchlist values ('M128', 'PPPY2');
insert into movie_watchlist values ('M128', 'PQQU1');
insert into movie_watchlist values ('M128', 'PQQI2');
insert into movie_watchlist values ('M128', 'PRRO1');
insert into movie_watchlist values ('M128', 'PRRP2');
insert into movie_watchlist values ('M128', 'PSSA1');
insert into movie_watchlist values ('M128', 'PSSS2');
insert into movie_watchlist values ('M128', 'PTTD1');
insert into movie_watchlist values ('M128', 'PTTF2');
insert into movie_watchlist values ('M128', 'PUUG1');
insert into movie_watchlist values ('M128', 'PUUH2');
insert into movie_watchlist values ('M128', 'PVVJ1');
insert into movie_watchlist values ('M128', 'PVVK2');
insert into movie_watchlist values ('M128', 'PWWL1');
insert into movie_watchlist values ('M128', 'PWWZ2');
insert into movie_watchlist values ('M128', 'PXXC1');
insert into movie_watchlist values ('M128', 'PXXV2');
insert into movie_watchlist values ('M128', 'PYYX1');
insert into movie_watchlist values ('M128', 'PYYB2');
insert into movie_watchlist values ('M111', 'PAAQ2');
insert into movie_watchlist values ('M108', 'PAAQ2');
insert into movie_watchlist values ('M104', 'PAAQ2');
insert into movie_watchlist values ('M103', 'PAAQ2');

--series_watchlist('profile_id', 'series_id')--
insert into series_watchlist values ('S101', 'PAA1');
insert into series_watchlist values ('S101', 'PAA2');
insert into series_watchlist values ('S101', 'PBB1');
insert into series_watchlist values ('S101', 'PBB2');
insert into series_watchlist values ('S101', 'PCC1');
insert into series_watchlist values ('S101', 'PCC2');
insert into series_watchlist values ('S101', 'PDD1');
insert into series_watchlist values ('S101', 'PDD2');
insert into series_watchlist values ('S101', 'PEE1');
insert into series_watchlist values ('S101', 'PEE2');
insert into series_watchlist values ('S101', 'PFF1');
insert into series_watchlist values ('S101', 'PFF2');
insert into series_watchlist values ('S101', 'PGG1');
insert into series_watchlist values ('S101', 'PGG2');
insert into series_watchlist values ('S101', 'PHH1');
insert into series_watchlist values ('S101', 'PHH2');
insert into series_watchlist values ('S101', 'PII1');
insert into series_watchlist values ('S101', 'PII2');
insert into series_watchlist values ('S101', 'PJJ1');
insert into series_watchlist values ('S101', 'PJJ2');
insert into series_watchlist values ('S101', 'PKK1');
insert into series_watchlist values ('S101', 'PKK2');
insert into series_watchlist values ('S101', 'PLL1');
insert into series_watchlist values ('S101', 'PLL2');
insert into series_watchlist values ('S101', 'PMM1');
insert into series_watchlist values ('S105', 'PMM2');
insert into series_watchlist values ('S105', 'PNN1');
insert into series_watchlist values ('S105', 'PNN2');
insert into series_watchlist values ('S105', 'POO1');
insert into series_watchlist values ('S105', 'POO2');
insert into series_watchlist values ('S105', 'PPP1');
insert into series_watchlist values ('S105', 'PPP2');
insert into series_watchlist values ('S105', 'PQQ1');
insert into series_watchlist values ('S105', 'PQQ2');
insert into series_watchlist values ('S105', 'PRR1');
insert into series_watchlist values ('S105', 'PRR2');
insert into series_watchlist values ('S105', 'PSS1');
insert into series_watchlist values ('S105', 'PSS2');
insert into series_watchlist values ('S105', 'PTT1');
insert into series_watchlist values ('S105', 'PTT2');
insert into series_watchlist values ('S105', 'PUU1');
insert into series_watchlist values ('S105', 'PUU2');
insert into series_watchlist values ('S105', 'PVV1');
insert into series_watchlist values ('S105', 'PVV2');
insert into series_watchlist values ('S105', 'PWW1');
insert into series_watchlist values ('S105', 'PWW2');
insert into series_watchlist values ('S105', 'PXX1');
insert into series_watchlist values ('S105', 'PXX2');
insert into series_watchlist values ('S105', 'PYY1');
insert into series_watchlist values ('S105', 'PYY2');
insert into series_watchlist values ('S108', 'PAAQ1');
insert into series_watchlist values ('S108', 'PAAW2');
insert into series_watchlist values ('S108', 'PBBE1');
insert into series_watchlist values ('S108', 'PBBR2');
insert into series_watchlist values ('S108', 'PCCT1');
insert into series_watchlist values ('S108', 'PCCY2');
insert into series_watchlist values ('S108', 'PDDU1');
insert into series_watchlist values ('S108', 'PDDI2');
insert into series_watchlist values ('S108', 'PEEO1');
insert into series_watchlist values ('S108', 'PEEP2');
insert into series_watchlist values ('S108', 'PFFA1');
insert into series_watchlist values ('S108', 'PFFS2');
insert into series_watchlist values ('S108', 'PGGD1');
insert into series_watchlist values ('S108', 'PGGF2');
insert into series_watchlist values ('S108', 'PHHG1');
insert into series_watchlist values ('S108', 'PHHH2');
insert into series_watchlist values ('S108', 'PIIJ1');
insert into series_watchlist values ('S108', 'PIIK2');
insert into series_watchlist values ('S108', 'PJJL1');
insert into series_watchlist values ('S108', 'PJJZ2');
insert into series_watchlist values ('S108', 'PKKX1');
insert into series_watchlist values ('S108', 'PKKC2');
insert into series_watchlist values ('S108', 'PLLV1');
insert into series_watchlist values ('S108', 'PLLB2');
insert into series_watchlist values ('S108', 'PMMN1');
insert into series_watchlist values ('S128', 'PMMM2');
insert into series_watchlist values ('S128', 'PNNQ1');
insert into series_watchlist values ('S128', 'PNNW2');
insert into series_watchlist values ('S128', 'POOR1');
insert into series_watchlist values ('S128', 'POOE2');
insert into series_watchlist values ('S128', 'PPPT1');
insert into series_watchlist values ('S128', 'PPPY2');
insert into series_watchlist values ('S128', 'PQQU1');
insert into series_watchlist values ('S128', 'PQQI2');
insert into series_watchlist values ('S128', 'PRRO1');
insert into series_watchlist values ('S128', 'PRRP2');
insert into series_watchlist values ('S128', 'PSSA1');
insert into series_watchlist values ('S128', 'PSSS2');
insert into series_watchlist values ('S128', 'PTTD1');
insert into series_watchlist values ('S128', 'PTTF2');
insert into series_watchlist values ('S128', 'PUUG1');
insert into series_watchlist values ('S128', 'PUUH2');
insert into series_watchlist values ('S128', 'PVVJ1');
insert into series_watchlist values ('S128', 'PVVK2');
insert into series_watchlist values ('S128', 'PWWL1');
insert into series_watchlist values ('S128', 'PWWZ2');
insert into series_watchlist values ('S128', 'PXXC1');
insert into series_watchlist values ('S128', 'PXXV2');
insert into series_watchlist values ('S128', 'PYYX1');
insert into series_watchlist values ('S128', 'PYYB2');
insert into series_watchlist values ('S102', 'PAAQ2');
insert into series_watchlist values ('S104', 'PAAQ2');
insert into series_watchlist values ('S108', 'PAAQ2');
insert into series_watchlist values ('S112', 'PAAQ2');



--movie_watchlist('profile_id', 'movie_id')--
--insert into series values ('S150', 'Nature', 'Documentary', 4.5, '23-MAR-2013');
--series_watchlist('profile_id', 'series_id')--
select * from tab;
select * from customer;
select * from profile;-- where PROFILE_ID='PXXV2';
select * from movie;
select * from series;-- where SERIES_ID='S150';
select * from profile_series;-- where ACCESSED_DATE='15-JUN-2016';
select * from profile_movie;
--alter table  watchlist_series rename to profile_series;
--alter table  watchlist_movie rename to  profile_movie;
-----------------------------------------------------------------------------------------
--User AAQ1 having multiple profiles
insert into profile values ('AAQ1', 'PAAQ2', 'Alley');
insert into profile values ('AAQ1', 'PAAQ3', 'Alley');
insert into profile values ('AAQ1', 'PAAQ4', 'Alley');

--Insert data into PROFILE_MOVIE
insert into PROFILE_MOVIE values ('M111', 'PAAQ2', '4-JUL-2006');
insert into PROFILE_MOVIE values ('M108', 'PAAQ2', '14-AUG-2010');
insert into PROFILE_MOVIE values ('M104', 'PAAQ2', '2-JAN-2012');
insert into PROFILE_MOVIE values ('M103', 'PAAQ2', '11-FEB-2000');

--Insert data into PROFILE_SERIES
insert into PROFILE_SERIES values ('S102', 'PAAQ2', '4-JUL-2011');
insert into PROFILE_SERIES values ('S104', 'PAAQ2', '14-JAN-2014');
insert into PROFILE_SERIES values ('S108', 'PAAQ2', '5-DEC-2012');
insert into PROFILE_SERIES values ('S112', 'PAAQ2', '19-OCT-2010');

--Insert data in watchlist_movie
insert into MOVIE_WATCHLIST values ('M101', 'PAAQ1');
insert into MOVIE_WATCHLIST values ('M121', 'PAAQ1');
insert into MOVIE_WATCHLIST values ('M127', 'PAAQ1');
insert into MOVIE_WATCHLIST values ('M129', 'PAAQ1');

insert into MOVIE_WATCHLIST values ('M111', 'PAAQ2');
insert into MOVIE_WATCHLIST values ('M108', 'PAAQ2');
insert into MOVIE_WATCHLIST values ('M104', 'PAAQ2');
insert into MOVIE_WATCHLIST values ('M103', 'PAAQ2');

insert into MOVIE_WATCHLIST values ('M107', 'PAAQ3');
insert into MOVIE_WATCHLIST values ('M116', 'PAAQ3');
insert into MOVIE_WATCHLIST values ('M117', 'PAAQ3');
insert into MOVIE_WATCHLIST values ('M119', 'PAAQ3');

insert into MOVIE_WATCHLIST values ('M101', 'PAAQ4');
insert into MOVIE_WATCHLIST values ('M118', 'PAAQ4');
insert into MOVIE_WATCHLIST values ('M124', 'PAAQ4');
insert into MOVIE_WATCHLIST values ('M130', 'PAAQ4');

--Insert data in watchlist_Series
insert into SERIES_WATCHLIST values ('S112', 'PAAQ1');
insert into SERIES_WATCHLIST values ('S124', 'PAAQ1');
insert into SERIES_WATCHLIST values ('S117', 'PAAQ1');
insert into SERIES_WATCHLIST values ('S106', 'PAAQ1');

insert into SERIES_WATCHLIST values ('S109', 'PAAQ2');
insert into SERIES_WATCHLIST values ('S110', 'PAAQ2');
insert into SERIES_WATCHLIST values ('S126', 'PAAQ2');
insert into SERIES_WATCHLIST values ('S129', 'PAAQ2');

insert into SERIES_WATCHLIST values ('S119', 'PAAQ3');
insert into SERIES_WATCHLIST values ('S111', 'PAAQ3');
insert into SERIES_WATCHLIST values ('S122', 'PAAQ3');
insert into SERIES_WATCHLIST values ('S125', 'PAAQ3');

insert into SERIES_WATCHLIST values ('S121', 'PAAQ4');
insert into SERIES_WATCHLIST values ('S105', 'PAAQ4');
insert into SERIES_WATCHLIST values ('S101', 'PAAQ4');
insert into SERIES_WATCHLIST values ('S118', 'PAAQ4');
----------------------------------------------------------------------------------------

--Movie Watchlist
select  distinct (M.Name),PM.ACCESSED_DATE,  M.Rating, M.Genre as "Movie Genre"
from  PROFILE_MOVIE PM, Series S, Movie M, Profile P, CUSTOMER C
where M.Movie_ID=PM.Movie_ID and  P.PROFILE_ID=PM.PROFILE_ID and C.USER_ID=P.USER_ID and C.F_NAME='Alley' and C.L_NAME='Smith';

--Series Watchlist 
select  distinct S.Name,PS.ACCESSED_DATE, S.Rating, S.Genre as "Series Genre"
from PROFILE_SERIES PS,  Series S, Movie M, Profile P, CUSTOMER C
where S.Series_ID=PS.Series_ID  and C.USER_ID=P.USER_ID and C.F_NAME='Alley' and C.L_NAME='Smith';

--Profile Series Watchlist 
select  distinct S.Name,PS.ACCESSED_DATE, S.Rating, S.Genre as "Series Genre"
from PROFILE_SERIES PS, Series S, Movie M, Profile P, CUSTOMER C
where S.Series_ID=PS.Series_ID and  C.USER_ID=P.USER_ID and P.PROFILE_ID='PAAQ2';

--Profile Movie Watchlist
select  distinct (M.Name),PM.ACCESSED_DATE,  M.Rating, M.Genre as "Movie Genre"
from PROFILE_MOVIE PM, Series S, Movie M, Profile P, CUSTOMER C
where M.Movie_ID=PM.Movie_ID and   C.USER_ID=P.USER_ID and P.PROFILE_ID='PAAQ2';


--Customer details
select *
from customer;

--User Profile
select C.F_NAME,C.L_NAME,C.PLAN,C.USER_ID,P.PROFILE_ID
from Customer C, Profile P
where P.USER_ID = C.USER_ID and C.F_NAME='Alley';

--Movies relased between given year
select NAME ,RATING,RELEASED_DATE
from Movie
where RELEASED_DATE BETWEEN '01-JAN-2000' and '31-DEC-2016'
order by RELEASED_DATE;


--Total users
select count(*) "Number of Customer" from CUSTOMER;

--Total Movies
select count(*) "Number of Movie" from MOVIE;

--Total Series
select count(*) as "Number of Series" from SERIES;

--Series and Episodes
select S.NAME,E.NAME,E.EPISODE_NO,S.GENRE,S.RATING,S.RELEASED_DATE
from Series S, Episode E
where S.SERIES_ID = E.SERIES_ID and S.NAME='Kramer'
order by S.RELEASED_DATE;

--Movies by Released Date
select NAME,GENRE,RATING,RELEASED_DATE as "Released Date"
from Movie
order by RELEASED_DATE;

--Movie by Rating
select NAME,GENRE,RATING,RELEASED_DATE as "Released Date"
from Movie
order by RATING;

--Movie Having Rating greater than the average rating of total movies
select NAME,GENRE,RATING
from Movie where RATING > (select avg(rating) from MOVIE)
order by RATING;
select * from tab;

--Customer personal list of Movies 
select  distinct (M.Name),M.RELEASED_DATE,  M.Rating, M.Genre as "Movie Genre"
from   Movie M, Profile P, CUSTOMER C, MOVIE_WATCHLIST MW
where M.Movie_ID=MW.Movie_ID and  P.PROFILE_ID=MW.PROFILE_ID and C.USER_ID=P.USER_ID and C.F_NAME='Alley' and C.L_NAME='Smith';

--Customer Profile personal list of Movies 
select  distinct (M.Name),M.RELEASED_DATE,  M.Rating, M.Genre as "Movie Genre"
from   Movie M, Profile P, CUSTOMER C, MOVIE_WATCHLIST MW
where M.Movie_ID=MW.Movie_ID and  P.PROFILE_ID=MW.PROFILE_ID and C.USER_ID=P.USER_ID and P.PROFILE_ID='PAAQ1';


--Customer personal list of Series 
select  distinct (S.Name) ,S.RELEASED_DATE,  S.Rating, S.Genre as "Series Genre"
from   Series S, Profile P, CUSTOMER C, Series_WATCHLIST SW
where S.SERIES_ID=SW.SERIES_ID and  P.PROFILE_ID=SW.PROFILE_ID and C.USER_ID=P.USER_ID and C.F_NAME='Alley' and C.L_NAME='Smith';

--Customer Profile personal list of Series 
select  distinct (S.Name) ,S.RELEASED_DATE,  S.Rating, S.Genre as "Series Genre"
from   Series S, Profile P, CUSTOMER C, Series_WATCHLIST SW
where S.SERIES_ID=SW.SERIES_ID and  P.PROFILE_ID=SW.PROFILE_ID and C.USER_ID=P.USER_ID and P.PROFILE_ID='PAAQ1';
