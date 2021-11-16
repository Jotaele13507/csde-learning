<?php
include('admin/dbcon.php');
$id = $_POST['id'];
$get_id = $_POST['get_id'];
mysqli_query($con,"delete from files where file_id = '$id' ")or die(mysqli_error());
?>
<script>
	window.location = 'downloadable.php<?php echo '?id='.$get_id; ?>'
</script>