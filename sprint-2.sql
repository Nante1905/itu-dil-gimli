create sequence client_id_seq start with 1 increment by 1;
create table t_client (
    id varchar(50) not null primary key default 'CLI' || to_char(nextval('client_id_seq'), 'fm0000'),
    pseudo varchar(200) unique not null,
    nom varchar(100) not null,
    prenom varchar(255) not null,
    mot_de_passe varchar(255) not null,
    image_url varchar(255)
);



insert into t_client values (default, 'dori_forgeron', 'Brumeforge', 'Dorin', 'MontagneDeFeu42!', 'dorin.jpg');
insert into t_client values (default, 'naer_la_claire', 'Elenvyr', 'Naerwen', 'FeuillageLorien9*', 'naerwen.jpg');
insert into t_client values (default, 'wulf_de_rohan', 'Grimbald', 'Wulfric', 'ChevalBlanc77#', 'wulfric.jpg');
insert into t_client values (default, 'kheled_marteau', 'Kheledul', 'Thrainor', 'Mithril_Forge88$', 'thrainor.jpg');

select * from t_client c where c.pseudo = '' and c.mot_de_passe = '';
