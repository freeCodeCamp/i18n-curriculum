---
id: 67acaebb95dabb0ee05500f7
title: Zoezi la 21
challengeType: 22
dashedName: task-21
lang: en-US
---

<!-- (Audio) Anna: If people are working with outdated computers, it can be a setback for productivity. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`If people are working with outdated computers, it can be a BLANK for productivity.`

## --blanks--

`setback`

### --feedback--

Neno hili linamaanisha kikwazo au kitu kinachochelewesha maendeleo.

# --explanation--

`setback` ni kitu kinachochelewesha au kuzuia maendeleo. Kompyuta polepole au zisizofanya kazi vizuri zinaweza kufanya kazi zichukue muda mrefu, na kupunguza ufanisi. Kwa mfano:

- `The project faced a setback due to a critical bug.` - Mradi ulichelewa au ukaathirika kwa sababu ya tatizo kubwa la programu.

- `Losing important data was a major setback for the team.` - Kupoteza data kulileta matatizo na kuchelewesha kazi ya timu.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
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
      "startTimestamp": 35.78,
      "finishTimestamp": 39.68
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
      "finishTime": 4.9,
      "dialogue": {
        "text": "If people are working with outdated computers, it can be a setback for productivity.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
