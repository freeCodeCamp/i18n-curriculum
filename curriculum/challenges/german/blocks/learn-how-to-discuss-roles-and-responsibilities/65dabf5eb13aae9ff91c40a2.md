---
id: 65dabf5eb13aae9ff91c40a2
title: Aufgabe 108
challengeType: 22
dashedName: task-108
lang: en-US
---

<!-- (Audio) Sophie: And you don't have to search for expensive solutions for that. -->

# --description--

Der Ausdruck `search for` bedeutet, nach etwas zu suchen oder etwas durch Erkundung zu finden versuchen. Zum Beispiel bedeutet `I need to search for my lost keys` das Suchen nach den Schlüsseln.

Das Wort `expensive` beschreibt etwas, das viel Geld kostet. Zum Beispiel bedeutet `That car is too expensive for me`, dass das Auto viel kostet.

Eine `solution` ist eine Antwort auf ein Problem oder eine Möglichkeit, ein Problem zu beheben.

`Doesn't/don't have to` wird verwendet, um auszudrücken, dass es keine Notwendigkeit oder Verpflichtung gibt, etwas zu tun.

# --fillInTheBlank--

## --sentence--

`And you don't have to BLANK BLANK BLANK BLANK for that.`

## --blanks--

`search`

### --feedback--

Dieses Wort bedeutet, etwas sorgfältig zu suchen.

---

`for`

### --feedback--

Diese Präposition wird mit `search` verwendet, um anzugeben, wonach Sie suchen.

---

`expensive`

### --feedback--

Dieses Wort beschreibt etwas, das viel Geld kostet.

---

`solutions`

### --feedback--

Dies sind Antworten oder Möglichkeiten, ein Problem zu lösen.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 32.52,
      "finishTimestamp": 35.22
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.70,
      "dialogue": {
        "text": "And you don't have to search for expensive solutions for that.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.20
    }
  ]
}
```
