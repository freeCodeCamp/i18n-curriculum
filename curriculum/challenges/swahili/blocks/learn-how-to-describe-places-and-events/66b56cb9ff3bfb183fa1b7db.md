---
id: 66b56cb9ff3bfb183fa1b7db
title: Zoezi la 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) Anna: When do you think this new module will be ready? -->

# --instructions--

Sikiliza sauti ili ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`When do you think BLANK BLANK BLANK will be ready?`

## --blanks--

`this`

### --feedback--

Neno hili hutumika kubainisha moduli inayojadiliwa kwa sasa.

---

`new`

### --feedback--

Kitu kilichotokea hivi karibuni.

---

`module`

### --feedback--

Sehemu maalum au sehemu ya mpango wa mafunzo.

# --explanation--

`Module` inarejelea kitengo au sehemu ya kozi au mpango wa mafunzo. Kwa mfano:

- `The new module on cybersecurity will be added next week.` - Hapa, `module` inarejelea sehemu maalum ya mafunzo inayolenga usalama wa mtandao.

Lipa makini jinsi maneno `this`, `new`, na `module` yanavyotumika. `This` hutumika kubainisha moduli wanayozungumzia, `new` inaonyesha kuwa ni nyongeza ya hivi karibuni, na `module` inarejelea sehemu ya mafunzo.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-2.mp3",
      "startTime": 1,
      "startTimestamp": 47.12,
      "finishTimestamp": 48.96
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 2.84,
      "dialogue": {
        "text": "When do you think this new module will be ready?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 3.34
    }
  ]
}
```
