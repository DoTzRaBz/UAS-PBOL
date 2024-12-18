Racing Simulation and Scoring Application
Deskripsi Proyek
Aplikasi Simulasi Penilaian Balap adalah sebuah sistem manajemen komprehensif untuk melacak dan mengelola data balapan Formula 1 dan MotoGP. Aplikasi ini memungkinkan pengguna untuk:

Mengelola data pembalap
Mencatat event balap
Merekam hasil race
Menghitung poin dan klasemen
Fitur Utama
Manajemen Pembalap

Tambah, edit, dan hapus pembalap
Unggah foto pembalap
Lacak poin dan posisi klasemen
Manajemen Race

Tambah, edit, dan hapus event balap
Tentukan kategori (F1/MotoGP)
Unggah foto sirkuit
Pencatatan Hasil Race

Input posisi finish pembalap
Hitung poin otomatis
Update klasemen secara real-time
Teknologi yang Digunakan
Bahasa Pemrograman: Java
Framework UI: JavaFX
Database: MySQL
Konektivitas Database: JDBC
Struktur Database
Proyek menggunakan database db_racing dengan tabel-tabel berikut:

pembalap

Menyimpan informasi detail pembalap
Kolom kunci: id_pembalap, nama_pembalap, tim, total_poin
race_event

Menyimpan informasi event balap
Kolom kunci: id_race, nama_race, tanggal, kategori
hasil_race

Mencatat hasil setiap race
Kolom kunci: id_hasil, id_race, id_pembalap, posisi_finish
peserta_race

Menghubungkan pembalap dengan race
Kolom kunci: id_race, id_pembalap
Prasyarat
Java Development Kit (JDK) 8 atau lebih baru
MySQL Server
MySQL Connector/J
Instalasi
Clone repository
Impor database dari file SQL yang disediakan
Sesuaikan koneksi database di Koneksi.java
Jalankan aplikasi melalui MainApp.java
