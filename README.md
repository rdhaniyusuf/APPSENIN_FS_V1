Khusus PM

#Cara penggunaan

1. Buat direktori "Appsenin_FS"

2. buka direktori "Appsenin_FS" lalu tekan tombol shift+klik kanan -> open terminal

3. masukkan skrip berikut

```sh
git pull https://github.com/rdhaniyusuf/APPSENIN_FS_V1.git . --recurse-submodules
```

#Done

#Backend

1. masih di dalam terminal jalankan perintah

```sh
py -m venv env
```

2. jalankan ##env

```sh
env\scripts\activate
```

3. install depedensi python pada folder backend\req.txt

```sh
pip install -r backend\req.txt
```

4. jalankan Fastapi

```sh
fastapi dev backend\main.py
```
atau production

```sh
fastapi run backend\main.py
```

#Frontend

1. buka terminal baru di folder <code>APPSENIN_FE</code>
2. jalankan
```sh
bun install
```
3. jalankan server

```sh
bun run dev
```

atau 
```sh
bun run build

bun run start
```

4. jalankan di webbrowser localhost:3000
