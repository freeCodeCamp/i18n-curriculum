---
id: 680aef568ac1bd591eceb0dc
title: Zoezi la 98
challengeType: 22
dashedName: task-98
lang: en-US
---

<!-- (Audio) Riker: The ads cost more than we thought they would. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`The BLANK cost more than we thought they would.`

## --blanks--

`ads`

### --feedback--

Hii ni fomu fupi ya kitu kinachomaanisha ujumbe au maudhui yaliyotengenezwa kukuza bidhaa, huduma, au tukio. Tumia umbo la wingi.

# --explanation--

`ad` (fupi ya `advertisement`) ni kipande cha maudhui kilichoundwa kuvutia watu na kuwahamasisha kununua kitu, kutumia huduma, au kuchukua hatua. Matangazo yanaweza kuonekana kwenye mitandao ya kijamii, tovuti, runinga, redio, na zaidi. Kwa mfano:

- `They launched a new ad campaign for their latest product.` – Hii ina maana kampuni ilitengeneza na kushiriki maudhui ya kukuza ili kuongeza hamasa kwa bidhaa.

- `We saw a lot of online ads for the holiday sale.` – Hii ina maana kulikuwa na ujumbe mwingi wa matangazo kuhusu mauzo kwenye tovuti au programu.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 30.7,
      "finishTimestamp": 32.46
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "The ads cost more than we thought they would.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
