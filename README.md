Nama : Kayla Agrata Budiawan
Kelas : PBP C
NPM : 2306245693

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

# Tugas 8
### 1.  Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. 
Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
`const` pada Flutter digunakan untuk mendeklarasikan compile-time constants. Ketika sebuah variabel didefinisikan
dengan `const`, ini artinya value dari variabel tersebut sudah pasti dan tidak bisa diubah selama eksekusi program. 
Ini berarti nilai atau objek yang ditandai dengan const hanya dihitung satu kali dan tidak akan berubah selama runtime
Keuntungan dari menggunakan `const`:
1. `const` dapat membantu optimisasi performa, karena ketika ada widget yang ditandai dengan  `const`, Flutter bisa
mengenalinya sebagai objek yang immutable. Sehingga, Flutter dapat menggunakan kembali objek tersebut, tidak perlu membuat objek baru.
Kata kunci const menginstruksikan Dart VM untuk melakukan optimasi pada waktu compile.
2. Meningkatkan Readability
Menggunakan `const` menandakan intensi untuk membuat sebuah objek immutable sehingga bisa lebih dimengerti oleh diri sendiri dan juga developer.
3. Compile-Time Safety
Error yang berkaitan dengan value dari constant dapat ditangkap di compile time bukan runtime.
4. Kode yang Lebih Aman
Dengan `const`, kita memastikan bahwa nilai tidak akan berubah secara tidak sengaja, sehingga meminimalisir potensi bug yang mungkin muncul akibat 
perubahan nilai yang tidak diinginkan.
`const` sebaiknya digunakan ketika membuat immutable data object seperti teks atau warna, pada widget yang stateless, dan juga pre-defined values
seperti API endpoints contoh `const String apiURL = const "https://api.example.com"`
`const sebaiknya tidak digunakan ketika nilai bergantung pada input atau harus di-update berdasarkan input user, 
ketika nilai akan berubah atau dimodifikasi, dan pada widget yang stateful.

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Row memungkinkan untuk menyelaraskan widget child sepanjang garis horizontal, sedangkan column menyelaraskan widget child dalam arah vertikal.
Row ideal untuk menempatkan elemen secara berdampingan, seperti tombol di toolbar atau ikon di menu navigasi. Main axis dari Row adalah horizontal
(kiri ke kanan) sementara cross axist-nya vertikal (atas ke bawah). Column Cocok untuk menumpuk elemen di atas satu sama lain, seperti bidang formulir atau daftar pesan.
Main axis dari Column adalah vertikal (atas ke bawah) sementara cross axist-nya horizontal (kiri ke kanan).

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Elemen input yang digunakan
- TextFormField: Digunakan untuk input teks seperti product, description
- Elevated Button: Sebagai button untuk menyimpan dan mengirim data form yang sudah diisi

Elemen input yang tidak digunakan
- Checkbox: Digunakan untuk menerima input boolean (true/false). Contohnya pada form yang meminta pengguna menyetujui syarat dan ketentuan.
- Radio: Memungkinkan pengguna memilih satu opsi dari beberapa pilihan yang disediakan. Cocok untuk pilihan tunggal seperti "jenis kelamin" atau "kategori produk".
- DropdownButton: Menyediakan pilihan dari daftar dropdown. Berguna jika ada banyak pilihan tapi hanya satu yang dapat dipilih, misalnya untuk memilih negara atau kota.
- Slider: Memungkinkan pengguna memilih nilai dari rentang tertentu, cocok untuk input nilai skala seperti memilih jumlah atau ukuran tertentu.
- DatePicker: Widget khusus untuk input tanggal, berguna pada form yang membutuhkan data tanggal seperti tanggal lahir atau tanggal pemesanan.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Mengatur theme pada flutter agar konsisten dapat dilakukan dnegan cara  mendefinisikan ThemeData pada root widget MaterialApp. Dengan mendefinisikan warna utama (`primary`) dan sekunder (`secondary`) dalam `colorScheme`, serta warna latar belakang (`scaffoldBackgroundColor`), semua bagian aplikasi yang merujuk pada tema akan otomatis mengikuti pengaturan tersebut.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
1. Menggunakan Navigator.push dan Navigator.pop
Pendekatan dasar ini menggunakan Navigator.push untuk menambahkan halaman baru ke dalam tumpukan (stack) halaman dan Navigator.pop untuk kembali ke halaman sebelumnya. Misalnya, pada aplikasi e-commerce, untuk membuka form untuk input produk menggunakan Navigator.push.
2. Navigator.pushReplacement
Navigator.pushReplacement digunakan untuk mengganti halaman saat ini dengan halaman baru tanpa menambahkan halaman baru ke dalam stack. Ini berguna untuk navigasi di mana pengguna tidak bisa kembali ke halaman sebelumnya, seperti setelah berhasil login.
3. Mengguanakan Drawer
Drawer di Flutter yang bertujuan untuk menampilkan menu samping (sidebar) dalam aplikasi. Drawer ini memiliki beberapa item yang dapat digunakan untuk navigasi antar halaman, seperti "Halaman Utama" dan "Tambah Produk".



