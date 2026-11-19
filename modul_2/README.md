# Modul 2 - Dasar Flutter dan Form Produk

Project Flutter ini berisi latihan dasar pembuatan antarmuka menggunakan widget Material. Aplikasi utama menampilkan daftar produk statis, sementara form produk dapat meneruskan data yang dimasukkan ke halaman detail.

## Screenshot Hasil Aplikasi

<table><tr><td>
    
<img width="621" height="1104" alt="image" src="https://github.com/user-attachments/assets/f0627011-a16c-4fa0-b1a7-0c73f403c4b9" />

</td></tr></table>

## Fitur dan Materi

- Menampilkan daftar produk contoh menggunakan `ListView`, `Card`, dan `ListTile`.
- Membuat form input kode, nama, dan harga produk menggunakan `TextField`.
- Menggunakan `TextEditingController` untuk membaca dan mengelola input form.
- Berpindah halaman dengan `Navigator` dan `MaterialPageRoute`.
- Menampilkan data produk yang diteruskan dari form pada halaman detail.
- Contoh penggunaan widget `Row`, `Column`, dan tampilan Hello World.

## Struktur Folder `lib/`

```text
lib/
├── column_widget.dart       # Contoh layout dengan Column
├── hello_world.dart         # Contoh halaman Hello World
├── main.dart                # Entry point, membuka ProdukPage
├── row_widget.dart          # Contoh layout dengan Row
└── ui/
    ├── produk_detail.dart   # Menampilkan detail produk
    ├── produk_form.dart     # Form input produk
    └── produk_page.dart     # Daftar produk statis
```

## Menjalankan Aplikasi

Pastikan Flutter SDK telah terpasang, lalu jalankan perintah berikut dari folder `modul_2`:

```bash
flutter pub get
flutter run
```
