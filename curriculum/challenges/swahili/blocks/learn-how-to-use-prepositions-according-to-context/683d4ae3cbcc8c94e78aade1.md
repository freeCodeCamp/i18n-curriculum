---
id: 683d4ae3cbcc8c94e78aade1
title: Zoezi la 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (Audio) Bob: Exactly. It's in the back, next to the emergency exit. -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Bob anafafanua nini?

## --answers--

Kwamba mlango wa dharura umefungwa.

### --feedback--

Bob hasemi mlango umefungwa - anataja tu mahali pake.

---

Kwamba mlango wa nyuma unahitaji kufungwa upya.

### --feedback--

Bob hakutaja chochote kuhusu kufungwa au mlango wa nyuma unahitaji matengenezo.

---

Kwamba chumba cha seva kinahitaji kusafishwa.

### --feedback--

Hakuna mazungumzo kuhusu usafi katika sentensi ya Bob.

---

Kwamba kitu kipo karibu na mlango wa dharura.

## --video-solution--

4

# --explanation--

Bob anasema, `Exactly. It's in the back, next to the emergency exit`. Hii ina maana anathibitisha mahali pa kitu - karibu kabisa na mlango wa dharura.

Hakuzungumzii kuhusu matengenezo, usafi, au matatizo.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.4,
      "finishTimestamp": 19.72
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.32,
      "dialogue": {
        "text": "Exactly. It's in the back, next to the emergency exit.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.82
    }
  ]
}
```
