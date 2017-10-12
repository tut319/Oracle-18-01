--creamos tabla almacen---
create table almacen(numero_almacen integer,
            ubicacion_almacen varchar2(80),
        constraint pk_numero_almacen primary key(numero_almacen)
        );

--vamos a generar procedimiento almacenado para guardar
--una entidad o un registro de tipo almacen

create or replace procedure guardar_almacen(mi_id IN integer,
                            mi_ubicacion IN varchar2)
                            as
                            begin
                            --aqui la logica del procedimiento
                            insert into almacen values(mi_id,mi_ubicacion);
                            end;
                            /

--vamos aprobar si funciona nuestro procedimiento
   begin
   guardar_almacen(1,'plymounth');
   end;
   /
   
   select * from almacen
   
   
  --creamos tabla cliente---
create table cliente(numero_cliente integer,
             numero_almacen integer,
             nombre_cliente varchar2(60),
        constraint pk_numero_cliente primary key(numero_cliente),
        constraint fk1_na foreign key(numero_almacen)
        references almacen(numero_almacen)
        );
        
        select * from cliente
        
        
  --creamos tabla vendedor---
create table vendedor(numero_vendedor integer,
             nombre_vendedor varchar2(60),
             area_ventas varchar2(40),
        constraint pk_numero_vendedor primary key(numero_vendedor)
        );
        
        
        select * from vendedor
        
  --creamos tabla cliente---
create table ventas(id_ventas integer,
             numero_cliente integer,
             numero_vendedor integer,
             monto_venta float,
        constraint pk_id_ventas primary key(id_ventas),
        constraint fk1_nc foreign key(numero_cliente) references cliente(numero_cliente),
        constraint fk2_nv foreign key(numero_vendedor) references vendedor(numero_vendedor)
        );
        
        select * from ventas;
        
        
        
        