---
id: 67b5b3dfdec8df1a5f326bc0
title: Zoezi la 110
challengeType: 22
dashedName: task-110
lang: en-US
---

<!-- (audio) Maria: We've chosen a subtle color palette, but maybe adding some brighter tones would help. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`We've chosen a BLANK color BLANK, but maybe adding some brighter tones would help.`

## --blanks--

`subtle`

### --feedback--

Hii inamaanisha kitu ambacho si kali au dhahiri. Ni kitu laini au cha upole ambacho huenda hukugundua mara moja.

---

`palette`

### --feedback--

Hii inahusu wigo wa rangi zinazotumika katika muundo au kazi ya sanaa. Katika kesi hii, `color palette` inahusu uteuzi wa rangi zilizochaguliwa kwa ajili ya muundo wa programu au mradi.

# --explanation--

`Subtle` inahusu kitu kilicho nyepesi au kisicho dhahiri. Kwa mfano:

`The artist used subtle shades of blue in the painting.` - Hii inamaanisha msanii alitumia vivuli vya bluu vyepesi au laini ambavyo si kali au havivutii macho sana.

`Palette` inahusu wigo wa rangi au vifaa vinavyotumika na msanii au mbunifu. Kwa mfano:

`The designer chose a warm palette for the website, using reds, oranges, and yellows.` - Hii inamaanisha mbunifu alichagua seti ya rangi za joto, kama nyekundu, machungwa, na manjano, kwa ajili ya muundo wa tovuti.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-3.mp3",
      "startTime": 1,
      "startTimestamp": 36.2,
      "finishTimestamp": 39.94
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "We've chosen a subtle color palette, but maybe adding some brighter tones would help.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
