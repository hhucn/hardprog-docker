# Docker für Hardwarenahe Programmierung

## Docker-Image bauen und laufen lassen

Im Ordner, in welchem sich das Dockerfile befindet muss folgender Befehl ausgeführt werden, um das Image zu bauen:

    docker build -t hardprog .

Danach kann ein Container erzeugt werden:

    docker run -it -v "$PWD":/data -w /data hardprog

Dies öffnet eine bash, in welcher gearbeitet werden kann.
In diesem Beispiel wird mit `-v` das aktuelle Verzeichnis (`"$PWD"`) auf `/data` im Container gemounted.
`/data` ist auch das working directory, welches mit `-w` angegeben wird.

Die Syntax für einen allgemeinen lokalen Pfad lautet demnach:

    docker run -it -v <path/to/workdir>:/data -w /data hardprog

Dateien, die innerhalb des Containers erzeugt werden, gehören dem root-User des Containers. Mit `-u $(id -u):$(id -g)` kann dies manipuliert werden. Beispiel:

    docker run -it -u $(id -u):$(id -g) -v "$PWD":/data -w /data hardprog
