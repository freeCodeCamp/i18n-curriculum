---
id: 675ecedbb04f6ca6dd620f0e
title: Aufgabe 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Anna: Hi Brian, I've heard about these Man-in-the-Middle attacks. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`Hi Brian, I've heard about these BLANK BLANK.`

## --blanks--

`Man-in-the-Middle`

### --feedback--

Dies ist eine Art von Cyberangriff, bei dem ein Hacker heimlich zwischen zwei Personen oder Systemen, die miteinander kommunizieren, eingeschleust wird. Der Hacker kann die geteilten Informationen sehen, ändern oder stehlen, ohne dass es jemand bemerkt. Dies ist ein zusammengesetztes Wort, denken Sie daran, `-` zu verwenden. Die ersten Buchstaben des ersten und des vierten Wortes sind großgeschrieben.

---

`attacks`

### --feedback--

Dieses Wort im Plural bezeichnet Handlungen von Hackern oder Kriminellen, die darauf abzielen, ein Computersystem zu schädigen, Informationen zu stehlen oder Probleme zu verursachen.

# --explanation--

`Man-in-the-Middle` (oder `MITM`) ist eine Art Angriff, bei dem ein Hacker heimlich zwischen zwei Personen oder Systeme gerät, die kommunizieren. Der Hacker hört die geteilten Informationen ab oder ändert sie, ohne dass es jemand bemerkt. Zum Beispiel:

`A Man-in-the-Middle attack (MITM) happened when a hacker intercepted the data sent between a user's computer and their bank.` – Der Hacker gab vor, die Bank zu sein, fing die Informationen ab und stahl die Anmeldedaten des Nutzers. So konnte der Hacker auf das Bankkonto zugreifen, ohne dass der Nutzer es bemerkte.

`Attacks` sind Handlungen von Hackern, um Computersysteme zu schädigen, Informationen zu stehlen oder Probleme zu verursachen. Zum Beispiel:

`The website was unavailable for hours because of a cyber attack that overloaded its server.` – Es zeigt an, dass der Hacker zu viel gefälschten Datenverkehr an die Website gesendet hat, wodurch diese abstürzte oder langsamer wurde. Dadurch konnten echte Nutzer nicht mehr zugreifen, was eine Störung verursachte.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_6-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 3.8,
      "dialogue": {
        "text": "Hi, Brian. I've heard about these man in the middle attacks.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.3
    }
  ]
}
```
