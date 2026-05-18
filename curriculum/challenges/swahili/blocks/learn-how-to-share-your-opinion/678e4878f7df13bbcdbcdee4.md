---
id: 678e4878f7df13bbcdbcdee4
title: Zoezi la 54
challengeType: 22
dashedName: task-54
lang: en-US
---

<!-- (audio) Jake: It's customizable, which is useful for our different teams. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`It's BLANK, which is useful for our different teams.`

## --blanks--

`customizable`

### --feedback--

Neno hili lina maana kwamba kitu kinaweza kubadilishwa au kusawazishwa ili kukidhi mapendeleo au mahitaji binafsi.

# --explanation--

`Customizable` linahusu kitu ambacho kinaweza kubadilishwa au kurekebishwa ili kufaa mapendeleo, mahitaji, au masharti tofauti. Kwa mfano:

`The dashboard in this project management tool is customizable, allowing each team to organize their tasks in their preferred way.` - Hii ina maana kwamba dashibodi inaweza kubadilishwa kulingana na mahitaji ya kila timu, kuwasaidia kupanga kazi zao kwa ufanisi zaidi.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-2.mp3",
      "startTime": 1,
      "startTimestamp": 24.32,
      "finishTimestamp": 27.88
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 4.56,
      "dialogue": {
        "text": "It's customizable, which is useful for our different teams.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 5.06
    }
  ]
}
```
