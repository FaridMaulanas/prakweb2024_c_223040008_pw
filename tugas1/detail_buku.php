<?php include 'koneksi.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Buku</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container mt-4">
        <h1 class="my-4 text-center">Detail Buku</h1>

        <?php
        // Ambil ID buku dari URL
        $id = isset($_GET['id']) ? intval($_GET['id']) : 0;

        // Query untuk mendapatkan data buku berdasarkan ID
        $query = "SELECT * FROM buku WHERE id = $id";
        $result = $conn->query($query);

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            echo "
            <div class='card'>
                <div class='card-body'>
                    <h5 class='card-title'>{$row['judul']}</h5>
                    <h6 class='card-subtitle mb-2 text-muted'>Penulis: {$row['penulis']}</h6>
                    <p class='card-text'>Penerbit: {$row['penerbit']}</p>
                    <p class='card-text'>Tahun Terbit: {$row['tahun_terbit']}</p>
                    <p class='card-text'><strong>Sinopsis:</strong> {$row['sinopsis']}</p>
                </div>
            </div>";
        } else {
            echo "<div class='text-center'><p>Buku tidak ditemukan.</p></div>";
        }
        ?>

        <div class="text-center mt-4">
            <a href="index.php" class="btn btn-secondary">Kembali ke Daftar Buku</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>