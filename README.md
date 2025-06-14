# Guide

## Jika run container, pastikan HOST pada file .env isinya :
```
POSTGRES_HOST=db
POSTGRES_PORT=5432
POSTGRES_DB=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=mysecretpassword
```

## Jika run localhost, HOST pake localhost
```
POSTGRES_HOST=localhost
POSTGRES_PORT=5432
POSTGRES_DB=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=mysecretpassword
```

## Info lain
- environment variable menggunakan .env, bukan appsettings.json atau appsettings.Development.json
- port 8081: adalah untuk backend api
- port 8080: adalah untuk adminer (database viewer, mirip phpmyadmin) *jika tidak dipakai, bisa dihapus saja
- Terkait port, jika ada yg dibingungin, aku bisa bantu jelasin
- port database tidak di-ekspos ke public
- versi ASP.NET , postgres pakai yang **Latest**, bisa disesuaikan kalo memang perlu
- Dockerfile dan docker-compose.yml sudah ku config. bukan hasil generate visual studio
- pakai .env dan harus pake package DotNetEnv

## Data database
- terkait data database, itu di dump dulu jadi .sql, lalu direname jadi `init.sql` karena file ini nanti akan import lagi

## How to run
Up
`sudo docker compose up --build -d`

Down
`sudo docker compose down`
