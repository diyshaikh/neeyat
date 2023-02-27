<?php

include ("db_connect.php");
     $name = $_POST['name'];
     $gender = $_POST['gender'];
     $age = $_POST['age'];
     $email = $_POST['email'];
     $aoi = $_POST['aoi'];
    $_SESSION['aoi'] = $aoi;
    
     
     $Pincode = $_POST['Pincode'];
     
     $insert = mysqli_query($connect, "INSERT INTO mentee (name, gender, Pincode, age, email, aoi) VALUES ('$name', '$gender', '$Pincode','$age', '$email' , '$aoi' )");

     
      if($insert) {
        header('location: matching_algo1.php');
      }
      
       
           

      

?>