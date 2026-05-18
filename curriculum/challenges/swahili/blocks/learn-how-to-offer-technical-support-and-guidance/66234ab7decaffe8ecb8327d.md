---
id: 66234ab7decaffe8ecb8327d
title: Zoezi la 56
challengeType: 22
dashedName: task-56
lang: en-US
---

<!-- (Audio) Sophie: Ok, so if I make changes here, do you think it could affect other functionalities? -->

# --description--

`To affect` ina maana ya kuwa na athari au kuathiri kitu fulani. Katika programu, `affecting` sehemu ya mfumo ina maana kwamba mabadiliko katika eneo moja yanaweza kuathiri jinsi maeneo mengine yanavyofanya kazi.

Kwa mfano, `Changing the database structure could affect the application's performance` inaonyesha kwamba marekebisho yanaweza kuathiri utendaji.

# --fillInTheBlank--

## --sentence--

`Ok, so if I make changes here, do you think it could BLANK other BLANK?`

## --blanks--

`affect`

### --feedback--

Katika muktadha huu, inahusu athari inayoweza kutokea kutokana na mabadiliko ya Sophie kwenye sehemu nyingine za mfumo.

---

`functionalities`

### --feedback--

Hizi ni shughuli mbalimbali au vipengele vya mfumo ambavyo vinaweza kuathiriwa na mabadiliko hayo.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 21.3,
      "finishTimestamp": 25.64
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
      "finishTime": 3.26,
      "dialogue": {
        "text": "Okay, so if I make changes here,",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 3.36,
      "finishTime": 5.34,
      "dialogue": {
        "text": "do you think it could affect other functionalities?",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.84
    }
  ]
}
```
