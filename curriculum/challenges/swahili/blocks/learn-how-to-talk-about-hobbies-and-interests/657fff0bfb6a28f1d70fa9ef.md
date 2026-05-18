---
id: 657fff0bfb6a28f1d70fa9ef
title: Zoezi la 80
challengeType: 22
dashedName: task-80
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

`I appreciate it, but...` hutumika kuonyesha shukrani kwa ofa au ishara huku ukikataa kwa heshima au kueleza kikomo au upendeleo binafsi.

Kwa mfano, ikiwa rafiki yako anatoa kusaidia na changamoto ya kuandika programu, na unashukuru lakini unataka kujaribu mwenyewe kwanza, unaweza kusema, `I appreciate it, but I want to give it a shot by myself first`.

# --fillInTheBlank--

## --sentence--

`Thanks for the invite, Sarah. I BLANK it, BLANK I'm not really into sci-fi.`

## --blanks--

`appreciate`

### --feedback--

Neno hili hutumika mara nyingi kuonyesha shukrani au kuthamini.

---

`but`

### --feedback--

Neno hili hutumika kuanzisha usemi au kifungu kinachopingana na kile kilichotajwa awali.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
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
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
