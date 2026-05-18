---
id: 6557dc1aa6be93c1eb4e9efb
title: Zoezi la 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

Neno `if` linamaanisha "iwepo au la". Kwa mfano:

`She checks her emails to see if there are any urgent updates.` - Hii ina maana anatafuta kujua iwepo au la masasisho.

`If` pia linaweza kuwa sehemu ya usemi wa kihesabu wa masharti, unaoonyesha hali inayowezekana na matokeo yake. Kwa mfano:

`If there are urgent updates, I will reply immediately.` - Hii ina maana kujibu kunategemea hali ya kuwa na masasisho ya dharura.

# --questions--

## --text--

Sarah anamaanisha nini kwa kutumia `if` katika kauli yake kuhusu kukagua barua pepe na ujumbe?

## --answers--

Daima hupata masasisho ya dharura kutoka kwa timu yake.

### --feedback--

`If` haionyeshi uhakika wa kupata masasisho ya dharura.

---

Wakati mwingine kuna masasisho ya dharura, wakati mwingine hayapo.

---

Hapendi kabisa kukagua barua pepe na ujumbe wake.

### --feedback--

Sarah kwa kweli anasema kwamba anakagua barua pepe na ujumbe wake.

---

Kukagua barua pepe si sehemu ya ratiba yake.

### --feedback--

Sarah anataja kwamba kukagua barua pepe na ujumbe ni sehemu ya ratiba yake.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 55.08,
      "finishTimestamp": 60.78
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.70,
      "dialogue": {
        "text": "Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.20
    }
  ]
}
```
