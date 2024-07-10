<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['pgasoid']==0)) {
  header('location:logout.php');
  } else{

 if(isset($_POST['sateid'])){
 $sid=$_POST['sateid'];

  $query=mysqli_query($con,"select * from tblcity where StateID='$sid'");
  ?>
  <option value="0">Select City</option>
  <?php  
  while($rw=mysqli_fetch_array($query))
    {
     ?>      
 <option value="<?php echo $rw['ID'];?>"><?php echo $rw['City'];?></option>
                  

<?php }}} ?>