---
id: 67a9f44e6dcabb0c402a9bfb
title: Zoezi la 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Bob: Do you think that's a good idea? -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Bob anataka kujua nini?

## --answers--

Je, wafanyakazi tayari wamekununua samani za ofisi.

### --feedback--

Bob haulizi kuthibitisha ununuzi.

---

Gharama ya samani za ofisi.

### --feedback--

Bob haulizi kuhusu bei.

---

Je, kampuni itapandisha kiasi cha ruzuku.

### --feedback--

Bob haongei kuhusu mabadiliko ya ruzuku.

---

Je, Anna anafikiri kutumia ruzuku kwa ajili ya samani za ofisi ni wazo nzuri.

## --video-solution--

4

# --explanation--

Bob anauliza, `Do you think that's a good idea?` Hii ni njia ya kuuliza maoni ya mtu kuhusu pendekezo au mpango. Hapa kuna njia nyingine za kuuliza maoni:

- `Do you think this will work?`

- `What's your opinion on this?`

- `How do you feel about this plan?`

Katika mazungumzo haya, Bob anarejelea wafanyakazi kutumia ruzuku ya kazi ya mbali kununua samani za ofisi. Badala ya kutoa maoni yake mwenyewe, anauliza Anna anafikiri nini.

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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 8.6,
      "finishTimestamp": 10.04
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
      "finishTime": 2.44,
      "dialogue": {
        "text": "Do you think that's a good idea?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 2.94
    }
  ]
}
```
