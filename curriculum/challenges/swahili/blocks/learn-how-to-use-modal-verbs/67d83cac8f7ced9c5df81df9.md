---
id: 67d83cac8f7ced9c5df81df9
title: Zoezi la 144
challengeType: 22
dashedName: task-144
lang: en-US
---

<!-- (audio) Lisa: This will help us understand the extent of the breach and what they might have taken. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`This will help us understand the extent of the breach and what they BLANK BLANK.`

## --blanks--

`might`

### --feedback--

Kitenzi hiki cha modal kinadhihirisha uwezekano au kutokuwa na uhakika kuhusu tukio la zamani.

---

`have taken`

### --feedback--

Kitenzi hiki ni aina ya `Past Perfect`, kinachotumika kuzungumzia jambo ambalo linaweza kuwa limetokea zamani. Tumia maneno mawili.

# --explanation--  

`Might` kinadhihirisha uwezekano.  

`Have taken` ni aina ya `Past Perfect` ya `take`, kinachotumika kuzungumzia tendo la zamani linaloweza kutokea. Kwa mfano:

`The attacker might have taken sensitive files.` - Hujui kwa hakika, lakini kuna uwezekano.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 53.8,
      "finishTimestamp": 57.7
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.9,
      "dialogue": {
        "text": "This will help us understand the extent of the breach and what they might have taken.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
