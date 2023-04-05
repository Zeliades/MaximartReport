<?php
require_once("../config/conexion.php");
require_once('../Modelo/producto.php');
require_once('../libraries/dompdf/autoload.inc.php');

//pdf name
$fileName = "Reporte_HistorialVentas_" . date('Y-m-d H:i:s') . ".pdf";

// reference the Dompdf namespace
use Dompdf\Dompdf;

// instantiate and use the dompdf class
$dompdf = new Dompdf();

//Contenido del pdf
ob_start();
require_once('../Vista/reports/reportHistorialVentas.php');
$html = ob_get_contents();
ob_get_clean();

//Cargar pdf
$dompdf->loadHtml($html);

// (Optional) Setup the paper size and orientation
$dompdf->setPaper('A4', 'portrait');

// Render the HTML as PDF
$dompdf->render();

// Output the generated PDF to Browser
$dompdf->stream($fileName,['Attachment'=>false]);


?>