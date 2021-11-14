<?php
include('dbcon.php');
        
               $un = $_POST['un'];
               $fn = $_POST['fn'];
               $ln = $_POST['ln'];
               $ps = $_POST['ps'];
               $class_id = $_POST['class_id'];

               mysqli_query($con,"insert into student (username,firstname,lastname,password,location,class_id,status)
		values ('$un','$fn','$ln','$ps','uploads/NO-IMAGE-AVAILABLE.jpg','$class_id','Registered')                                    
		") or die(mysqli_error()); ?>
<?php    ?>