---
id: 68555dfadef342c2db9b5abf
title: Aufgabe 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

Diese zwei Wörter bedeuten, dass etwas eingeführt oder verursacht wurde, sodass es zu einem Problem wurde. Das erste Wort ist die Vergangenheitsform von `bring`.

---

`unexpected`

### --feedback--

Dieses Wort bedeutet, dass etwas passiert ist, das nicht geplant oder vorhergesagt wurde. Es endet auf `-ed`.

# --explanation--

`Brought up` bedeutet, dass etwas verursacht wurde, das aufgetaucht ist, besonders ein Problem oder eine Schwierigkeit. Hier ist `brought` die Vergangenheitsform von `bring`. Zum Beispiel:

`The new feature brought up several bugs.` – Das bedeutet, die Funktion hat dazu geführt, dass die Bugs bemerkt wurden.

`Unexpected` beschreibt etwas, das ohne Vorwarnung oder Planung passiert. Zum Beispiel:

`We had an unexpected delay due to server issues.` – Das bedeutet, die Verzögerung war nicht erwartet worden.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.32,
      "finishTimestamp": 35.5
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "What about testing? The last update brought up some unexpected challenges.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.68
    }
  ]
}
```
