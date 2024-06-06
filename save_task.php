<?php

include('db.php');

if (isset($_POST['save_user'])) {
  $fullName = $_POST['name'];
  $date = $_POST['date'];
  $query = "INSERT INTO `users` (`DateOdBirth`, `FullName`, `Gender`) VALUES ('$date','$fullName','$gender')";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Task Saved Successfully';
  $_SESSION['message_type'] = 'success';
  header('Location: index.php');

}

?>
