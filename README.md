# Tugas 7
### 1.Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget yang tidak dapat berubah setelah widget tersebut dibangun. 
Jadi, semua konfigurasi dari widget ini sudah ditentukan pada awal pembuatan. Contoh stateless widget adalah `Text`, `Icon`, `IconButton`. 
Stateful widget adalah widget yang dapat berubah state-nya seiring waktu. Iwidget yang bisa berubah ketika user berinteraksi dengannya. 
Contoh stateful widget adalah `Checkbox`, `Radio`, `Slider`, dan `Textfield`.
### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Widget yang digunakan adalah stateless widget. Stateless widget adalah widget yang statis, tidak dapat berubah, semua konfigurasinya ditentukan di awal pembuatan.
1. Scaffold: Memberikan struktur dasar halaman, seperti AppBar dan body.
2. AppBar: Menampilkan judul di bagian atas aplikasi dengan judul "Shop All Day".
3. Padding: Memberikan jarak di sekitar Column utama.
4. Column: Menyusun widget secara vertikal di dalam body.
5. Row: Digunakan untuk menampilkan tiga InfoCard secara horizontal.
6. InfoCard: Kartu khusus yang menggunakan Card widget untuk menampilkan informasi seperti NPM, Nama, dan Kelas.
7. Card: Memberikan tampilan kartu untuk widget InfoCard.
8. GridView.count: Menyusun beberapa ItemCard dalam bentuk grid dengan tiga kolom.
9. ItemCard: Menampilkan kartu dengan ikon dan teks untuk setiap item dalam daftar items.
10. Material: Menentukan warna latar belakang dan bentuk untuk ItemCard.
11. InkWell: Menangani interaksi pada ItemCard, seperti menampilkan SnackBar ketika kartu ditekan.
12. SnackBar: Menampilkan pesan saat pengguna menekan salah satu ItemCard.
13. Icon dan Text: Menampilkan ikon dan teks pada setiap kartu ItemCard.
### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` digunakan dalam stateful widget untuk memberi tahu framework bahwa ada perubahan dalam state yang perlu diperbarui. 
Ketika `setState()` dipanggil, Flutter akan memanggil kembali metode `build()` untuk memperbarui tampilan UI sesuai dengan perubahan state. 
Variabel yang terdampak oleh fungsi ini adalah semua variabel yang didefinisikan dalam kelas state tersebut, terutama yang digunakan dalam metode `build()`.
### 4. Jelaskan perbedaan antara const dengan final.
`const` digunakan untuk mendeklarasikan variabel yang nilainya tidak dapat diubah setelah ditetapkan, jadi nilai ini harus diketahui pada waktu compile. Contoh `const pi = 3.14;`
Variabel `final` di-assign nilainya hanya satu kali, tetapi value tersebut bisa ditentukan ketika runtime. Jadi value dari variabel `final` bisa di-assign ketika program dieksekusi, tidak harus saat waktu compile. Contoh, `final date = DateTime.now();`
### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
1. Membuat direktori shop-all-day-mobile pada lokal
2. Generate proyek Flutter pada terminal dengan command `flutter create shop_all_day`.
3. Membuat file baru yaitu menu.dart pada direktori shop_all_day/lib
4. Memindahkan baris berisi class MyHomePage dan juga class _MyHomePageState ke menu.dart, 
menambkan impor shop_all_day/menu.dart agar program mengenali class MyHomePage.
5. Mengubah widget pada menu.dart menjadi stateless widget
6. Membuat InfoCard dan juga Button Card dengan Icon pada menu.dart
6. Mengubah tema warna aplikasi pada main.dart
7. Menambahkan variabel color pada ItemHomepage
8. Menambahkan color pada masing-masing tombol
9. Melakukan git add, commit, dan push
