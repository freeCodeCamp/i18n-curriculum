---
id: 698a5aa1ff49e32ceeaaccec
title: Zoezi la 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Camila: Número de teléfono -->

# --description--

Sasa Camila anajifunza jinsi ya kusema `número de teléfono` kwa Kihispania, ambayo inamaanisha "nambari ya simu".

Tambua kwamba neno `número` lina alama ya msisitizo kwenye herufi ya `u` na neno `teléfono` lina alama ya msisitizo kwenye herufi ya pili `e`.

# --instructions--

Sikiliza sauti na andika neno hapa chini.

# --fillInTheBlank--

## --sentence--

`BLANK de BLANK`

## --blanks--

`Número`

### --feedback--

Neno hili lina maana ya "nambari" kwa Kihispania. Kumbuka kuandika alama ya msisitizo kwenye herufi ya `u` na kuandika herufi ya kwanza kwa herufi kubwa.

---

`teléfono`

### --feedback--

Neno hili lina maana ya "simu" kwa Kihispania. Kumbuka kuandika alama ya msisitizo kwenye herufi ya pili `e`.

# --explanation--

`Número de teléfono` inamaanisha "nambari ya simu" kwa Kihispania.

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 10.45,
      "finishTimestamp": 12.39
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Número de teléfono",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
