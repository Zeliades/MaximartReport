<?php
class Producto extends Conectar
{
    public function GetHistProducto() {
        $conecta = parent::Conexion();
        parent::SetNames();

        $query = "SELECT venta.idventa, venta.fecha, producto.nombre, 
                         venta.cantidad, venta.montofinal, venta.descuento, 
                         cliente.nombre 'nombreCliente', empleado.nombre 'nombreEmpleado'
                  FROM venta
                  INNER JOIN producto
                  ON venta.idproducto = producto.idProducto
                  INNER JOIN cliente
                  ON venta.idcliente = cliente.idcliente
                  INNER JOIN empleado
                  ON venta.idempleado = empleado.idEmpleado
                  ORDER BY venta.fecha DESC";

        $sentencia=$conecta->prepare($query);
        $sentencia->execute();

        $resultado=$sentencia->fetchAll(PDO::FETCH_ASSOC);

        $sentencia->closeCursor();
        $conecta = null;

        return $resultado;        
    }

    public function GetMejorProducto(){
        $conecta = parent::Conexion();
        parent::SetNames();

        $query = "SELECT producto.nombre, count(venta.idproducto) cantidadvendida,
                  sum(venta.montofinal) totalventa, sum(venta.descuento) totaldescuento
            FROM venta
            INNER JOIN producto
            ON venta.idproducto = producto.idProducto
            GROUP BY (venta.idproducto)
            ORDER BY count(venta.idproducto) DESC, sum(venta.montofinal) DESC";

        $sentencia=$conecta->prepare($query);
        $sentencia->execute();

        $resultado=$sentencia->fetchAll(PDO::FETCH_ASSOC);

        $sentencia->closeCursor();
        $conecta = null;

        return $resultado;
    }

    public function GetMejorCliente(){
        $conecta = parent::Conexion();
        parent::SetNames();

        $query = "SELECT cliente.nombre, cliente.nit,
                  count(venta.idcliente) totalcompras,
                  sum(venta.montofinal) totalcomprado, sum(venta.descuento) totaldescuento
            FROM venta
            INNER JOIN cliente
            ON venta.idcliente = cliente.idcliente
            GROUP BY (venta.idcliente)
            ORDER BY count(venta.idcliente) DESC, sum(venta.montofinal) DESC;";

        $sentencia=$conecta->prepare($query);
        $sentencia->execute();

        $resultado=$sentencia->fetchAll(PDO::FETCH_ASSOC);

        $sentencia->closeCursor();
        $conecta = null;

        return $resultado;
    }
}



?>