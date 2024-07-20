<?php
$servername = 'localhost';
$username = 'root';
$password = 'R0el!W@ag2024';
$conn = new mysqli($servername, $username, $password);
if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}
echo 'Connected successfully';
?>
