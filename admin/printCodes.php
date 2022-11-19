<?php
session_start();

require '../dompdf/vendor/autoload.php';
use Dompdf\Dompdf;

$html = '


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Arvie Cosmetic & Skincare  ProductsTrading</title>

   
</head>
<body>
';


$html .='                 
</div>
<table style="margin-top: 20px; width: 100%; text-align: center;  ">
';

include_once ("../includes/config/conn.php");
                        
$transaction = $_GET["transaction"];
$transaction_select = "SELECT `codetype`, `counter`, `ref_code`, `transaction_id`, `status` from referral_codes WHERE generation_batch = '$transaction'";
$transaction_query = mysqli_query($conn, $transaction_select);



$transaction = $_GET["transaction"];
$transaction_select_code = "SELECT `codetype`, `counter`, `ref_code`, `transaction_id`, `status` from referral_codes WHERE generation_batch = '$transaction'";
$transaction_query_code = mysqli_query($conn, $transaction_select_code);
$no = 1;
while ($specific_transaction = mysqli_fetch_assoc($transaction_query_code)) {
    $code = $specific_transaction['ref_code'];
    if($no == 3){

        if ($specific_transaction['status'] == "used") {
            $html .='<th style="margin: 50px; padding: 20px ;  background-color: yellow;border: 1px solid black;" >'.$code.'</th></tr>';
            $no =   1;
        }
        else{
            $html .='<th style="margin: 50px; padding: 20px ;border: 1px solid black;
            " >'.$code.'</th></tr>';
            $no =   1;
        }
       
    }
    else if($no ==1){
        if ($specific_transaction['status'] == "used") {
            $html .='<tr style=" margin: 50px; padding: 20px ;; border: 1px solid black;
            "> <th style=" background-color: yellow; border: 1px solid black;" >'.$code.'</th>';
                  $no++;
        }
        else{
            $html .='<tr style=" margin: 50px; padding: 20px ; border: 1px solid black;
            "> <th style=" padding: 20px ;  border: 1px solid black;
            " >'.$code.'</th>';
                  $no++;
        }
       
    }
    else{
        if ($specific_transaction['status'] == "used") {
            $html .='<th style="margin: 50px; padding: 20px ;background-color: yellow; border: 1px solid black;
  " >'.$code.'</th>';
        $no++;
        }
        else{
            $html .='<th style="margin: 50px; padding: 20px ; border: 1px solid black;
            " >'.$code.'</th>';
                  $no++;
        }
        
    }
    
  
}

 
 $html .='</tr>

</body>
</html>';

$dompdf = new Dompdf();
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'portrait');
$dompdf->render();
$dompdf->stream('Codes.pdf', ['Attachment' => 0]);
?>
