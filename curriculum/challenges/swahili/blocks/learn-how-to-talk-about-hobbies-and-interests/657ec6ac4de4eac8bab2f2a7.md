---
id: 657ec6ac4de4eac8bab2f2a7
title: Zoezi la 39
challengeType: 22
dashedName: task-39
lang: en-US
---

<!-- (Audio) Linda: Okay, it's a bike date then. -->

# --description--

Neno `date` linaweza kutumika katika muktadha tofauti. Ingawa mara nyingi linahusu mkutano wa kimapenzi kati ya watu wawili, linaweza pia kumaanisha tu miadi au tukio lililopangwa kati ya marafiki au wenzake kazini. Kwa mfano:

`Let's set a date for our next meeting.` - Hapa, `date` inatumika kwa njia isiyo ya kimapenzi, ikimaanisha kuchagua siku ya mkutano.

# --fillInTheBlank--

## --sentence--

`Okay, it's a BLANK BLANK then.`

## --blanks--

`bike`

### --feedback--

Neno hili linaelezea aina ya shughuli iliyopangwa, likionyesha kuwa ni matembezi ya baiskeli.

---

`date`

### --feedback--

Neno hili linahusu mkutano au tukio lililopangwa.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Linda",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-2.mp3",
      "startTime": 1,
      "startTimestamp": 44.64,
      "finishTimestamp": 46.58
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Okay, it's a bike date then.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
