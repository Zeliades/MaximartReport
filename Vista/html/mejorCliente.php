<?php
include_once("../../config/conexion.php");
include_once("../../Modelo/producto.php");


$pro = new Producto();
$productos = $pro->GetMejorCliente();
$counter = 0;

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/mejorCliente.css">
    <title>Mejor cliente</title>
</head>
<body>
    <h1>Mejor cliente</h1>
    <a target="_blank" href="../../Controlador/reportMejorClienteController.php"><button>Generar Reporte</button></a>
    <a href="../../index.html"><button>Atras</button></a>

    <div class="container">
        <table class="">
            <tr >
                <th class="">Nro</th>
                <th class="">Nombre Cliente</th>
                <th class="">Nit cliente</th>
                <th class="">Total Compras</th>
                <th class="">Monto Total</th>
                <th class="">Total Descuento</th>
            </tr>
            <?php foreach($productos as $producto): ?>
            <tr class="row">
                <th class=""> <?php echo ++$counter; ?></th>
                <th class=""> <?php echo $producto['nombre'];        ?> </th>
                <th class=""> <?php echo $producto['nit'];         ?> </th>
                <th class=""> <?php echo $producto['totalcompras'];        ?> </th>
                <th class=""> <?php echo $producto['totalcomprado'];     ?> </th>
                <th class=""> <?php echo $producto['totaldescuento'];  ?> </th>
            </tr>
            <?php endforeach;?> 
        </table>
    </div>
</body>
</html>