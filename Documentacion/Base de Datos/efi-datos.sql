--
-- PostgreSQL database efi  datos iniciales
--



-- Tabla persona

INSERT INTO public.persona VALUES ('111', 'Usuario Nombre 1', 'Usuario 1 Apellido', '1991-08-12', 'Calle 1 Pamplona', 'usuario1@dominio.com', 'Masculino');
INSERT INTO public.persona VALUES ('222', 'Usuario 2 Nombre', 'Usuario 2 Apellido', '1970-01-01', 'Calle 2 Pamplona', 'usuario2@dominio.com', 'Femenino');


-- tabla Usuario

INSERT INTO public.usuario VALUES ('111', '111', '1', true, '111');
INSERT INTO public.usuario VALUES ('222', '222', '2', true, '222');


-- tabla rol

INSERT INTO public.rol VALUES (1, 'Administrador de Aplicaciòn', 'Acceso a todas las funcionalidades');
INSERT INTO public.rol VALUES (2, 'Docente', 'Acceso a las funcionalidades de docentes');
INSERT INTO public.rol VALUES (3, 'Estudiante', 'Funcionalidades del Estudiante');


-- Tabla usuarioxrol

INSERT INTO public.usuarioxrol VALUES (1, '111');
INSERT INTO public.usuarioxrol VALUES (2, '111');
INSERT INTO public.usuarioxrol VALUES (2, '222');


-- tabla modulo

INSERT INTO public.modulo VALUES (1, 'Administración Básica', 'Administracion básica de la aplicación');
INSERT INTO public.modulo VALUES (2, 'Gestión Académica', 'Gestión académica');
INSERT INTO public.modulo VALUES (3, 'Gestión Financiera', 'Gestión Financiera');
INSERT INTO public.modulo VALUES (4, 'Gestión de Investigación', 'Gestión de proyectos de investigación');




-- Datos tabla para funcionalidades

INSERT INTO public.funcionalidad VALUES (1, 'Login', 'login', 'Ingreso y validación de acceso al sistema', 1);
INSERT INTO public.funcionalidad VALUES (2, 'Gestión de usuarios', 'usuarios', 'Gestión de usuario, cambio de clave  y asignación de roles', 1);
INSERT INTO public.funcionalidad VALUES (3, 'Gestión de Módulos y Funcionalidades', 'modulosfuncionalidades', 'Gestión de módulos de la aplicación y funcionalidades por modulo', 1);
INSERT INTO public.funcionalidad VALUES (4, 'Gestión de Roles', 'roles', 'Gestión de roles y asignación de permisos a las funcionalidades', 1);
INSERT INTO public.funcionalidad VALUES (5, 'Ver Calificaciones', 'calificaciones', 'Ver sabana de notas de un estudiante', 2);
INSERT INTO public.funcionalidad VALUES (6, 'Registrar Calificaciones', 'registrarcalificaciones', 'Registrar calificaciones por grupo', 2);
INSERT INTO public.funcionalidad VALUES (7, 'Matricular Materias', 'matriculaestudiante', 'Registrar matricula académica por parte del estudiante', 2);
INSERT INTO public.funcionalidad VALUES (8, 'Evaluación de proyectos', 'evalproyectos', 'Evaluación de proyectos de investigación por parte de un docente', 3);
INSERT INTO public.funcionalidad VALUES (9, 'Registro de proyecto', 'regproyecto', 'Registro de proyecto de investigación', 3);





-- Tabla rolxfuncionalidad

INSERT INTO public.rolxfuncionalidad VALUES (1, 1);
INSERT INTO public.rolxfuncionalidad VALUES (1, 2);
INSERT INTO public.rolxfuncionalidad VALUES (1, 3);
INSERT INTO public.rolxfuncionalidad VALUES (1, 4);
INSERT INTO public.rolxfuncionalidad VALUES (2, 5);
INSERT INTO public.rolxfuncionalidad VALUES (2, 6);




