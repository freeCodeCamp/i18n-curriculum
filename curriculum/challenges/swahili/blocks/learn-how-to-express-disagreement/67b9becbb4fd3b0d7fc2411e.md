---
id: 67b9becbb4fd3b0d7fc2411e
title: Zoezi la 65
challengeType: 22
dashedName: task-65
lang: en-US
---

<!-- (Audio) David: It seems like it could lead to a lot of delays and miscommunication. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`It seems like it could lead to a lot of BLANK and BLANK.`

## --blanks--

`delays`

### --feedback--

Neno hili linahusu mambo kuchukua muda mrefu kuliko ilivyotarajiwa.

---

`miscommunication`

### --feedback--

Neno hili linahusu kutoelewana kunakosababishwa na taarifa zisizo wazi au zisizo sahihi.

# --explanation--

David ana wasiwasi kwamba kazi ya mbali isiyo ya wakati mmoja inaweza kusababisha `delays` (majibu na maendeleo ya polepole) na `miscommunication` (watu kutoelewana).

Kwa kuwa wafanyakazi hufanya kazi kwa nyakati tofauti, ujumbe unaweza kuchukua muda mrefu kujibiwa, na kutoelewana kunaweza kutokea ikiwa mawasiliano hayako wazi.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 24.82,
      "finishTimestamp": 28.84
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.02,
      "dialogue": {
        "text": "It seems like it could lead to a lot of delays and miscommunication.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.52
    }
  ]
}
```
