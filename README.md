# Strato-dyndns-linux
Das ist ein kleines Skript um die IP-Adresse für eine Strato Domain zu aktualisieren.
<br>
## Setup
1. Lade die `dyndns.sh` herunter und verschiebe sie in einen von dir wählbaren Ordner.
2. Offne die Datei `dyndns.sh` und setze bei `passwort`, `benutzer` und `domain` deine Werte, die du in deinem Strato Konto findest. Nicht vergessen die Datei zu speichern :D.
## Setup Cron
Cron ist ein Linux Dienst mit dem man Prozesse zu einer angegebenen Zeit auführen kann. Mehr [hier](https://de.wikipedia.org/wiki/Cron)
1. Installieren von Crontab
``` shell
sudo apt-get install cron 
```
2. Öffnen des Crontabs
``` shell
sudo crontab -e
```
3. Bearbeiten des Crontabs
Füge diesen text ganz unten ein
```
*/20 * * * * /[Dein Pfad zum Skript]/dyndns.sh >/dev/null 2>&1
```
[Hier kommt noch ein Bild] <br>
4. Crontab Neustarten
``` shell
sudo systemctl restart cron
```

[Fehler Melden](https://github.com/jonnytutorials/Strato-dyndns-linux/issues/new) - 
[![Discord](https://discordapp.com/api/guilds/743062575775875143/embed.png?style=shield)](https://discord.gg/s9tD46Fwh8)
