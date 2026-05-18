---
id: 67a9efcabf0dac0baa0ec536
title: Zoezi la 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Bob: It seems most people prefer using it for office furniture. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`It seems most people prefer using it for BLANK.`

## --blanks--

`office furniture`

### --feedback--

Fikiria kile watu wanachohitaji kuboresha eneo lao la kazi nyumbani. Hii ni pamoja na meza, viti, na rafu.

# --explanation--

`Office furniture` inahusu meza, viti, rafu, na vitu vingine vinavyotumika katika eneo la kazi.

Katika mazungumzo haya, Bob anazungumzia jinsi wafanyakazi wanavyotumia kifurushi chao cha fedha za kazi ya mbali. Kwa kuwa kufanya kazi nyumbani kunahitaji mpangilio mzuri na unaofaa, watu wengi hutumia kifurushi hicho kununua samani za ofisi kama vile viti vya ergonomic au meza kubwa.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.46,
      "finishTimestamp": 8
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.54,
      "dialogue": {
        "text": "It seems most people prefer using it for office furniture.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 5.04
    }
  ]
}
```
