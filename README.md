# Ruang Fit

Website statis responsif untuk diet dan kebiasaan harian.

## Deploy dari HP ke GitHub + Vercel
1. Ekstrak ZIP.
2. Upload semua file (`index.html`, `manifest.json`, `sw.js`, `cloud_setup.sql`, `README.md`) ke root repository GitHub.
3. Import repository ke Vercel. Tidak perlu build command; framework preset `Other` dan output directory `.`.
4. Setelah deploy via HTTPS, buka URL Vercel dan pilih menu browser > Add to Home screen / Tambahkan ke layar utama.

## Penyimpanan lokal
Autosave menggunakan localStorage di browser perangkat. Unduh backup JSON secara berkala. Data browser dapat hilang jika data situs dihapus.

## Aktifkan sinkronisasi cloud (opsional, Supabase)
1. Buat project di https://supabase.com.
2. Buka Project Settings > API, salin Project URL dan anon/publishable key. Jangan pernah pakai `service_role` key di website.
3. Buka SQL Editor dan jalankan isi `cloud_setup.sql`.
4. Buka website Ruang Fit, bagian Sinkronisasi antarperangkat. Masukkan URL + anon/publishable key, klik Simpan konfigurasi.
5. Daftar akun memakai email dan password. Jika konfirmasi email aktif, konfirmasi email dulu lalu login.
6. Untuk pertama kali, pilih `Kirim data lokal ke cloud`. Di perangkat lain, masukkan URL/key yang sama, login dengan akun yang sama, lalu pilih `Pulihkan data dari cloud`.
7. Setelah login, perubahan lokal mencoba autosync ke cloud. Jika browser lain punya data yang berbeda, gunakan backup dulu dan pilih secara sadar apakah mau mengirim data lokal atau memulihkan data cloud.

## Keamanan dan privasi
- Data lokal tidak keluar dari perangkat kecuali fitur cloud diatur dan kamu login.
- Supabase anon/publishable key memang digunakan di frontend; keamanan data bergantung pada Row Level Security. Jalankan SQL yang disertakan.
- Jangan bagikan password atau service-role key.
- Cloud sync ini menyimpan satu snapshot data per akun; bukan histori perubahan per field.

## Video latihan
Link latihan membuka video atau hasil pencarian YouTube. Periksa kecocokan gerakan dengan kemampuanmu, lakukan pemanasan, dan hentikan jika nyeri/pusing/sesak yang tidak biasa.
