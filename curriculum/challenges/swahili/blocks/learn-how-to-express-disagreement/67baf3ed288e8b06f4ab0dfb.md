---
id: 67baf3ed288e8b06f4ab0dfb
title: Zoezi la 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) David: It builds team spirit and makes problem-solving easier. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`It builds BLANK and makes BLANK easier.`

## --blanks--

`team spirit`

### --feedback--  

Maneno haya mawili pamoja yanahusu hisia ya umoja na ushirikiano kati ya wafanyakazi. Neno la kwanza linahusu kundi linalofanya kazi pamoja, na neno la pili linahusiana na hamasa au msukumo wa pamoja.

---

`problem-solving`

### --feedback--  

Neno hili mchanganyiko linahusu mchakato wa kupata suluhisho kwa changamoto. Sehemu ya kwanza inahusu tatizo linalohitaji kutatuliwa, na sehemu ya pili ni kitenzi kinachomaanisha kupata suluhisho. Kumbuka kutumia `-` kati ya sehemu hizi mbili.

# --explanation--

David anaamini kuwa kufanya kazi ofisini husaidia kuimarisha `team spirit` (hisia ya muunganiko na umoja kati ya wafanyakazi) na kuboresha `problem-solving` (kupata suluhisho kwa changamoto kwa ufanisi zaidi).

Anadai kuwa kuwa katika nafasi moja ya kimwili hufanya iwe rahisi kwa wafanyakazi kushirikiana na kusaidiana.

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
      "startTimestamp": 42.52,
      "finishTimestamp": 45.7
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
      "finishTime": 4.18,
      "dialogue": {
        "text": "It builds team spirit and makes problem solving easier.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 4.68
    }
  ]
}
```
