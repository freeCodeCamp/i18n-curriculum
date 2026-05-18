---
id: 6629ce6bffd1efa9c6c57eaa
title: Aufgabe 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Brian: Hey, Sophie. How's it going? -->

# --description--

Der Ausdruck `how's it going?` ist eine gebräuchliche Art, jemanden zu fragen, wie es ihm geht oder was in seinem Leben passiert. Er wird oft als freundliche Begrüßung verwendet.

Zum Beispiel, wenn Sie einen alten Freund sehen, könnten Sie sagen `Hey, how's it going? I haven't seen you for a while!` Dies ist eine lockere Art, nach seinem Leben zu fragen. Wenn Sie ihn nach einer bestimmten Sache fragen möchten, wie zum Beispiel seinem neuen Job, können Sie sagen `How's it going with your new job?`

# --fillInTheBlank--

## --sentence--

`Hey, Sophie. BLANK it BLANK?`

## --blanks--

`How's`

### --feedback--

Diese Kontraktion wird häufig in informellen Begrüßungen verwendet. Schreiben Sie das erste Wort groß.

---

`going`

### --feedback--

Dieses Wort vervollständigt die gebräuchliche informelle Begrüßung, mit der man nach dem allgemeinen Befinden einer Person fragt.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.08
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Hey, Sophie. How's it going?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
