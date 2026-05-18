---
id: 67ddb67d2bbf41bb5dce0fb3
title: Zoezi la 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) James: No problem. Talk to you later. -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Tunaweza kufikia hitimisho gani kutoka kwa jibu la James?

## --answers--

Anahitaji kutatua tatizo kwanza.

### --feedback--

James hasemi chochote kuhusu tatizo jingine.

---

Anamaliza mazungumzo kwa njia ya kirafiki.

---

Anataka kupanga mkutano sasa.

### --feedback--

Hakuna mazungumzo kuhusu kupanga kitu chochote.

---

Anaomba msaada zaidi.

### --feedback--

James haombi msaada.

## --video-solution--

2

# --explanation--

Katika mazungumzo, mara nyingi huachwa maneno wakati maana ni wazi. Katika `Talk to you later`, somo `I'll` (kifupisho cha `I will`) limeachwa. Sentensi kamili ingekuwa `I'll talk to you later`. Aina hii ya kuachwa maneno ni ya kawaida katika mazungumzo ya kawaida. Mfano mwingine:

`See you tomorrow!` - Hii ni njia fupi ya kusema `I'll see you tomorrow`.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 44.74,
      "finishTimestamp": 46.5
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "No problem. Talk to you later.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
