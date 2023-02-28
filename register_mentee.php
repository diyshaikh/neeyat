<?php

include ("db_connect.php") ;
session_start();

     $name = $_POST['name'];
     $gender = $_POST['gender'];
     $age = $_POST['age'];
     $email = $_POST['email'];
     $aoi = $_POST['aoi'];
     $Pincode = $_POST['Pincode'];
     //if(isset($_SESSION['aoi'])){
     // echo 'Hello';
  //} 
  //else{
    //echo 'fuck off';
  //}
    
         //Starting the session
         
      
     
     $insert = mysqli_query($connect, "INSERT INTO mentee (name, gender, Pincode, age, email, aoi) VALUES ('$name', '$gender', '$Pincode','$age', '$email' , '$aoi' )");

     
      if($insert) {
        header('location: matching_algo1.php');
      }
      else{
        header('location: login page demo.html');
      }
        
        

?>