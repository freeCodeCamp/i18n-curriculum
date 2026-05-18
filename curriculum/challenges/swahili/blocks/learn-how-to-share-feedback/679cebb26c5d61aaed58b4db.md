---
id: 679cebb26c5d61aaed58b4db
title: Zoezi la 79
challengeType: 19
dashedName: task-79
lang: en-US
---

<!-- (Audio) Maria: Did you hear anything about this? James: No, I didn't. What did he say? -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

James anajua nini kuhusu tatizo la sasisho la hivi karibuni?

## --answers--

Anajua hasa tatizo ni nini.

### --feedback--

James anasema wazi kwamba hakusikia chochote.

---

Hajui chochote kuhusu hilo.

---

Tayari amezungumza na mteja.

### --feedback--

James hakutaja kuzungumza na mteja.

---

Alipokea barua pepe kuhusu tatizo hilo.

### --feedback--

James anasema kwamba hakusikia chochote.

## --video-solution--

2

# --explanation--

Majibu mafupi yenye vitenzi vya msaada hurudia kitenzi cha msaada kutoka kwenye swali kuthibitisha au kukataa jambo fulani. Katika kesi hii, Maria anauliza, `Did you hear anything?`, na James anajibu, `No, I didn't.` badala ya kusema tu `No.` Hapa kuna mifano mingine:

- `Are you coming to the meeting?` → `Yes, I am.`

- `Have they finished the report?` → `No, they haven't.`

- `Will she be here on time?` → `Yes, she will.`

Majibu mafupi hufanya majibu yaonekane ya asili na kamili huku yakiepuka kurudia sentensi kamili.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      },
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 5.62,
      "finishTimestamp": 9.24
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Did you hear anything about this?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 2.49
    },
    {
      "character": "James",
      "opacity": 1,
      "startTime": 2.49
    },
    {
      "character": "James",
      "startTime": 2.66,
      "finishTime": 4.62,
      "dialogue": {
        "text": "No, I didn't. What did he say?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 5.12
    }
  ]
}
```
