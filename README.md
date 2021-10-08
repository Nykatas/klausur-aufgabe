# Klausur Aufgabe | Theoretischer Teil

Aufgabe einer Klausur in der 12 Klasse, Gymnasialstufe.

## Aufgabenstellung

1. Nennen Sie die Vorteile der modularen Programmierung.

2. Bei einem Computerspiel wird ein Ball auf dem Spielfeld bewegt und an den Rändern reflektiert, so wie beim Billard. Der Spieler muss versuchen, den Ball zu fangen. Folgende Aufgaben sollen in diesem Projekt von Unterprogramen erledigt werden:
   - Die Position (x, y : Integer) des Balles wird daraufhin überprüft, ob er sich am Spielfeldrand befindet.
   - DIe Richtung des Balles kehrt sich um (Vorzeichenwechsel).
   - Die Anzahl der Treffer werden ausgegeben.

   Schreiben Sie für die Unterprogramme jeweils den Programmkopf.

## Lösung

1. Vorteile der modularen Programmierung:

   - Übersichtlichkeit über das Projekt wird verbessert.
   - Module können einzeln geplant & programmiert werden.
   - Mehrere Menschen können an einem sowie an verschiedenen Modulen gleichzeitig arbeiten.
   - Man muss bestimmte Module nur einmal programmieren und kann sie anschließend immer wieder verwenden.

2. Programmköpfe der Unterprogramme:

```delphi
function isOnEdgeOfScreen(x, y : Integer):Boolean;
```

```delphi
function switchDirection(value : Integer):Integer;
```

```delphi
procedure printOutput(output : String);
```

# Klausur Aufgabe | Praktischer Teil

Aufgabe einer Klausur in der 12 Klasse, Gymnasialstufe.

## Aufgabenstellung

1. Schreiben Sie ein Unterprogramm zur Umrechnung des Bogenmaßes b in das Winkelmaß α.
   α = (180°/ϖ) * b | Die Konstante ϖ ist als pi in Delphi aufrufbar.

2. Schreiben Sie ein Unterprogramm, welches zu 3 gegebenen Längen prüft, ob die Dreiecksungleichung erfüllt ist und einen entsprechenden Hinweis ausgibt: showMessage(...). (Die Summe Zweier Seiten ist immer größer als die dritte)

3. Von einem Dreieck sind die drei Seiten einzulesen und die zugehörigen drei Winkel im Gradmaß, der Umfang und der Flächeninhalt zu berechnen! Verwenden Sie zur Berechnung der Winkel die vordefinierte arccos, die aus dem Kosinus den Winkel im Bogenmaß berechnet. (Achtung: die Dreiecksungleichung muss erfüllt sein)

c² = a² + b² - 2ab * cos(α) und A = √s(s - a)(s - b)(s - c) mit s = U/2

## Lösung

Die Lösung für die oben gestellten Aufgaben des praktischen Teils der Klausur sind im Quellcode zu finden. Dazu einfach die Datei **Unit1.pas** öffnen.

# Viel Spaß! ❤️
