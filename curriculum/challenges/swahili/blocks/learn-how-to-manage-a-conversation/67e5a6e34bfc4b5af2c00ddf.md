---
id: 67e5a6e34bfc4b5af2c00ddf
title: Zoezi la 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (Audio) Jessica: Well, we've discovered a critical bug that might affect the user interface. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`Well, we've discovered a BLANK bug that might BLANK the user interface.`

## --blanks--

`critical`

### --feedback--

Hii inamaanisha jambo la muhimu sana au la dharura. Mara nyingi hutumika wakati jambo linahitaji kuzingatiwa mara moja.

---

`affect`

### --feedback--

Hii inamaanisha kubadilisha au kuathiri jambo fulani. Mara nyingi hutumika kuelezea jinsi jambo moja linavyosababisha mabadiliko kwa lingine.

# --explanation--

`Critical` inamaanisha jambo la muhimu sana au la dharura. Kwa mfano:

`We have a critical deadline tomorrow.` – Hii inamaanisha tarehe ya mwisho ni muhimu sana na haiwezi kukosekana.

`To affect` inamaanisha kuwa na ushawishi kwa jambo fulani au kusababisha mabadiliko. Kwa mfano:

`The new policy may affect employee performance.` – Hii inamaanisha sera inaweza kubadilisha jinsi wafanyakazi wanavyofanya kazi.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.12,
      "finishTimestamp": 13.52
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
      "finishTime": 2.72,
      "dialogue": {
        "text": "Well, we've discovered a critical bug",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.72,
      "finishTime": 4.4,
      "dialogue": {
        "text": "that might affect the user interface.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
