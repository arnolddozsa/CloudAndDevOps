# Online edu 

    A projekt a publikus github monorepoból indul ki:
    https://github.com/arnolddozsa/online-edu.git

    Online tanfolyam, tanárok és diákok regisztrálhatnak, a tanár létrehozhat kurusokat, és hozzájuk tartozó vizsga kérdéssort, válaszokkal. 
    Diákok regisztrálhatnak, felvehetik a kurzusokat és a kurzus végén a quiz kitöltésével érnek el eredményt
    Egy tanár teszt: 
    felh.: asd
    jelszó: asd
    
    Egy hallgató teszt: 
    fel.: b
    jelszó: b

    Egyszerű felület frontend (angular), és backend külön (nodejs express)

## Indítás
run.sh fájl indításával

Meghagytam a frontend és backend elérhetőségét hogy ellenőrizhető legyen 
Tehát :

    onlineedu.test:4000 frontend
    api.onlineedu.test:3000 backend
    onlineedu.test nginx proxy frontend terhelhető max 10 req / perc

## Tools

    iptables: portszűréshez
    bind9: onlineedu.test dns bejegyzésekhez és névfeloldáshoz
    postman/newman: teszteléshez (teszteléskor a konténerben kiadja a teszteredményeket konzolra)
    nginx: terhelés limit 10 kérés / perc max
    pm2: a frontend konténerében pm2 monit futtatása

## hosts file-ba két bejegyzés a dns miatt

    192.168.30.6 onlineedu.test:4000 frontend
    192.168.30.4 api.onlineedu.test:3000 backend
    192.168.30.5 dns szerver
    192.168.30.9 onlineedu.test nginx proxyszerver

## Konténerek:

### mongo
Adatbázis

### mongo-import
Adatbázis adatok importálása

### backend
api 

### bind9
dns szerver

### frontend
frontend szerver

### newman
postman teszter

### nginx
frontend proxy szerver


## Egyéb docker parancsok (nem használt csak nekem segítség)

### Image létrehozás

    dockercompose up --build

### Image teljes újragenerálás

    docker build --no-cache

### Kimentés
    docker save -o onlineedu.tar onlineedu:latest

### Célgépen betöltés
    
    docker load -i onlineedu.tar

### Futtatás

    docker run -d onlineedu:latest

