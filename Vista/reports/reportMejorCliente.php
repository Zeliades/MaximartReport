<?php
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
    <title>Mejor cliente</title>
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
    <p><h1>Reporte Mejores Clientes</h1></p><br>
    <div class="">
        <table class="">
            <tr class="firstRow">
                <th class="">Nro</th>
                <th class="">Nombre Cliente</th>
                <th class="">Nit cliente</th>
                <th class="">Total Compras</th>
                <th class="">Monto Total</th>
                <th class="">Total Descuento</th>
            </tr>
            <?php foreach($productos as $producto): ?>
            <tr>
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