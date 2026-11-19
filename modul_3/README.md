# Modul 3 - Login, Penyimpanan Preferensi, dan Navigasi

Project Flutter ini merupakan latihan membuat alur login sederhana, menyimpan nama pengguna secara lokal, serta berpindah halaman melalui navigation drawer.

## Video Record Hasil Aplikasi

<table><tr><td>
    


</td></tr></table>

## Fitur

- Form login dengan input username dan password.
- Login demo menggunakan username `admin` dan password `admin`.
- Menampilkan dialog untuk hasil login.
- Menyimpan username dengan package `shared_preferences`.
- Menampilkan username tersimpan pada halaman Home.
- Navigation drawer untuk berpindah antara halaman Home dan About.

## Struktur Folder `lib/`

```text
lib/
├── about_page.dart   # Halaman About dengan navigation drawer
├── home_page.dart    # Halaman Home dan pembacaan username tersimpan
├── login_page.dart   # Form login demo dan penyimpanan username
├── main.dart         # Entry point, membuka LoginPage
└── sidemenu.dart     # Navigation drawer untuk Home dan About
```

## Menjalankan Aplikasi

Pastikan Flutter SDK telah terpasang, lalu jalankan perintah berikut dari folder `modul_3`:

```bash
flutter pub get
flutter run
```
