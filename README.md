# Strato-dyndns-linux
Das ist ein kleines Skript um die IP-Adresse für eine Strato Domain zu aktualisieren.
<br>
## Setup
1. Lade die `strato-dyndns.sh` herunter und verschiebe sie in einen von dir wählbaren Ordner.
2. Offne die Datei `strato-dyndns.sh` und setze bei `passwort`, `benutzer` und `domain` deine Werte, die du in deinem Strato-Konto findest. Nicht vergessen die Datei zu speichern :D.
## Setup Cron
Cron ist ein Linux Dienst mit dem man Prozesse zu einer angegebenen Zeit ausführen kann.
1. Installieren von [cron](https://de.wikipedia.org/wiki/Cron) und [curl](https://de.wikipedia.org/wiki/CURL)
``` shell
sudo apt-get install cron curl
```

2. Zugriffsrechte anpassen
``` shell
sudo chmod +x [Dein Pfad zum Skript]/strato-dyndns.sh
```

3. Öffnen des Crontabs
``` shell
sudo crontab -e
```

4. Bearbeiten des Crontabs <br>
Füge diese Zeile ganz unten ein und trage deinen Pfad zum Skript ein.
```
*/20 * * * * /[Dein Pfad zum Skript]/strato-dyndns.sh >/dev/null 2>&1
```
<p align="center">
<img src="https://data.jonnytutorials.de/img/strato-dyndns-github/1.png" alt="cron-edit">
</p>

5. Cron neustarten
``` shell
sudo systemctl restart cron
```
### Fertig! Fehler kannst du [hier](https://github.com/jonnytutorials/Strato-dyndns-linux/issues/new) melden. Für Verbesserungsvorschläge steht mein [Discord Server](https://discord.gg/s9tD46Fwh8) zur Verfügung.
