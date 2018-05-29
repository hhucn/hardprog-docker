# Docker für Hardwarenahe Programmierung

## Docker-Image bauen und laufen lassen

Im Ordner, in welchem sich das Dockerfile befindet muss folgender Befehl ausgeführt werden, um das Image zu bauen:

    docker build -t hardprog-image .

Danach kann ein Container erzeugt werden:

    docker run -it -v "$PWD":/data -w /data hardprog-image

Dies öffnet eine bash, in welcher gearbeitet werden kann.
In diesem Beispiel wird mit `-v` das aktuelle Verzeichnis (`"$PWD"`) auf `/data` im Container gemounted.
`/data` ist auch das working directory, welches mit `-w` angegeben wird.

Die Syntax für einen allgemeinen lokalen Pfad lautet demnach:

    docker run -it -v <path/to/workdir>:/data -w /data hardprog-image

Dateien, die innerhalb des Containers erzeugt werden, gehören dem root-User des Containers. Mit

    -u $(id -u):$(id -g)

kann dies manipuliert werden. Beispiel:

    docker run -it -u $(id -u):$(id -g) -v "$PWD":/data -w /data hardprog-image

Die beiliegende run.sh kann ausgeführt werden, um den docker-Container zu starten.
Mit

    alias hardprog='path/to/run.sh'

kann ein alias angelegt werden.
Dann kann mit `hardprog` eine bash im docker-Container gestartet werden, oder mit `hardprog gcc helloworld.c -o program` sogar gcc-Befehle direkt ausgeführt werden.
