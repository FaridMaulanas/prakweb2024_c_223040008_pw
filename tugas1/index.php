<?php include 'koneksi.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Buku</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }

        /* Style buat navbar sama footer */
        .navbar {
            background-color: #4CAF50;
            /* Light Green */
        }

        .footer {
            background-color: #333;
            /* Light Gray */
            color: #F1F1F1;
            /* Dark Gray for text */
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <!-- Logo Buku pinggir navbar -->
                <i class="fas fa-book-open"></i> Perpustakaan Lokal
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <!-- Form Pencarian Buku di Navbar -->
                <form action="" method="GET" class="d-flex ms-auto">
                    <input class="form-control me-2" type="search" placeholder="Cari buku..." name="search" aria-label="Search" value="<?php echo isset($_GET['search']) ? $_GET['search'] : ''; ?>">
                    <button class="btn btn-outline-light" type="submit">Cari</button> <!-- Light button -->
                </form>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <h1 class="my-4 text-center">Daftar Buku</h1>

        <!-- Tampilan buku pake card -->
        <div class="row">
            <?php
            // Query buat cari buku
            $search = isset($_GET['search']) ? $_GET['search'] : '';
            $query = "SELECT * FROM buku WHERE judul LIKE '%$search%' OR penulis LIKE '%$search%'";
            $result = $conn->query($query);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "
                    <div class='col-md-4 mb-4'>
                        <div class='card h-100'>
                            <div class='card-body'>
                                <h5 class='card-title'>{$row['judul']}</h5>
                                <h6 class='card-subtitle mb-2 text-muted'>Penulis: {$row['penulis']}</h6>
                                <p class='card-text'>Penerbit: {$row['penerbit']}</p>
                                <p class='card-text'>Tahun Terbit: {$row['tahun_terbit']}</p>
                            </div>
                        </div>
                    </div>";
                }
            } else {
                echo "<div class='col-12 text-center'><p>Tidak ada buku ditemukan</p></div>";
            }
            ?>
        </div>
    </div>

    <footer class="footer text-center py-3 mt-4">
        <p>&copy; Farid Maulana Suherman. Prakweb2024.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
</body>

</html>