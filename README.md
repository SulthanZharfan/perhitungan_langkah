# <img src="https://private-user-images.githubusercontent.com/74038190/250967242-a2605358-6b87-44ab-87fb-20dcdc5f9ef2.gif?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NDM3NjgzMjksIm5iZiI6MTc0Mzc2ODAyOSwicGF0aCI6Ii83NDAzODE5MC8yNTA5NjcyNDItYTI2MDUzNTgtNmI4Ny00NGFiLTg3ZmItMjBkY2RjNWY5ZWYyLmdpZj9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTA0MDQlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwNDA0VDEyMDAyOVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPWYyZWEyMjhlMTIwNzRkNTE2MWJlZGMxMjk1MGEzMWY3MDAyNjc4NzY1MjZiOWNhM2ZkNjZjMzk2MGJkZGZlYTcmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.zyYzSHuTf1EogsfGONRy7WMqZSTc6g965QbA3pKlFWM" width="50" height="50" /> Tugas Teori PBM Perhitungan Langkah <img src="https://user-images.githubusercontent.com/74038190/212284087-bbe7e430-757e-4901-90bf-4cd2ce3e1852.gif" alt="Exploding Head" width="50" height="50" /> 

icon | Nama | NPM |
:---: | :---: | :---: 
<img src="https://user-images.githubusercontent.com/74038190/216654095-6f6772e4-e433-4bba-9164-1ca6f463ac3f.gif" alt="Face in Clouds" width="50" height="50" />| Muhammad Sulthan Zharfan | 4522210016 | `SultanZharfan`
---

## 📝 Deskripsi

Ini adalah tugas Teori PBM Flutter: Aplikasi Penghitung Langkah
Aplikasi ini memanfaatkan sensor bawaan Android untuk menghitung jumlah langkah pengguna secara real-time. Dibuat menggunakan Flutter dengan integrasi pedometer dan permission_handler.

---

## 📸 Laporan
Berikut adalah penjelasan singkat dan screenshot dari hasil kodingan saya:

## Inspirasi
Inspirasi dari aplikasi ini datang dari kebutuhan untuk menjaga kebugaran dan menghitung aktivitas fisik harian seperti berjalan kaki.

## Cara kerja aplikasi:
1. Tampilan Awal
   - Saat pertama membuka aplikasi, pengguna melihat jumlah langkah = 0

   - Tersedia tombol: “Mulai Hitung Langkah”

2. Permintaan Izin
   - Saat tombol ditekan, aplikasi meminta izin untuk mengakses aktivitas fisik

   - Jika pengguna menyetujui, aplikasi mulai membaca langkah

   = Jika menolak, aplikasi menampilkan pesan error

3. Mulai Penghitungan

    - Setelah izin diberikan, sensor langsung aktif

    - Jumlah langkah ditampilkan dan terus bertambah saat pengguna berjalan


4. Manajemen Lifecycle

    - Jika aplikasi di-minimize dan dibuka kembali, data tetap aktif

    - Penggunaan WidgetsBindingObserver memastikan stream tetap berjalan
   

## Screen Shot Hasil

HALAMAN UTAMA
![langkah1](https://github.com/user-attachments/assets/fa12c7a9-dafb-4784-8aaa-7f5dcd72ef1f)

PENCET TOMBOL MULAI HITUNG LANGKAH(ACC DITOLAK)
![langkah2](https://github.com/user-attachments/assets/2f4d3822-c3fd-4195-8f29-3f5d36db8bf4)

PENCET TOMBOL MULAI HITUNG LANGKAH(DIMINTA ACC/ALLOW)
![langkah3](https://github.com/user-attachments/assets/fc8ed13e-6547-4736-935b-849b34529b77)

PENCET TOMBOL MULAI HITUNG(DITERIMA)
![langkah4](https://github.com/user-attachments/assets/21eee4af-e96f-4028-83bf-eb29b19daa22)



#SELESAI \(^0^)/
