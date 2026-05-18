---
id: 657b1a27dc6daf6ffd52ff1f
title: Zoezi la 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (Audio) Anna: Excellent. Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: Yes. I have a master's degree in computer science. -->

# --description--

Katika Kiingereza, nomino inayofuatiwa na `'s` ikifuatiwa na muundo wa nomino ya pili hutumika kuonyesha umiliki au uhusiano.

Ikiwa nomino ya kwanza ni ya umoja, kama ilivyo katika `Sarah's laptop`, inaonyesha kuwa kompyuta mpakato ni ya Sarah. Hata hivyo, ikiwa nomino ya kwanza ni ya wingi, muundo hubadilika kuwa nomino inayofuatiwa na `'`, kama ilivyo katika `teachers' office`, ikionyesha ofisi ya walimu.

# --questions--

## --text--

`master's degree` katika muktadha wa mazungumzo unarejelea nini?

## --answers--

Digrii kwa walimu wa shule

### --feedback--

`Master's degree` inarejelea digrii ya juu ya kitaaluma, si maalum kwa walimu pekee.

---

Digrii ya elimu ya msingi

### --feedback--

`Master's degree` ni sifa ya elimu ya juu, zaidi ya kiwango cha msingi.

---

Digrii ya ujuzi wa kitaalamu

### --feedback--

Ingawa inaashiria utaalamu, `master's degree` inahusu sifa ya kitaaluma hasa.

---

Digrii ya juu ya kitaaluma

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      },
      {
        "character": "Second Candidate",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 43.44,
      "finishTimestamp": 51.78
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 5.72,
      "dialogue": {
        "text": "Excellent. Can you share details about your educational background? Were you trained in a specific field?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "opacity": 1,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "startTime": 6.36,
      "finishTime": 9.34,
      "dialogue": {
        "text": "Yes. I have a master's degree in computer science.",
        "align": "center"
      }
    },
    {
      "character": "Second Candidate",
      "opacity": 0,
      "startTime": 9.84
    }
  ]
}
```
