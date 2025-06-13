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

## environment variable menggunakan .env, bukan appsettings.json atau appsettings.Development.json