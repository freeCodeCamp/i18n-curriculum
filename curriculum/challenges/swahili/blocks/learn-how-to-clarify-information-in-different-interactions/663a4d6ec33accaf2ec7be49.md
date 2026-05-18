---
id: 663a4d6ec33accaf2ec7be49
title: Zoezi la 28
challengeType: 22
dashedName: task-28
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

`smile` ni kile kinachotokea unapoinua pembe za mdomo wako kuonyesha furaha. Ni kitu unachofanya kwa uso wako unapokuwa na furaha au unapotaka kuwa mzuri.

`Friendly` huelezea mtu ambaye ni mkarimu, mzuri, na rahisi kuzungumza naye. Mtu mwenye tabasamu la kirafiki hufanya wengine wajisikie vizuri na wenye furaha.

`A friendly smile` ni tabasamu linaloonyesha kuwa unakuwa mkarimu na mwenye ukaribisho. Hufanya wengine wajisikie vizuri na kuonyesha unataka kuwa marafiki.

Sikiliza mazungumzo na ujaze mapengo.

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a tall guy with a BLANK BLANK.`

## --blanks--

`friendly`

### --feedback--

Mapengo haya yanaelezea mtu ambaye ni mzuri, rahisi kuzungumza naye na mwenye ukaribisho.

---

`smile`

### --feedback--

Kitendo unachofanya unapokuwa unataka kuonyesha furaha kwa mdomo wako.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.12,
      "finishTimestamp": 17.74
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.62,
      "dialogue": {
        "text": "Sure. Tom is a tall guy with a friendly smile.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.12
    }
  ]
}
```
