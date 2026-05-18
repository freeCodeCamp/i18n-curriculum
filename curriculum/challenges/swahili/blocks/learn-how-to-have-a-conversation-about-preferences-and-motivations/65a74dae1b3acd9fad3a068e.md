---
id: 65a74dae1b3acd9fad3a068e
title: Zoezi la 132
challengeType: 22
dashedName: task-132
lang: en-US
---

<!-- (Audio) Tom: For me, I like the idea of practicing my skills and getting recognition for my contributions. -->

# --description--

`To recognize` inamaanisha kumtambua mtu au kitu kutoka zamani, au kutambua kuwepo au uhalali wa kitu. Kwa mfano, `I recognize your efforts in completing this project.`

`Recognition` ni nomino ya `recognize` na inahusu kitendo cha kutambua au kutoa sifa kwa mtu kwa juhudi au mafanikio yake. Kwa mfano, `He received recognition for his innovative work.`

# --fillInTheBlank--

## --sentence--

`For me, I like the idea of BLANK my skills and getting BLANK for my contributions.`

## --blanks--

`practicing`

### --feedback--

Kitenzi hiki kinamaanisha kufanya shughuli au mazoezi mara kwa mara ili kuboresha au kudumisha ujuzi wa mtu.

---

`recognition`

### --feedback--

Nomino hii inahusu kitendo au mchakato wa kutambua juhudi, mafanikio, au sifa za mtu.

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
      "filename": "4.1-5.mp3",
      "startTime": 1,
      "startTimestamp": 41.5,
      "finishTimestamp": 47.12
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
      "finishTime": 6.62,
      "dialogue": {
        "text": "For me, I like the idea of practicing my skills and getting recognition for my contributions.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 7.12
    }
  ]
}
```
