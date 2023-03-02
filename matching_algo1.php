<?php  
 $connect = mysqli_connect("localhost", "root", "", "neeyat");  
session_start();

    
//$sql ="SELECT * FROM mentee WHERE mentee.aoi = '$aoi'";
$sql = "SELECT *
 FROM mentor
 WHERE aoi = (SELECT aoi
              FROM mentee
              WHERE id = (SELECT MAX(id)
                          FROM mentee))";

$result = mysqli_query($connect,$sql);


?>
 <!DOCTYPE html>  
 <html>  

      <head> 
           <title>Matchings</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
           <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">
<!-- Bootstrap CSS -->
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<!-- Font Awesome CSS -->
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>
<style>
    .body {
    background: #67B26F;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #4ca2cd, #67B26F);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #4ca2cd, #67B26F); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    padding: 0;
    margin: 0;
    font-family: 'Lato', sans-serif;
    color: #000;
}
.container{
     position:relative;
     top: 100px;
     background-color:white;
     border:2px;
     border-radius:30px
}
.container1
  {
    max-width: 80rem;
    padding: 0 2rem;
    margin: 0 auto;
    position: relative;
  
   
  }
  nav
  {
    width: 100%;
    position: absolute;
    top: 0;
    left: 50;
    z-index: 50;
    
  }
  nav .container1
  {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 6rem;

  }
  .logo
  {
    max-width: 250px;
    display: flex;
    align-items: center;
    position: relative;
  }
  .links {
    position: relative;
    left:5%;
  }
  
  .active1 {
    position: absolute;
    left: 25%;
  }

  .links ul
  {
    display: flex;
  }
  .links a
  {
    display: inline-block;
    padding: 0.7rem 1.2rem;
    margin-right: 0.6rem;
    color: #fbfcfc;
    font-size: 1.05rem;
    text-transform: uppercase;
    font-weight: 500;
    line-height: 1;
    border-radius: 1.5rem;
    transition: 0.3s;
  }
  
  .links a
  {
    display: inline-block;
    padding: 0.7rem 1.2rem;
    margin-right: 0.6rem;
    color: #07557d;
    font-size: 1.05rem;
    text-transform: uppercase;
    font-weight: 500;
    line-height: 1;
    border-radius: 1.5rem;
    transition: 0.3s;
    background: #ffffff;
  }
  .links a.active1,
  .links a:hover
  {
    color: #0b0235;
    font-size: 1.25rem;
  }

  .links a.active,
  .links a:hover
  {
    color: #0b0235;
    font-size: 1.25rem;

  }

</style>
           <title>Matchings</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
      </head>  
                
      <body class="body">  
      <nav>
    <div class="container1">
      <div class="logo" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 50px;     color: #f6f8f9;
      ">
        <b>NEEYAT</b>
      </div>
      <div class="links">
        <ul>
          <li><a href="donate.html" >Donate</a></li>
          <li><a href="index.html" >Home</a></li>
         
          

          <li><a href="about.html">About</a></li>
          <li><a href="contact_us.html">Contact Us</a></li>
          <li><a href="login.php">Books</a></li>
           <li class="Assistance"> <a href="Untitled-4.html">Assistance</a></li>
           <li><a href="bot.php"  >Chat</a></li>
        </ul>
      </div>
      <div class="hamburger-menu">
        <div class="bar"></div>
      </div>
    </div>
  </nav>
          

           <br /> 
           <div class="container" style="width:500px;">  
                <h1      >People We have Chosen</h1><br />                 
                <div class="table-responsive">  
                     <table class="table table-striped">  
                          <tr>  
                               <th>Name</th>  
                               
                               <th>Email id</th>
                               <th>Field of Interest </th>  
                          </tr>  
                          <?php  
  //if (mysqli_num_rows($result) > 0) 
  //{  
       //while($row = mysqli_fetch_array($result))
           //$row = $result->fetch_assoc())  
      // {  
 // 
 if (mysqli_num_rows($result) > 0) 
 {  
      while($row = mysqli_fetch_array($result))
          //$row = $result->fetch_assoc())  
      {  
 ?>  

 <tr>  
      <td><?php echo $row["name"];?></td>  
       
      <td><?php echo $row["email"];?></td>  
      <td><?php echo $row["aoi"]; ?></td>  
 </tr>  
 <?php  
      }  
 }
 
 

 ?>  
</table>  
</div>  
</div>  
<br />  
</body>  
</html>
