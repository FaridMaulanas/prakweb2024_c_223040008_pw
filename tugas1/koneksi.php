<?php
$host = 'localhost';
$user = 'root';
$password = '';
$db = 'prakweb_2024_c_223040008';

$conn = new mysqli($host, $user, $password, $db);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
