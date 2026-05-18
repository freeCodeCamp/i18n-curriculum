---
id: 68fa8b4ecf2cf649ff55f7fd
title: Zoezi la 2
challengeType: 19
dashedName: task-2
lang: es
---

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Ni herufi gani ya **pili** inayoonyeshwa katika sauti hii?

## --answers--

`b`

### --feedback--

Herufi `b` ina sauti tofauti.

---

`x`

---

`z`

### --feedback--

Herufi `z` ina sauti tofauti.

---

`m`

### --feedback--

Herufi `m` ina sauti tofauti.

## --video-solution--

2

# --explanation--

Hizi ndizo herufi tatu zinazosemwa katika sauti: `b`, `x`, `z`.

Herufi `x` ndiyo ya pili. Kwa hiyo, `x` ni jibu sahihi.

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
      "filename": "ES_A1_alphabet_practice.mp3",
      "startTime": 1,
      "startTimestamp": 8,
      "finishTimestamp": 12.96
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
      "finishTime": 1.67,
      "dialogue": {
        "text": "b",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 3.26,
      "finishTime": 4.05,
      "dialogue": {
        "text": "x",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 5.21,
      "finishTime": 5.96,
      "dialogue": {
        "text": "z",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 6.46
    }
  ]
}
```
