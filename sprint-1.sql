create sequence produit_id_seq start with 1 increment by 1;

create table t_produit (
    id varchar(50) not null primary key default 'PRO' || to_char(nextval('produit_id_seq'), 'fm0000'),
    reference varchar(100),
    libelle varchar(255),
    est_du_jour boolean,
    prix numeric,
    quantite_en_stock integer
);


insert into t_produit (id, reference, libelle, est_du_jour, prix, quantite_en_stock) values
(default, 'REF001', 'Vin Elrond', false, 34.90, 12),
(default, 'REF002', 'Hache de Gimli', false, 15.00, 0),
(default, 'REF003', 'Phial de Galadriel', true, 89.99, 3);

select * from t_produit p where p.est_du_jour = true;
