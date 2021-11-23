drop table rolxfuncionalidad;
drop table usuarioxrol;
drop table funcionalidad;
drop table rol;
drop table usuario;
drop table persona;
drop table modulo; 

-- CREAR ROL
-- CREATE ROLE fullread;

-- ASIGNAR PERMISO DE CONECION A LA BD
-- GRANT CONNECT ON DATABASE mydatabase TO fullread;

-- ASIGNAR PERMISO DE USO DEL ESQUEMA
-- GRANT USAGE ON SCHEMA myschema TO fullread;

-- ASIGNAR PER PERMISOS A LAS TABLAS
-- GRANT SELECT,INSERT,UPDATE, DELETE ON ALL TABLES IN SCHEMA myschema TO fullread;

-- ASIGNAR PERMISOS POR DEFAULT A LAS TABLAS QUE SE CREEN A PARTIR DE LA CREACIÓN DEL ROL
-- ALTER DEFAULT PRIVILEGES IN SCHEMA myschema GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO fullread;

-- CREAR USUARIO
-- CREATE USER practica WITH PASSWORD '123';

-- ASIGNAR ROL A USUARIO
-- GRANT fullread TO practica;

-- REMOVAR ROL
-- REVOKE fullread FROM practica;

--Crear Super usuario--

-- CREATE USER efi PASSWORD 'efi';
-- ALTER ROLE efi WITH SUPERUSER;

--Tablas--

create table persona(
    per_id varchar(20) not null,
    per_nombre varchar(50) not null,
    per_apellido varchar(50) not null,
    per_fecha_nacimiento date not null,
    per_direccion varchar(100),
    per_correo varchar (30) not null,
    per_genero varchar (10) not null,
    primary key (per_id)
);


create table usuario(
    usu_login varchar(20)not null unique,
    usu_clave varchar(20)not null,
    usu_tema varchar (20),
    usu_activo boolean not null,
    per_id varchar(20) not null,
    primary key (per_id), 
    foreign key (per_id) references persona(per_id) 
    on update cascade on delete cascade 
);

create table rol(
    rol_id SERIAL not null,
    rol_nombre varchar(80) not null,
    rol_descripcion varchar(100) not null,
    primary key (rol_id)
);

create table usuarioxrol(
    rol_id integer not null,
    per_id varchar(20) Not null,
    primary key (rol_id, per_id),
    foreign key (rol_id) references rol(rol_id) 
    on update cascade on delete cascade,
    foreign key (per_id) references usuario(per_id) 
    on update cascade on delete cascade
);

create table modulo(
    mod_id SERIAL not null,
    mod_nombre varchar(50) not null,
    mod_descripcion varchar(150) not null,
    primary key (mod_id)
);

	     
create table funcionalidad(
    fun_id SERIAL not null,
    fun_nombre varchar(50) not null,
    fun_ruta varchar(80) not null,
    fun_descripcion varchar(150) not null,
    mod_id integer not null,
    primary key (fun_id),
    foreign key (mod_id) references modulo(mod_id)
    on update cascade on delete cascade
);

    

create table rolxfuncionalidad(
    rol_id integer not null,
    fun_id integer not null,
    primary key (fun_id,rol_id),
    foreign key (fun_id) references funcionalidad(fun_id) 
    on update cascade on delete cascade,
    foreign key (rol_id) references rol(rol_id) 
    on update cascade on delete cascade
);