<?php include 'koneksi.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Buku</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Flexbox styling for body */
        html,
        body {
            height: 100%;
            margin: 0;
        }

        body {
            display: flex;
            flex-direction: column;
        }

        .content {
            flex: 1;

        }

        .navbar {
            background-color: #654321;

        }

        .footer {
            background-color: #654321;

            color: #F1F1F1;

        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <i class="fas fa-book-open"></i> Perpustakaan Lokal
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <form action="" method="GET" class="d-flex ms-auto">
                    <input class="form-control me-2" type="search" placeholder="Cari buku..." name="search" aria-label="Search">
                    <button class="btn btn-outline-light" type="submit">Cari</button>
                </form>
            </div>
        </div>
    </nav>

    <div class="container mt-4 content">
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
            <a href="index.php" class="btn btn-success text-white">Kembali ke Daftar Buku</a>
        </div>
    </div>

    <footer class="footer text-center py-3 mt-4">
        <p>&copy; Farid Maulana Suherman. Prakweb2024.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>