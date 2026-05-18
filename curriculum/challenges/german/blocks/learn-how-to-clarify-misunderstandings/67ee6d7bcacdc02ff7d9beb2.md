---
id: 67ee6d7bcacdc02ff7d9beb2
title: Aufgabe 69
challengeType: 22
dashedName: task-69
lang: en-US
---

<!-- (Audio) Lisa: It could be a JavaScript issue. Maybe there's a problem with the event handling. -->

# --instructions--

Hören Sie sich das Audio an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`It could be a JavaScript issue. Maybe BLANK a BLANK BLANK the BLANK.`

## --blanks--

`there's`

### --feedback--

Dieses Wort wird verwendet, um über die Existenz von etwas zu sprechen oder zu sagen, dass etwas vorhanden ist oder passiert. Es ist die Kontraktion von `there is`.

---

`problem`

### --feedback--

Dieses Wort bezeichnet ein Problem oder eine Schwierigkeit, die gelöst oder behoben werden muss.

---

`with`

### --feedback--

Diese Präposition zeigt die Beziehung oder Verbindung zwischen zwei Dingen an.

---

`event handling`

### --feedback--

Dieser zweiteilige Ausdruck bezieht sich darauf, wie Software oder Websites auf Aktionen reagieren, wie Klicks oder Tastatureingaben, die vom Benutzer ausgeführt werden. Das zweite Wort endet mit `-ing`.

# --explanation--

`There's a problem with` wird verwendet, um zu beschreiben, dass etwas nicht richtig funktioniert. Es bedeutet, dass es ein Problem oder eine Schwierigkeit im Zusammenhang mit einer bestimmten Sache gibt. Zum Beispiel:

`There's a problem with the network.` – Das bedeutet, dass das Netzwerk nicht richtig funktioniert.

`Event handling` bezieht sich darauf, wie ein Programm oder eine Website Benutzeraktionen wie Klicks, Tastatureingaben oder Mausbewegungen verwaltet. Zum Beispiel:

`There's an issue with event handling.` – Das bedeutet, dass die Software nicht richtig auf Benutzeraktionen reagiert.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.38,
      "finishTimestamp": 35.2
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "It could be a JavaScript issue. Maybe there's a problem with the event handling.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
