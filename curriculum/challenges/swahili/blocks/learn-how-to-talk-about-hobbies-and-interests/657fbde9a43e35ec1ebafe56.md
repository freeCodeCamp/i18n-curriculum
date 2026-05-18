---
id: 657fbde9a43e35ec1ebafe56
title: Zoezi la 77
challengeType: 19
dashedName: task-77
lang: en-US
---

<!-- (Audio) Sarah: There's a big convention next month. Would you like to come? -->

# --description--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Usemi `Would you like to come?` unadhihirisha nini katika muktadha huu?

## --answers--

Kupuuza mwaliko.

### --feedback--

Usemi huu hauimaanishi kusema "hapana". Ni kuhusu kutoa mwaliko.

---

Kutoa mwaliko.

---

Kuonyesha shukrani.

### --feedback--

Usemi huu hauimaanishi "asante". Ni kuhusu kualika mtu.

---

Kuomba taarifa.

### --feedback--

Usemi huu si swali la kupata taarifa, bali ni mwaliko wa heshima kwa tukio.

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
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 18.70,
      "finishTimestamp": 21.36
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
      "finishTime": 3.66,
      "dialogue": {
        "text": "There's a big convention next month. Would you like to come?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 4.16
    }
  ]
}
```
