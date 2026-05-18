---
id: 67f04ef2be95eedffb5bde99
title: Zoezi la 103
challengeType: 22
dashedName: task-103
lang: en-US
---

<!-- (Audio) Brian: Is there anything else slowing you down? -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`Is there anything else BLANK you down?`

## --blanks--

`slowing`

### --feedback--

Ikifuatiwa na `down`, hii inamaanisha kufanya kitu kiende au kitokee polepole zaidi kuliko kawaida. Tumia fomu ya `-ing`.

# --explanation--

`To slow down` inamaanisha kupunguza mwendo au kufanya kitu kitokee polepole zaidi. Katika muktadha wa kazi au mradi, inaweza kumaanisha chochote kinachochelewesha maendeleo. Kwa mfano:

`Traffic is slowing down the delivery.` – Hii inamaanisha utoaji unachukua muda mrefu zaidi kwa sababu ya msongamano wa magari.  

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-3.mp3",
      "startTime": 1,
      "startTimestamp": 23.16,
      "finishTimestamp": 25.38
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.22,
      "dialogue": {
        "text": "Is there anything else slowing you down?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.72
    }
  ]
}
```
