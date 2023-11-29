create database GenshinParcialDesarrollo;

use genshinparcialdesarrollo;

create table Arma(
	arma_id int not null auto_increment,
    nombre varchar(35),
    descripcion varchar(100),
    imagen varchar(255),
    primary key (arma_id)
);

create table Region(
	region_id int not null auto_increment,
    nombre varchar(35),
    descripcion varchar(100),
    imagen varchar(255),
    primary key (region_id)
);

create table Personaje(
	personaje_id int not null auto_increment,
    nombre varchar(35),
    descripcion varchar(100),
    primary key (personaje_id),
    arma_id int,
    region_id int,
    imagen varchar(255),
    foreign key (arma_id) references Arma (arma_id),
    foreign key (region_id) references Region (region_id)
);

insert into Arma (nombre, descripcion, imagen) values
  ('lanza', 'una lanza',''),
  ('arco', 'un arco','https://genshinpedia.ru/wp-content/uploads/2022/06/1654454323_f18e309aefe70be53f06722e3777c5cb.webp'),
  ('mandoble', 'una espada grande de dos manos','https://pm1.narvii.com/8321/57df179d75f6d8a20ec82236901bcc0f24e795dfr1-516-746v2_hq.jpg'),
  ('catalizador', 'es un libro',''),
  ('espada', 'una espada','https://i.etsystatic.com/8319348/r/il/e5956f/2753076019/il_fullxfull.2753076019_8qfa.jpg');
  
insert into Region (nombre, descripcion, imagen) values
  ('Mondstadt', 'La Ciudad de la Libertad','https://paimonsguide.files.wordpress.com/2020/11/9c1e7a46a008b12f9a4747727781749a_3927041930766336790.jpg?w=816'),
  ('Liyue', 'La Ciudad de los Contratos','https://static.wikia.nocookie.net/gen-impact/images/0/03/Liyue.png/revision/latest?cb=20201026032449&path-prefix=es'),
  ('Inazuma', 'Nación archipiélago','https://www.pcgamesn.com/wp-content/sites/pcgamesn/2021/05/genshin-impact-inazuma-release-date-narukami-island.jpg'),
  ('Sumeru','La Ciudad del Aprendizaje','https://static.wikia.nocookie.net/gensin-impact/images/6/68/Sumeru_City.png/revision/latest?cb=20220815102704');

insert into Personaje (nombre, descripcion, arma_id, region_id, imagen) values
  ('Venti', 'Arconte Anemo', 2, 1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSal1LZ3Q-rVGcc9aZuCesMIUOe2MdoMIRMlOHL4aU0RIK0J85smNsSCMMoahzBGSmdV9Q&usqp=CAU'),
  ('Zhongli', 'Arconte Geo', 1, 2,'https://www.postavy.cz/foto/zhongli-foto.jpg'),
  ('Baal', 'Arconte Electro', 1, 3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6OmhXJEfMJ_5d7Fa4WZtHzZ6DJ-tMcMUG1UvWvsH7-GArKIQ31wS37C6u1EbHS5woMF4&usqp=CAU'),
  ('Nahida', 'Arconte Dendro', 4, 4,'https://th.bing.com/th/id/OIP.vA9kjQ-LzumkcEkQfsuzrwAAAA?rs=1&pid=ImgDetMain');

DELIMITER //
CREATE PROCEDURE obtenerPersonajes()
BEGIN
	SELECT *  FROM Personaje;
END //
DELIMITER ;

DELIMITER //

CREATE PROCEDURE obtenerArmas()
BEGIN
    SELECT * FROM Arma;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE obtenerRegiones()
BEGIN
    SELECT * FROM Region;
END //

DELIMITER ;
