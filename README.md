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

# Tugas 9
### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
1. Mendefinisikan struktur data
Model dapat memberikan sebuah struktur yang jelas untuk data yang dikirimkan atau diterima dari server. Ini memastikan bahwa aplikasi mengetahui fields apa yang akan didapatkan, tipenya, dan apakah membutuhkan validasi. Jika tidak ada model, maka data bisa jadi tidak sesuai dengan format yang diinginkan.
2. Validasi dan Mencegah Error
Pada Model terdapat logika validasi yang akan mengecek apakah data sesuai dengan kriteria spesifik sebelum diproses. Jika tidak ada model, data yang invalid dapat terkirim ke server, mengakibatkan behavior yang tidak diinginkan ketika server memproses data. 
3. Data Handling  yang lebih simpel
Dengan model, konversi data dari JSON ke object serta sebaliknya, menjadi lebih mudah dengan adanya method Flutter seperti `fromJson()` dan `toJson()`.

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
1. `pbp_django_auth` adalah library HTTP client wrapper untuk Flutter yang digunakan untuk bekerja dengan backend Django. Menyederhanakan proses authentication seperti login dan menggunakan cookies untuk memastikan bahwa program menggunakan session based authentication.
2. `request.get()` ini menggunakan library untuk mengirimkan HTTP GET ke sebuah URL `http://127.0.0.1:8000/json/`. Ini mengambil dat dari backend Django.
3. Library secara otomatis decode JSON responses
4. Handle autentifikasi dengan `CookiesRequest`
5. Mengirimkan data kepada server, fungsi `login` mengirimkan `username` dan `password` sebagai `POST` request kepada server

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookiesRequest` berfungsi untuk mengelola cookies secara otomatis dan mengelola session states dari banyak HTTP request. Fungsi utamanya adalah session management, yaitu memperbolehkan aplikasi untuk mempertahankan use session tanpa membutuhkan manual cookie management pada setiap proses. `CokkieRequest` instance perlu dibagikan ke pada seluruh komponen pada sebuah aplikasi Flutter karena ini memstikan konsistensi session management. Jika setiap komponen memiliki instancenya masing-masing, ini bisa menyebabkan isu pada autentifikasi dan session conflicts.

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
1. Pengambilan input dari pengguna, contoh pengguna memasukkan data melalui form yang terdiri dari beberapa `TextFormField`. Nilai tersebut disimpan dalam sebuag variabel state melalui fungsi `setState()`, contoh (__name, __desc, __price)
2. Validasi data untuk memastikan semua field diisi dengan, contoh `if(__form.key.currentState!.validate())`
3. Jika validasi berhasil, maka data akan dikirimkan ke server Django menggunakan metode POST. Dengan cara memanggil `request.postJson` dan mengirimkan data dalam format JSON.
4. Memeriksa respons dari server
Memeriksa apakah pengiriman data berhasil atau tidak, jika statusnya `success` maka notifikasi akan ditampilkan.
5. Menampilkan data di Flutter
Menggunakan `FutureBuilder` untuk mengambil data dari server dan menampilkannya dalam bentuk daftar. Dalam `FutureBuiler`, tampilkan daftar produk yang diambil dari server.
### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
1. Pada Flutter, proses registrasi yaitu user input `username` dan `password`. Validasi untuk memastikan semua fields telah terisi. Selanjutnya, mengirimkan data ke Django backend menggunakan `POST` request dengan `request.postJson`
2. Pada Django, Django menerima data via `/auth/register` endpoint, lalu melakukan validasi data. Setelah itu, Django membuat user dengan cara `User.objects.create_user()`. Jika berhasil, maka Django mengirimkan response kepada flutter. Jika ada error, Django mengirimkan pesan error yang sesuai.
3. Pada Flutter, proses login yaitu user input `username` dan `password`. Validasi untuk memastikan semua fields telah terisi. Selanjutnya, mengirimkan data ke Django backend menggunakan `POST` request dengan `request.login`.
4. Pada Django, Django menerima kredensial tersebut pada endpoint `/auth/login/`. Menggunakan `authenticate(username, password)` untuk verifikasi kredensial atau mengecek apakah pengguna sudah pernah dibuat sebelumnya. Jika autentikasi berhasil, sebuah session dibuat untuk pengguna tersebut dengan menggunakan `auth_login(request,user)`. Jika berhasil, maka Django mengirimkan response kepada flutter. Jika ada error, Django mengirimkan pesan error yang sesuai.

### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
1. Membuat aplikasi baru pada Django project dan menambahkan `django-cors-headers` pada `requirements.txt`
2. Membuat metode login, register, dan logout pada views.py pada aplikasi authentication serta menambahkan URL routing terhadap fungsi yang sudah dibuat pada file urls.py dalam folder authentication
3. Membuat objek `Provider`  baru yang akan membagikan instance `CookieRequest` dengan semua komponen yang ada di aplikasi.
4. Membuat login.dart dan register.dart. Mengubah main.dart agar ketika proyek dijalankan maka akan langung diredirect ke halaman login.
5. Menambahkan data yang sudah dibuat sebelumnya pada Django dengan cara membuka endpoint JSON lalu membuat model yang menyesuaikan dengan data JSON tersebut.
6. Membuat file list_productentry.dart untuk menampikan produk yang telah ditambahkan
7. Mengintegrasikan form flutter dengan Django, dengan cara membuat method `create_product_flutter` pada `main/views.py`. Menambahkan `CookiesRequest` pada `productentry_form.dart` serta memodifikasi `on Pressed` agar form dapat disimpan.
8. Implementasi fitur logout
9. Menyelesaikan semua masalah impor file yang dibutuhkan



