---
id: 680cad23e2d58a1ef7c2edfb
title: Zoezi la 19
challengeType: 22
dashedName: task-19
lang: en-US
---

<!-- (Audio) Sarah: Those are the ones. But, we found something even better in your catalog, these high-capacity ones here. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`Those are the ones. But, we found something even better in your catalog, BLANK BLANK ones here.`

## --blanks--

`these`

### --feedback--

Neno hili hutumika kuonyesha vitu maalum vilivyo karibu na msemaji.

---

`high-capacity`

### --feedback--

Neno hili mchanganyiko lina maana ya kitu kinachoweza kushughulikia kazi, hifadhi, au nishati nyingi. Kumbuka kutumia `-`.

# --explanation--

`High-capacity` linaelezea kitu kilichoundwa kushughulikia au kuhifadhi kiasi kikubwa ikilinganishwa na matoleo ya kawaida. Kwa mfano:

`We installed high-capacity batteries in the new devices.` – Hii ina maana betri zinaweza kuhifadhi nguvu zaidi na kudumu kwa muda mrefu, jambo ambalo ni muhimu katika vifaa vya teknolojia.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 27.3,
      "finishTimestamp": 32.68
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.38,
      "dialogue": {
        "text": "Those are the ones, but we found something even better in your catalog, these high capacity ones here.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.88
    }
  ]
}
```
