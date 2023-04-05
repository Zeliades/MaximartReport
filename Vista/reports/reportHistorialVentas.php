<?php
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
    <title>historialVentas</title>
    <style>
        p{
            text-align: center;
        }
        h1{
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            color: red;
        }
        table{
            width: 100%;
            border-collapse: collapse;
        }
        th, td, tr{
            text-align: center;
            border: 2px solid;
            font-family: Arial, Helvetica, sans-serif;
        }
        .firstRow{
            background: #ff6060;
        }
    </style>
</head>
<body>
    <p><h1>Reporte Productos: Historial Ventas</h1></p><br>
    <div class="">
        <table class="">
            <tr class="firstRow">
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
            <tr>
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