create table Department (
    id_department int (2) AUTO_INCREMENT PRIMARY KEY,
    name varchar(30) NOT NULL UNIQUE,
    id_department_status int (1) NOT NULL
);

create table Department_status (
    id_department_status int (1) AUTO_INCREMENT PRIMARY KEY,
    status varchar(15) NOT NULL UNIQUE
);

create table User (
    id_user int (2) AUTO_INCREMENT PRIMARY KEY,
    name varchar(50) NOT NULL UNIQUE,
    password varchar(8) NOT NULL UNIQUE,
    id_user_status int(1) NOT NULL,
    id_department int (2) NOT NULL
);

create table User_status (
    id_user_status int (1) AUTO_INCREMENT PRIMARY KEY,
    status varchar(18) NOT NULL UNIQUE
);

create table Ticket (
    folio varchar(12) PRIMARY KEY,
    date timestamp NOT NULL,
    id_ticket_status int (1) NOT NULL,
    id_user int (2) NOT NULL
);


create table Ticket_status (
    id_ticket_status int(1) AUTO_INCREMENT PRIMARY KEY,
    status varchar(11) NOT NULL UNIQUE
);
    

ALTER TABLE Ticket ADD FOREIGN KEY (id_ticket_status)
REFERENCES Ticket_status(id_ticket_status);
ALTER TABLE Ticket ADD FOREIGN KEY (id_user)
REFERENCES User(id_user);

ALTER TABLE user ADD FOREIGN KEY (id_user_status)
REFERENCES User_status(id_user_status);
ALTER TABLE user ADD FOREIGN KEY (id_department)
REFERENCES Department(id_department);

ALTER TABLE Department ADD FOREIGN KEY (id_department_status)
REFERENCES Department_status(id_department_status);


insert into Department_status(status)
values ("Abierto"), ("Cerrado");

insert into User_status(status)
values ("Disponible"), ("En espera"), ("Fuera de servicio");

insert into Ticket_status(status)
values ("Abierto"), ("En progreso"), ("Cerrado");


insert into Department(name,id_department_status)
values ("Cajas", 1), ("Tesorería", 2), ("Servicios escolares", 1);

insert into User(name, password, id_user_status, id_department)
values ("Héctor Sánchez Tamayo", "CAJ01UAL", 2, 1), ("Oscar David Zambrano Collazo", "TES02UAL", 3, 2), ("Victor Manuel Martínez Hernández", "SSE03UAL", 1, 3);



-- Variable contador para el número ascendente
SET @contador = 0;

-- Variable fecha para el formato de fecha ymd
SET @fecha = DATE_FORMAT(NOW(), '%y%m%d');

INSERT INTO Ticket (folio, date, id_ticket_status, id_user)
VALUES (
    CONCAT('UAL', @fecha, LPAD((@contador := @contador + 1), 3, '0')),
    NOW(),
    1, -- Valor para id_ticket_status
    1  -- Valor para id_user
);

INSERT INTO Ticket (folio, date, id_ticket_status, id_user)
VALUES (
    CONCAT('UAL', @fecha, LPAD((@contador := @contador + 1), 3, '0')),
    NOW(),
    2,
    2 
);

/*INSERT INTO Ticket (folio, date, id_ticket_status, id_user)
VALUES (
    CONCAT('UAL', @fecha, LPAD((@contador := @contador + 1), 3, '0')),
    NOW(),
    3,
    3 
);*/

