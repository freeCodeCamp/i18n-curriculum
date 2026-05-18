---
id: 678a5e7dffffba38c5ad16c4
title: Zoezi la 17
challengeType: 22
dashedName: task-17
lang: en-US
---

<!-- (audio) Linda: In my case, I prefer Python because it's great for data analysis. Plus, it's really good for building prototypes quickly. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`In my case, I prefer Python because it's BLANK data analysis. Plus, it's really BLANK building prototypes quickly.`

## --blanks--

`great for`

### --feedback--

Usemi huu wa maneno mawili unamaanisha kitu ni kinachofaa sana au kinachofanya kazi vizuri kwa kusudi fulani.

---

`good for`

### --feedback--

Usemi huu wa maneno mawili unamaanisha kitu kinachofaa au kinachosaidia kwa kazi au hali fulani.

# --explanation--

Zote `great for` na `good for` zinamaanisha kitu kinachosaidia sana, kinachofaa au kinachofanya kazi vizuri kwa kusudi fulani. Kwa mfano:

- `This new software is great for managing large projects.` - Hii inamaanisha programu ni inayofaa sana na yenye ufanisi kwa kusimamia miradi mikubwa.

- `Cloud storage is good for backing up large volumes of data.` - Hii inamaanisha hifadhi ya wingu ni yenye ufanisi mkubwa na inayofaa kuhifadhi salama kiasi kikubwa cha data.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.04,
      "finishTimestamp": 21.9
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.3,
      "dialogue": {
        "text": "In my case, I prefer Python because it's great for data analysis.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.64,
      "finishTime": 6.86,
      "dialogue": {
        "text": "Plus it's really good for building prototypes quickly.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.36
    }
  ]
}
```
