---
id: 67eeb0a9bfe9ce2ab1cbffd2
title: Zoezi la 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (audio) Sophie: Great. Also, you should have run the test suite before submitting your code. -->

# --instructions--

Sikiliza sauti na ujibu swali hapa chini.

# --questions--

## --text--

Nini kingine Mark angepaswa kufanya?

## --answers--

Angepaswa kuandika upya msimbo wake wote.

### --feedback--

Mark hakuhitaji kuandika upya kila kitu.

---

Angepaswa kujaribu msimbo wake kwanza.

---

Angepaswa kuondoa maoni yote.

### --feedback--

Maoni ni muhimu na hayapaswi kuondolewa.

---

Angepaswa kuruka majaribio kwa sababu huchukua muda mrefu sana.

### --feedback--

Kujaribu ni hatua muhimu kabla ya kuwasilisha msimbo.

## --video-solution--

2

# --explanation--

`test suite` ni mkusanyiko wa majaribio yanayokagua kama programu inafanya kazi ipasavyo. Kwa mfano:

- `We ran the test suite to check if the app works properly.` - Timu ilitekeleza majaribio yote kuhakikisha programu inafanya kazi kama inavyotarajiwa.

- `We need to add more tests to the test suite to check for edge cases.` - Timu inapaswa kujumuisha majaribio zaidi kufunika hali zote zinazowezekana.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 42.42,
      "finishTimestamp": 45.94
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
      "finishTime": 4.52,
      "dialogue": {
        "text": "Great. Also, you should have run the test suite before submitting your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.02
    }
  ]
}
```
