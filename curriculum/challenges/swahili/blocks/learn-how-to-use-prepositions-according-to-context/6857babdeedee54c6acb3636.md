---
id: 6857babdeedee54c6acb3636
title: Zoezi la 134
challengeType: 19
dashedName: task-134
lang: en-US
---

<!-- (Audio) Sarah: If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine. -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Wapi sasa hivi monitor zimehifadhiwa?

## --answers--

Mwisho wa eneo la maegesho.

### --feedback--

Sarah hakutaja eneo la maegesho.

---

Ndani ya chumba cha IT.

### --feedback--

Zilihamishwa kutoka ndani ya chumba cha IT mapema.

---

Kando ya dawati la usalama.

### --feedback--

Hakuna maelezo kuhusu dawati la usalama.

---

Karibu na mashine ya kahawa.

## --video-solution--

4

# --explanation--

Sarah anatoa maelekezo wazi yanayomalizika na rejea: `the coffee machine`.

Anaeleza kwamba baada ya kwenda moja kwa moja kwenye korido na kugeuka kushoto, monitor zinaweza kupatikana zikiwa zimewekwa kinyume na mashine ya kahawa, na kufanya mashine ya kahawa kuwa alama ya karibu na inayoonekana kwa urahisi ya kuzitafuta.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_22-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.68,
      "finishTimestamp": 18.22
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
      "finishTime": 6.54,
      "dialogue": {
        "text": "If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
