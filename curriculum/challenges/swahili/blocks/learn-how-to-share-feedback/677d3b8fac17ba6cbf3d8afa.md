---
id: 677d3b8fac17ba6cbf3d8afa
title: Zoezi la 3
challengeType: 22
dashedName: task-3
lang: en-US
---

<!-- (Audio) Bob: I want to start by saying that you've done a great job with your QA work. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`I want to start by BLANK that you've done a great job with your BLANK work.`

## --blanks--

`saying`

### --feedback--

Hii ni aina ya `-ing` ya kitenzi `say`, inayotumika baada ya kiambishi `by` kuonyesha njia ya kuanza.

---

`QA`

### --feedback--

Hii inasimama kwa `Quality Assurance`, ikimaanisha mchakato wa kuhakikisha bidhaa zinakidhi viwango vinavyotakiwa.

# --explanation--

Kitenzi kinapofuata kiambishi, lazima kiwe katika aina ya `-ing` (gerund). Katika sentensi hii, `saying` inafuata kiambishi `by`, ikionyesha njia ambayo Bob anatumia kuanza kauli yake. Kwa mfano:

`She improved her skills by practicing regularly.` - Hapa, `practicing` inafuata kiambishi `by`, ikionyesha jinsi alivyoboresha ujuzi wake.

Bob anamsifu Jessica kwa kazi yake katika `QA`. `QA` inasimama kwa `Quality Assurance`. Inahusu mchakato wa kuhakikisha bidhaa au huduma zinakidhi viwango maalum vya ubora na zinafanya kazi ipasavyo. Mfano mwingine:

`The QA team identified several bugs during testing.` - Hii ina maana kwamba watu wanaohusika kuhakikisha ubora wa programu ni mzuri waliweza kugundua hitilafu katika programu kabla ya kutolewa kwake.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_8-1.mp3",
      "startTime": 1,
      "startTimestamp": 3.3,
      "finishTimestamp": 6.7
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
      "finishTime": 4.4,
      "dialogue": {
        "text": "I want to start by saying that you've done a great job with your QA work.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
