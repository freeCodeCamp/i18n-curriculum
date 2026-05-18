---
id: 67e2ae1300a8edcdede767db
title: Zoezi la 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Mark: Can I ask you about a few of them? -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`Can I BLANK you BLANK a few of them?`

## --blanks--

`ask`

### --feedback--

Kitenzi hiki hutumika mtu anapohitaji kupata taarifa au ruhusa.

---

`about`

### --feedback--

Kiunganishi hiki huunganisha mada au somo zinazohusiana.

# --explanation--

`Ask about` inamaanisha kuomba taarifa zinazohusiana na mada fulani. Kwa mfano:

`I asked about the new feature.` – Ulitaka taarifa kuhusu kipengele.

`Can I ask you about...` ni njia ya heshima kuanzisha swali wakati unahitaji taarifa au msaada. Inaonyesha kuwa unaomba ruhusa ya kuzungumzia mada fulani. Kwa mfano:

`Can I ask you about the project deadline?` – Hii inamaanisha unataka kuzungumzia tarehe ya mwisho na kupata maelezo zaidi.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.58,
      "finishTimestamp": 7.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 2.5,
      "dialogue": {
        "text": "Can I ask you about a few of them?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3
    }
  ]
}
```
