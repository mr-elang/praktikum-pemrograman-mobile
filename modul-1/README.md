# Tugas 1 Pemrograman Mobile - Class Queue dengan Dart
| Informasi | Detail |
|---|---|
| Nama  | Nuh Elang Yusarsadam |
| NIM   | H1D024070 |
| Shift KRS | A |
| Shift Akhir | D |

## Konsep Queue

Class `Queue<T>` pada `queue.dart` berisi operasi berikut:

- `enqueue(item)`: menambahkan item ke bagian belakang antrian.
- `pop()`: mengeluarkan dan mengembalikan item paling depan. Jika antrian kosong, operasi ini menghasilkan `StateError`.
- `isEmpty`: memeriksa apakah antrian kosong.
- `length`: mendapatkan jumlah item dalam antrian.

## Menjalankan Program

Pastikan Dart SDK sudah terpasang, buka terminal pada folder proyek dan jalankan:

```powershell
dart run queue.dart
```

## Contoh Alur

Program memasukkan nama `Elang`, `Inas`, dan `Faqih` secara berurutan. Setelah itu, dua orang pertama dikeluarkan:

```text
Antrian awal:

Elang masuk ke antrian.
Antrian sekarang: Elang

Inas masuk ke antrian.
Antrian sekarang: Elang -> Inas

Faqih masuk ke antrian.
Antrian sekarang: Elang -> Inas -> Faqih

Proses pop dari antrian:

Elang keluar dari antrian.
Antrian sekarang: Inas -> Faqih

Inas keluar dari antrian.
Antrian sekarang: Faqih
```