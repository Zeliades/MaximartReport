<?php
include_once("../../config/conexion.php");
include_once("../../Modelo/producto.php");


$pro = new Producto();
$productos = $pro->GetMejorProducto();
$counter = 0;

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/productoEstrella.css">
    <title>Producto estrella</title>
</head>
<body>
    <h1>Producto estrella</h1>
    <a target="_blank" href="../../Controlador/reportMejorProductoController.php"><button>Generar Reporte</button></a>
    <a href="../../index.html"><button>Atras</button></a>

    <div class="container">
        <table class="">
            <tr >
                <th class="">Nro</th>
                <th class="">Producto</th>
                <th class="">Cantidad Vendida</th>
                <th class="">Total Ventas</th>
                <th class="">Total Descuentos</th>
            </tr>
            <?php foreach($productos as $producto): ?>
            <tr class = "row">
                <th class=""> <?php echo ++$counter; ?></th>
                <th class=""> <?php echo $producto['nombre'];        ?> </th>
                <th class=""> <?php echo $producto['cantidadvendida'];         ?> </th>
                <th class=""> <?php echo $producto['totalventa'];        ?> </th>
                <th class=""> <?php echo $producto['totaldescuento'];     ?> </th>
            </tr>
            <?php endforeach;?> 
        </table>
    </div>
</body>
</html>