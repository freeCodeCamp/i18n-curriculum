---
id: 657b72cbdef32ec0b1a24afb
title: Attività 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (audio) Tom: Wow! Electric or acoustic? Sophie: Electric, for sure. -->

# --description--

Quando senti parlare di diversi tipi di chitarre, possono comparire due tipi comuni: `electric` e `acoustic`.

`Electric guitars` di solito hanno bisogno di qualcosa chiamato amplificatore per essere abbastanza forti da sentire, mentre `acoustic guitars` si possono sentire senza alcuna attrezzatura aggiuntiva.

# --questions--

## --text--

Quale tipo di chitarra preferisce Sophie?

## --answers--

Electric guitar

---

Acoustic guitar

### --feedback--

Sophie rende molto chiaro quale tipo di chitarra le piace. Quella che preferisce ha bisogno di un amplificatore per essere forte. 

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": { "x": 50, "y": 15, "z": 1.2 },
        "opacity": 0
      },
      {
        "character": "Sophie",
        "position": { "x": 50, "y": 0, "z": 1.4 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.52
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
      "startTime": 1.1,
      "finishTime": 3.1,
      "dialogue": {
        "text": "Wow! Electric or acoustic?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 3.2
    },
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 3.3
    },
    {
      "character": "Sophie",
      "startTime": 3.3,
      "finishTime": 5.12,
      "dialogue": {
        "text": "Electric, for sure.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.62
    }
  ]
}
```
