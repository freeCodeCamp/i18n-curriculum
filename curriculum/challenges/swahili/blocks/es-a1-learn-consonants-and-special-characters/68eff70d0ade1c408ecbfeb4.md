---
id: 68eff70d0ade1c408ecbfeb4
title: Zoezi la 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Julieta: d -->

# --description--

Herufi `d` huitwa `de`.

Mwanzoni mwa neno au baada ya `l` au `n`, sauti yake ni kali zaidi, kama katika neno `dos` ("mbili"). Hata hivyo, ni laini kati ya vokali, kama katika neno `idea` ("wazo").

Mfano ni `doctor` ("daktari").

# --instructions--

Sikiliza sauti na andika herufi katika nafasi tupu hapa chini.

# --fillInTheBlank--

## --sentence--

`BLANK`

## --blanks--

`d`

### --feedback--

Hii ni herufi ya nne katika alfabeti.

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet.mp3",
      "startTime": 1,
      "startTimestamp": 8.39,
      "finishTimestamp": 9.39
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 2,
      "dialogue": {
        "text": "d",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 2.5
    }
  ]
}
```
