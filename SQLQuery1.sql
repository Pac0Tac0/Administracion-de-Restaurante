create database Ejemplo
use Ejemplo

create table Persona(
id varchar(5) Primary Key,
nombre varchar (50) not null,
apellidoPaterno varchar (50) not null,
apellidoMaterno varchar (50),
fechaRegistro date not null
)

create table Cuenta(
idCuenta numeric primary key,
tipoCuenta varchar (50) not null,
idCliente varchar (5)
)

alter table Cuenta
--add constraint FK_iCliente Foreign Key (idCliente) references Persona (id),
add constraint CK_idCuenta CHECK (len(idCuenta)=16)


alter table Persona
add constraint Df_fechaRegistro default getdate() for fechaRegistro

insert into Persona values ('RAZOF', 'Francisco', 'Razo', null, DEFAULT)
insert into Persona values ('GUTIF', 'Fermin', 'Gutierrez', null, '05-08-2019')
insert into Persona values ('TRUJM', 'Mike', 'Trujillo', null, DEFAULT)
select * from Persona order by fechaRegistro desc

alter table Persona
add edad numeric check (edad>=18)

select * from Persona
