---
id: 657fb5afeeba2de5d01dda0e
title: Zoezi la 81
challengeType: 19
dashedName: task-81
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Tom anajibu vipi mwaliko wa Sarah wa mkataba wa sayansi ya kubuni (sci-fi)?

## --answers--

Anakubali mara moja.

### --feedback--

Tom hakubali mwaliko. Anataja kutokuwepo kwa hamu yake katika sayansi ya kubuni.

---

Anakataa kwa heshima.

---

Anaonyesha kutokuwa na hamu.

### --feedback--

Ingawa Tom anaonyesha kutokuwepo kwa hamu, jibu lake ni zaidi kuhusu kukataa mwaliko kwa heshima badala ya kuonyesha tu kutokuwa na hamu.

---

Anapuuzia mwaliko.

### --feedback--

Tom anakubali mwaliko na kujibu, hivyo haumpuuzii.

## --video-solution--

2

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
