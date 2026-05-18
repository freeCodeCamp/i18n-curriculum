---
id: 67d83cac8f7ced9c5df81df9
title: Aufgabe 144
challengeType: 22
dashedName: task-144
lang: en-US
---

<!-- (audio) Lisa: This will help us understand the extent of the breach and what they might have taken. -->

# --instructions--

Hören Sie sich die Audiodatei an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`This will help us understand the extent of the breach and what they BLANK BLANK.`

## --blanks--

`might`

### --feedback--

Dieses Modalverb drückt Möglichkeit oder Unsicherheit über ein vergangenes Ereignis aus.

---

`have taken`

### --feedback--

Dieses Verb ist die `Past Perfect`-Form, die verwendet wird, um über etwas zu sprechen, das in der Vergangenheit passiert sein könnte. Verwenden Sie zwei Wörter.

# --explanation--  

`Might` drückt Möglichkeit aus.  

`Have taken` ist die `Past Perfect`-Form von `take`, die verwendet wird, um über eine mögliche vergangene Handlung zu sprechen. Zum Beispiel:

`The attacker might have taken sensitive files.` - Sie wissen es nicht sicher, aber es ist möglich.

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
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 53.8,
      "finishTimestamp": 57.7
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
      "finishTime": 4.9,
      "dialogue": {
        "text": "This will help us understand the extent of the breach and what they might have taken.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
