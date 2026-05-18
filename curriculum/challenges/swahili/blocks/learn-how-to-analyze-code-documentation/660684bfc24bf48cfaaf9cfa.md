---
id: 660684bfc24bf48cfaaf9cfa
title: Zoezi la 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: Thanks, I'll give it a shot. -->

# --description--

`Give it a shot` inamaanisha kujaribu kufanya jambo fulani. Ni kama kusema `Try it`.

Kwa mfano, ikiwa rafiki yako anashuku kujiunga na darasa la programu kwa sababu anaona linaweza kuwa gumu sana, unaweza kusema `Why not give it a shot? You might enjoy it more than you think.` kumhimiza ajaribu kujiunga na darasa hili.

# --fillInTheBlank--

## --sentence--

`Thanks, BLANK give it a BLANK.`

## --blanks--

`I'll`

### --feedback--

Ni kifupi cha `I will`. Sophie anaonyesha uamuzi wake wa kujaribu kile Brian alipendekeza.

---

`shot`

### --feedback--

Katika muktadha huu, inamaanisha jaribio au kujaribu kufanya jambo fulani. Sophie anasema atajaribu kile Brian amependekeza.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "7.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 24.86,
      "finishTimestamp": 26.28
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
      "finishTime": 2.42,
      "dialogue": {
        "text": "Thanks, I'll give it a shot.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 2.92
    }
  ]
}
```
