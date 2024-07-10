<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['pgasoid']==0)) {
  header('location:logout.php');
  } else{

 if(isset($_POST['cityId'])){
 $cid=$_POST['cityId'];

  $query=mysqli_query($con,"select * from tblhostels where cityId=$cid");

    while($rw=mysqli_fetch_array($query))
    {
       
     ?>      
 <option value="<?php echo $rw['id'];?>"><?php echo $rw['name']; ?></option>
                  

<?php }}} ?>