# Modul 4 & 5 - Aplikasi CRUD Flutter (`tokokita`) & REST API CodeIgniter 4 (`toko-api`)

Aplikasi mobile manajemen data produk (**Toko Kita**) yang terdiri dari aplikasi frontend **Flutter** (`tokokita`) dan backend RESTful API **CodeIgniter 4** (`toko-api`) dengan database **MySQL** (`toko_api`).

---

## Video Record Hasil Aplikasi

<p>



</p>

---

## Riwayat Pengerjaan (Git Tags)
- **Tag `modul-4`**: Pembuatan database `toko_api`, pembuatan backend REST API CodeIgniter 4 (`toko-api`), pengujian endpoint di Postman, serta pembuatan Model dan UI statis Flutter (`tokokita`).
- **Tag `modul-5`**: Integrasi penuh CRUD pada `tokokita` (Registrasi, Login, List, Create, Detail, Update, Delete, dan Logout) dengan REST API `toko-api`.

---

## Arsitektur & Struktur Folder (`lib/`)

    lib/
    ├── bloc/                  # Business Logic & komunikasi ke API
    │   ├── login_bloc.dart
    │   ├── logout_bloc.dart
    │   ├── produk_bloc.dart
    │   └── registrasi_bloc.dart
    ├── helpers/               # Konfigurasi HTTP, URL API, exception, & sesi token
    │   ├── api.dart
    │   ├── api_url.dart
    │   ├── app_exception.dart
    │   └── user_info.dart
    ├── model/                 # Model data & parsing JSON
    │   ├── login.dart
    │   ├── produk.dart
    │   └── registrasi.dart
    ├── ui/                    # Halaman antarmuka pengguna (Screens)
    │   ├── login_page.dart
    │   ├── produk_detail.dart
    │   ├── produk_form.dart
    │   ├── produk_page.dart
    │   └── registrasi_page.dart
    ├── widget/                # Komponen dialog kustom (Sukses & Gagal)
    │   ├── success_dialog.dart
    │   └── warning_dialog.dart
    └── main.dart              # Entry point & pengecekan status login (token)

## Backend (`toko-api` - CodeIgniter 4)
   - `app/Config/Database.php`: Konfigurasi koneksi ke database MySQL `toko_api`.
   - `app/Config/Routes.php`: Definisi endpoint `/registrasi`, `/login`, dan grup route `/produk`.
   - `app/Controllers/`: `RestfulController.php`, `RegistrasiController.php`, `LoginController.php`, dan `ProdukController.php`.
   - `app/Models/`: `MRegistrasi.php`, `MMember.php`, `MLogin.php`, dan `MProduk.php`.

---

## Spesifikasi REST API (`toko-api`)

Base URL lokal: `http://localhost/toko-api/public`

| Fitur | Method | Endpoint | Keterangan |
| :--- | :--- | :--- | :--- |
| **Registrasi** | `POST` | `/registrasi` | Mendaftarkan member baru ke tabel `member` |
| **Login** | `POST` | `/login` | Autentikasi user & generate `auth_key` ke `member_token` |
| **List Produk** | `GET` | `/produk` | Mengambil seluruh daftar produk |
| **Create Produk** | `POST` | `/produk` | Menambahkan produk baru ke tabel `produk` |
| **Detail Produk** | `GET` | `/produk/{id}` | Mengambil detail produk berdasarkan ID |
| **Update Produk** | `POST` / `PUT` | `/produk/{id}/update` atau `/produk/{id}` | Memperbarui data produk berdasarkan ID |
| **Delete Produk** | `DELETE` | `/produk/{id}` | Menghapus data produk berdasarkan ID |

---

## Cara Menjalankan Aplikasi

1. **Setup Backend (`toko-api`) & Database (`toko_api`):**
   - Salin folder `toko-api` ke direktori `htdocs` pada XAMPP (`/opt/lampp/htdocs/` di Linux atau `C:\xampp\htdocs\` di Windows).
   - Nyalakan service Apache dan MySQL pada XAMPP.
   - Buat database `toko_api` di phpMyAdmin beserta tabel `member`, `member_token`, dan `produk`.
2. **Konfigurasi URL API di Flutter (`tokokita`):**
   - Buka file `lib/helpers/api_url.dart`.
   - Ubah nilai `baseUrl` sesuai perangkat pengujian:
     - Emulator Android: `http://10.0.2.2/toko-api/public`
     - Perangkat Android Fisik: `http://<IP-LOKAL-KOMPUTER>/toko-api/public`
3. **Install Dependencies & Jalankan:**
   - Jalankan `flutter pub get` untuk mengunduh package.
   - Jalankan `flutter run` untuk membuka aplikasi di perangkat.