---
id: 68443eddeab5bb2d7d6e44bf
title: Zoezi la 45
challengeType: 22
dashedName: task-45
lang: en-US
---

<!-- (Audio) Bob: Last, where should we set up the break room? -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`Last, where should we BLANK the BLANK?`

## --blanks--

`set up`

### --feedback--

Usemi huu wa maneno mawili unamaanisha kupanga au kuandaa kitu kwa ajili ya matumizi.

---

`break room`

### --feedback--

Usemi huu wa maneno mawili unahusu sehemu ambapo wafanyakazi wanaweza kupumzika kutoka kazini.

# --explanation--

`Set up` inamaanisha kuandaa au kupanga kitu kwa ajili ya matumizi. Kwa mfano:

`We need to set up the new computers before the meeting.` – Hii inamaanisha kuvitayarisha.

`Break room` ni sehemu katika ofisi ambapo watu hupumzika, kula, au kupumzika. Kwa mfano:

`Let's meet in the break room after lunch.` – Hii inahusu nafasi iliyotengwa kwa ajili ya kupumzika.

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
      "startTimestamp": 61.04,
      "finishTimestamp": 63.6
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
      "finishTime": 3.56,
      "dialogue": {
        "text": "Last, where should we set up the break room?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.06
    }
  ]
}
```
