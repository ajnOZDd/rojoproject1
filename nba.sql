create database nba;
\c nba;

create table equipe(
    idEquipe serial PRIMARY KEY,
    nom varchar(100),
    abreviation(5)
);

create table joueur(
    idJoueur serial PRIMARY KEY,
    nom varchar(100),
    prenom varchar(100),
    idEquipe int references equipe(idEquipe)
);

create table match(
    idMatch serial PRIMARY KEY,
    equipeDomicile int references equipe(idEquipe),
    equipeExterieure int references equipe(idEquipe)
);

create table joueur_stat_match(
    idJoueur int references joueur(idJoueur),
    idMatch int references match(idMatch),
    points int,
    rebond int,
    passe_decisive int,
    3Ptire int,
    3Pmarque int,
    LFtire int,
    LFmarque int,
    minutes int
);

