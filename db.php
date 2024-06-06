<?php
session_start();

$conn = mysqli_connect(
  'localhost',
  'root',
  '',
  'MyDatabase'
) or die(mysqli_erro($mysqli));

?>
