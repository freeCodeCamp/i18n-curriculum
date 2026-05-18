---
id: 657fff0bfb6a28f1d70fa9ef
title: Aufgabe 80
challengeType: 22
dashedName: task-80
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

`I appreciate it, but...` wird verwendet, um Dankbarkeit für ein Angebot oder eine Geste auszudrücken und gleichzeitig höflich abzulehnen oder eine persönliche Einschränkung oder Vorliebe zu nennen.

Wenn Ihnen zum Beispiel ein Freund anbietet, Ihnen bei einer Programmieraufgabe zu helfen, und Sie dankbar sind, aber zuerst selbst versuchen möchten, könnten Sie `I appreciate it, but I want to give it a shot by myself first` sagen.

# --fillInTheBlank--

## --sentence--

`Thanks for the invite, Sarah. I BLANK it, BLANK I'm not really into sci-fi.`

## --blanks--

`appreciate`

### --feedback--

Dieses Wort wird oft verwendet, um Dankbarkeit oder Anerkennung zu zeigen.

---

`but`

### --feedback--

Dieses Wort wird verwendet, um eine Phrase oder Klausel einzuleiten, die im Gegensatz zu dem steht, was bereits erwähnt wurde.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
