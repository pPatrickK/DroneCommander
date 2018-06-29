# This is a command based drone controller

* [MQTT Nachrichten Specs](#mqtt-nachrichten-specs)
  * [konkrete Befehle](#konkrete-befehle)
  * [Simple Beispiele](#simple-beispiele)

## MQTT Nachrichten Specs
Aufbau eines Befehls ist `{"id":1, "data": [] }`, wobei "id" die ID der jeweiligen Drohne und "data" eine Liste der Parameter des Befehls beschreibt.

Startzeitpunkt sollte bei direkter Befehlsausführung immer 0 sein. Über diesen Parameter wird die Möglichkeit gegeben Befehle verzögert auszuführen. Dieser Zeitpunkt liegt relativ zum Empfang der Nachricht. Soll der Befehl also 5 Sekunden in der Zukungs ausgeführt werden kann hier ein Wert von 5.0 gesetzt werden.


### konkrete Befehle
| starten |     |
| ------ | --- |
| Pfad | *crazyflie/start* |
| Beispiel | `{"id":1, "data": [0.0, 1.0, 0.5] }` |
| Aufbau von data | `[Startzeitpunkt, Dauer, Höhe]` |

| landen |     |
| ------ | --- |
| Pfad | *crazyflie/land* |
| Beispiel | `{"id":1, "data": [0.0, 1.0] }` |
| Aufbau von data | `[Startzeitpunkt, Dauer]` |

| landen auf bestimmter Höhe |     |
| ------ | --- |
| Pfad | *crazyflie/landwithheight* |
| Beispiel | `{"id":0, "data": [0.0, 0.02, 1.0] }` |
| Aufbau von data | `[Startzeitpunkt, Zielhöhe, Dauer]` |

| bewegen um (relativ) |     |
| ------ | --- |
| Pfad | *crazyflie/move* |
| Beispiel | `{"id":1, "data": [0.0, 3.0, [0.5, 0.1, 0.0], 0.0] }` |
| Aufbau von data | `[Startzeitpunkt, Dauer, Positions Offset, YAW Offset]` |

| bewegen zu (absolut) |     |
| ------ | --- |
| Pfad | *crazyflie/moveto* |
| Beispiel | `{"id":1, "data": [0.0, 2.0, [3.0, 1.5, 0.6], 0.0] }` |
| Aufbau von data | `[Startzeitpunkt, Dauer, neue Position, neuer YAW]` |

| bewegen zur initialen Position |     |
| ------ | --- |
| Pfad | *crazyflie/movehome* |
| Beispiel | `{"id":1, "data": [0.0, 5.0] }` |
| Aufbau von data | `[Startzeitpunkt, Dauer]` |

### Simple Beispiele

Starte Drohne 12 auf 0.5m innerhalb 1 Sekunde:
> `{"id":12, "data": [0.0, 1.0, 0.5] }`

Bewege Drohne 12 um [0.5m, 0.3m, -0.1m] innerhalb von 2 Sekunden:
> `{"id":12, "data": [0.0, 2.0, [0.5, 0.3, -0.1], 0.0] }`

Bewege Drohne 12 zur absoluten Position [5.0m, 10.0m, 0.5m] innerhalb von 20 Sekunden:
> `{"id":12, "data": [0.0, 20.0, [5.0, 10.0, 0.5], 0.0] }`

Bewege Drohne 12 um [-1.0m, 0.5m, 0.0m] innerhalb von 2.5 Sekunden:
> `{"id":12, "data": [0.0, 3.0, [-1.0, 0.5, 0.0], 0.0] }`

Bewege Drohne 12 zurück zu ihrer Startposition innerhalb von 18 Sekunden:
> `{"id":12, "data": [0.0, 18.0] }`

Lande Drohne 12 innerhalb von 0.5 Sekunden:
> `{"id":12, "data": [0.0, 0.5] }`

Lande Drohne 12 innerhalb von 0.5 Sekunden. Verzögere diesen Befehl allerdings um 10.5 Sekunden:
> `{"id":12, "data": [10.5, 0.5] }`
