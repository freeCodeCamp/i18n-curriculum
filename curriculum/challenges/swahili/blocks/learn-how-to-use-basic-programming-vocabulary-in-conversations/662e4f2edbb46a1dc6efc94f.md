---
id: 662e4f2edbb46a1dc6efc94f
title: Zoezi la 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Tom: Don't worry. Debugging is a common challenge for programmers. -->

# --description--

`Common` hutumika kuelezea jambo linalotokea mara kwa mara au linaloshirikishwa sana na watu wengi. Kwa mfano, `Colds are a common illness during the winter.` Hii ina maana ni tatizo la kiafya la kawaida ambalo watu wengi hukumbana nalo wakati huo wa mwaka.

`Challenge` linahusu zoezi au hali inayohitaji juhudi maalum kufanikisha kwa sababu ni ngumu. Kwa mfano, `Learning to ride a bike was a big challenge for her at first.` Sentensi hii inaelezea jinsi kujifunza kuendesha baiskeli kulivyokuwa na changamoto mwanzoni.

# --fillInTheBlank--

## --sentence--

`Don't worry. Debugging is a BLANK BLANK for programmers.`

## --blanks--

`common`

### --feedback--

Kivumishi hiki kinaelezea jambo linalotokea mara kwa mara au ni la kawaida miongoni mwa kundi.

---

`challenge`

### --feedback--

Nomino hii inahusu zoezi au tatizo gumu linalohitaji juhudi kutatua au kushinda.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 5.02,
      "finishTimestamp": 8.18
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 4.16,
      "dialogue": {
        "text": "Don't worry. Debugging is a common challenge for programmers.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
