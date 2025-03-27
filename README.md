# Tutorial 7 - Basic 3D Game Mechanics & Level Design

## Penjelasan Proses Pengerjaan Tutorial 7

### 1. Basic 3D Plane Movement

Player bisa melakukan beberapa movement denga keyboard, yaitu forward, backward, left, right, jump, interact. Tombol yang dipakai selama movement, Forward dengan tombol W, Backward dengan tombol S, Left dengan tombol A, Right dengan tombol D, Jump dengan tombol Space, dan Interact dengan tombol E. Selain itu, Player dapat menghadap ke arah lain dengan menggerakan camera melalui mouse.

### 2. Object Interaction

Interaksi yang dapat dilakukan dengan menekan tombol E adalah mengubah light energy menjadi redup atau terang pada Scene Level. Object yang Player perlu berinteraksi berbentuk Kotak Merah dimana Player perlu mendekati dan menghadap keatas untuk dapat berinteraksi.

### 3. Membuat Level 3D Menggunakan CSG

Pada Scene Level 1, Player akan berjalan di Scene World1 yang terdapat beberapa hal diantaranya adalah Object lampu, jurang, dan finish line. World 1 memakai material sehingga terlihat berbagai variasi warna didalamnya. Pada Scene Level dan Level1, terdapat Area Trigger berbentuk Sphere dan berwarna Hijau. Jika Player collision dengan area trigger di Scene Level, maka Player akan berpindah Scene ke Level1 untuk melanjutkan permainan. Pada Scene Level1, saat Player terjatuh ke jurang akan terjadi collision dengan area trigger sehingga Player akan kembali ke Scene Level1 untuk memulai permainan kembali. Sedangkan, jika Player berhasil melewati jurang dengan selamat kemudian menghampiri area trigger yang ada setelahnya, maka Player dinyatakan telah berhasil menyelesaikan permainan yang ditandai dengan pindahnya Scene ke Scene WinScreen.


### 4. Eksplorasi Mechanics 3D

Tambahan Game Mechanics yang dilakukan adalah Player dapat melakukan Sprinting dan Crouching. Dengan fokus utama ke kecepatan pada Player, dengan menekan tombol Shift dan sambil bergerak bisa membuat Player Sprinting ke arah yang ditentukan Player. Kemudian, dengan menekan tombol M cukup sekali untuk bisa membuat Player Crouching sehingga Player akan bergerak dengan sangat lambat layaknya Player melakukan crouching. Setelah itu, jika Player menekan lagi tombol M cukup sekali akan menonaktifkan crouching sehingga kecepatan Player akan kembali Normal. Tanpa melakukan Sprinting dan Crouching, kecepatan dari pergerakan Player akan Normal dimana diantara Sprinting dan Crouching.
