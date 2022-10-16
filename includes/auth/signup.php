<?php

include_once ("./includes/config/conn.php");

    if(isset($_POST['register'])){

    $referrer_check = $_POST['sponsor'];
    $ref_code_check = $_POST['ref_code'];
    $referralcheck = "SELECT referrer, ref_code FROM `referral_codes` WHERE `referrer` = '$referrer_check' AND `ref_code` = '$ref_code_check' AND `status` = 'to_redeem'";
    $resultReferral = mysqli_query($conn, $referralcheck);
    $referral_count = mysqli_num_rows($resultReferral);

    if ($referral_count == 1) {

        while($referral_info = mysqli_fetch_assoc($resultReferral)) {
            $referrer =$referral_info['referrer'];
            $ref_code = $referral_info['ref_code'];

            $code = "ADS";
            $get_month = date('m', strtotime("now"));
            $number = 00001;

            $member_id = "$code$get_month-$number";
            
            $referrer = $_POST["sponsor"];
            $ref_code = $_POST["ref_code"];
            $first_name = $_POST["first_name"];
            $last_name = $_POST["last_name"];
            $email_address = $_POST["email_address"];
            $pass = $_POST["pass"];
            $contact_number = $_POST["contact_number"];
            $birthday = date('M d Y', strtotime($_POST["birthday"]));
            $confirm_pass = $_POST["confirm_pass"];
            $sss_num = $_POST["sss_num"];
            $tin_acct = $_POST["tin_acct"];
            $homeaddress = $_POST["homeAddress"];
        
            $create_user_select = "SELECT * FROM accounts WHERE email_address = '$email_address'";
            $create_user_query = mysqli_query($conn, $create_user_select);
            $create_user_count = mysqli_num_rows($create_user_query);
    
    
            if($create_user_count == 0) {
                if(($pass == $confirm_pass)) {

                    $hash = password_hash($pass, PASSWORD_DEFAULT);
                    
                    $create_user_select = "INSERT INTO `accounts`(`first_name`, `last_name`, `sponsor`, `email_address`, `pass`, `contact_number`, `date`, `access`, `permission`, `referralId`, `homeaddress`, `tin_acct`, `sss_num`, `member_id`) VALUES ('$first_name', '$last_name','$referrer','$email_address','$hash','$contact_number',current_timestamp,'approved','userist','$ref_code','$homeaddress','$tin_acct','$sss_num','$member_id')";
                    
                    $successmydick = mysqli_query($conn, $create_user_select);

                    if ($successmydick) { //Just to confirm if may nainsert, and nag success.
                        $sqlInsertUserInitialBalance= "INSERT INTO `totalbalance`(`userID`, `userName`, `totalBalance`) VALUES ('$member_id','$email_address','0');";

                        $sqlupdatecodestatus ="UPDATE `referral_codes` SET `status`='used' WHERE `ref_code` = '$ref_code'";
                            mysqli_query($conn, $sqlupdatecodestatus);

                        mysqli_query($conn, $sqlInsertUserInitialBalance);
                        $sqlSelectAccount1 ="SELECT * FROM `accounts` WHERE `member_id` = '$referrer';";
                        $resultAccount1 = mysqli_query($conn, $sqlSelectAccount1);
                        while($userRow = mysqli_fetch_assoc($resultAccount1)){
                            $fname = $userRow['first_name'];
                            $lname = $userRow['last_name'];
                            $sponsorName = $fname." ".$lname;
                            $email = $userRow['email_address'];
                        }
                    }
                    header("location: ./login.php");
                    echo "<script> alert('You are now registered!')</script>";
                }
                else{
                    echo "<script> alert('Password not match')</script>";
                } 
            }
            else if ($create_user_count>0) 
            {
                echo "<script> alert('Email address is already taken.')</script>";
            } 
        }
    }
    else{
        echo "<script> alert('The code you doesn't exist or already been used.')</script>";
    }
}
?>