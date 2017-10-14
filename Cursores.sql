create table usuario_x(ID integer primary key,
             nombre varchar2(40),
             edad integer);
             
             insert into usuario_x values(1,'juan',40);
             insert into usuario_x values(2,'ana',32);
             insert into usuario_x values(3,'pedro',27);
             insert into usuario_x values(4,'maria',30);
             
             select * from usuario_x;
             
             set serveroutput on;
             
             declare
             cursor cur_1 IS select * from usuario_x;
             
             begin
             --aqui viene la logica del cursor--
             for fila in cur_1 loop
             dbms_output.put_line('el nombre actual es ' || fila.nombre);
             end loop;
             end;
             /
             
             declare
            cursor cur_2 IS select * from usuario_x;
            sueldo_base integer;
            begin
            --inicializamos sueldo base---
            for fila in cur_2 loop
             sueldo_base:=6000;
            if fila.edad > 30 then
            sueldo_base:= sueldo_base*1.5;
            end if;
             dbms_output.put_line('el sueldo es ' || sueldo_base ||' edad:' || fila.edad);
             end loop;
             end;
             /
            
             