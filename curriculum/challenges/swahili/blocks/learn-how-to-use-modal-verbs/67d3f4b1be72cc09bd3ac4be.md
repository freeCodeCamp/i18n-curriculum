---
id: 67d3f4b1be72cc09bd3ac4be
title: Zoezi la 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Jessica: There are a few things you must do to ensure compliance. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`There are a few things you BLANK BLANK to ensure compliance.`

## --blanks--

`must`

### --feedback--

Kitenzi hiki cha modal kinadhihirisha lazima au wajibu.

---

`do`

### --feedback--

Kitenzi hiki kinafuata `must` kuonyesha kitendo kinachohitajika.

# --explanation--

`Must` ni kitenzi cha modal kinachotumika kuonyesha lazima au wajibu. Kwa mfano:

- `You must wear a seatbelt while driving.` - Inahitajika.

- `We must submit the report by Friday.` - Ni lazima.

Vitenzi vya modal huambatana daima na aina ya msingi ya kitenzi (bila `to`).

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.02,
      "finishTimestamp": 6.62
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 3.6,
      "dialogue": {
        "text": "There are a few things you must do to ensure compliance.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.1
    }
  ]
}
```
