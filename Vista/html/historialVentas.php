<?php
include_once("../../config/conexion.php");
include_once("../../Modelo/producto.php");


$pro = new Producto();
$productos = $pro->GetHistProducto();
$counter = 0;

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/historialVentas.css">
    <title>historialVentas</title>
</head>
<body>
    <h1>Historial de Ventas</h1>
    <a target="_blank" href="../../Controlador/reportHistorialVentasController.php"><button>Generar Reporte</button></a>
    <a href="../../index.html"><button>Atras</button></a>
    <br>
    <div class="container">
        <table class="">
            <tr >
                <th class="">Nro</th>
                <th class="">Nro Venta</th>
                <th class="">Fecha Compra</th>
                <th class="">Producto</th>
                <th class="">Cantidad</th>
                <th class="">Monto Final</th>
                <th class="">Descuento</th>
                <th class="">Nombre Cliente</th>
                <th class="">Nombre Empleado</th>
            </tr>
            <?php foreach($productos as $producto): ?>
            <tr class="row">
                <th class=""> <?php echo ++$counter; ?></th>
                <th class=""> <?php echo $producto['idventa'];        ?> </th>
                <th class=""> <?php echo $producto['fecha'];         ?> </th>
                <th class=""> <?php echo $producto['nombre'];        ?> </th>
                <th class=""> <?php echo $producto['cantidad'];     ?> </th>
                <th class=""> <?php echo $producto['montofinal'];  ?> </th>
                <th class=""> <?php echo $producto['descuento'];         ?> </th>
                <th class=""> <?php echo $producto['nombreCliente'];       ?> </th>
                <th class=""> <?php echo $producto['nombreEmpleado'];          ?> </th>
            </tr>
            <?php endforeach;?> 
        </table>
    </div>

</body>
</html>