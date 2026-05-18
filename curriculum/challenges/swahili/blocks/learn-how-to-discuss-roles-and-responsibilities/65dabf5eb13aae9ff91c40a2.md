---
id: 65dabf5eb13aae9ff91c40a2
title: Zoezi la 108
challengeType: 22
dashedName: task-108
lang: en-US
---

<!-- (Audio) Sophie: And you don't have to search for expensive solutions for that. -->

# --description--

Usemi `search for` unamaanisha kutafuta kitu au kujaribu kupata kitu kupitia uchunguzi. Kwa mfano, `I need to search for my lost keys` inamaanisha kutafuta funguo.

Neno `expensive` linaelezea kitu kinachogharimu pesa nyingi. Kwa mfano, `That car is too expensive for me` inamaanisha gari linagharimu pesa nyingi.

`solution` ni jibu kwa tatizo au njia ya kutatua tatizo.

`Doesn't/don't have to` hutumika kuonyesha kwamba hakuna haja au sharti la kufanya jambo fulani.

# --fillInTheBlank--

## --sentence--

`And you don't have to BLANK BLANK BLANK BLANK for that.`

## --blanks--

`search`

### --feedback--

Neno hili linamaanisha kutafuta kitu kwa makini.

---

`for`

### --feedback--

Kiunganishi hiki hutumika pamoja na `search` kuonyesha unachojaribu kutafuta.

---

`expensive`

### --feedback--

Neno hili linaelezea kitu kinachogharimu pesa nyingi.

---

`solutions`

### --feedback--

Hizi ni majibu au njia za kutatua tatizo.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 32.52,
      "finishTimestamp": 35.22
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
      "finishTime": 3.70,
      "dialogue": {
        "text": "And you don't have to search for expensive solutions for that.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.20
    }
  ]
}
```
