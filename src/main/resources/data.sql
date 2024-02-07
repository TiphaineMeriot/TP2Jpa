-- Initialisation des tables
INSERT INTO Employe(TYPE_EMPLOYE, matricule, nom, email, pourcentage, diplome, montant_prime) VALUES
    ('Commercial', 1, 'Rémi Bastide', 'Remi.Bastide@univ-jfc.fr', 3, null, null), -- Les clés sont auto-générées
    ('Administratif', 2, 'Elyes Lamine', 'Elyes.Lamine@univ-jfc.fr', null, 'Bac +5', null),
    ('Technique', 3, 'Jean-Marie Pécatte', 'jm.pecatte@gmail.com', null, null, 300);
-- On peut fixer les clés auto-générées, mais il faut ensuite
-- réinitialiser le compteur de clé auto-générée
-- Attention : la syntaxe est différente selon le SGBD utilisé
-- Ici la syntaxe pour le SGBD H2
ALTER TABLE Employe ALTER COLUMN matricule RESTART WITH 4;

INSERT INTO Projet (code, nom, debut, fin) VALUES (30, 'yeah', '2007-12-03', null);
INSERT INTO Projet (code, nom, debut, fin) VALUES (31, 'projectsecret', '2007-12-03','2007-12-04');
insert into Projet (code, nom, debut, fin) values (32, 'Tiphaine', '2023-10-07', '2023-05-07');
insert into Projet (code, nom, debut, fin) values (33, 'Anissa', '2024-10-07', null);

insert into Participation (num_participation, role, pourcentage) values (1, 'chef', 46);
insert into Participation (num_participation, role, pourcentage) values (2, 'dev', 32);
insert into Participation (num_participation, role, pourcentage) values (3, 'chef', 37);
insert into Participation (num_participation, role, pourcentage) values (4, 'dev', 88);


insert into Participation_Contributeur (contributeur_matricule, participation_num_participation) values (1,1);
insert into Participation_Contributeur (contributeur_matricule, participation_num_participation) values (2,1);
insert into Participation_Contributeur (contributeur_matricule, participation_num_participation) values (1,2);
insert into Participation_Contributeur (contributeur_matricule, participation_num_participation) values (3,1);
insert into Participation_Contributeur (contributeur_matricule, participation_num_participation) values (1,4);
insert into Participation_Contributeur (contributeur_matricule, participation_num_participation) values (3,4);
insert into Participation_Contributeur (contributeur_matricule, participation_num_participation) values (2,3);
insert into Participation_Contributeur (contributeur_matricule, participation_num_participation) values (3,3);

insert into Participation_Affectation(participation_num_participation, affectation_code) values (1,30);
insert into Participation_Affectation(participation_num_participation, affectation_code) values (2,31);
insert into Participation_Affectation(participation_num_participation, affectation_code) values (3,32);
insert into Participation_Affectation(participation_num_participation, affectation_code) values (4,33);
insert into Participation_Affectation(participation_num_participation, affectation_code) values (3,30);
insert into Participation_Affectation(participation_num_participation, affectation_code) values (1,31);
