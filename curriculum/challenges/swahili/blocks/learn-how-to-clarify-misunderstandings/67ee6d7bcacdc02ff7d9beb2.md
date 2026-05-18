---
id: 67ee6d7bcacdc02ff7d9beb2
title: Zoezi la 69
challengeType: 22
dashedName: task-69
lang: en-US
---

<!-- (Audio) Lisa: It could be a JavaScript issue. Maybe there's a problem with the event handling. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`It could be a JavaScript issue. Maybe BLANK a BLANK BLANK the BLANK.`

## --blanks--

`there's`

### --feedback--

Neno hili hutumika kuzungumzia uwepo wa kitu au kusema kwamba kitu kipo au kinaendelea kutokea. Ni kifupisho cha `there is`.

---

`problem`

### --feedback--

Neno hili linahusu tatizo au ugumu unaohitaji kutatuliwa au kurekebishwa.

---

`with`

### --feedback--

Kitenzi hiki kinaonyesha uhusiano au muunganiko kati ya vitu viwili.

---

`event handling`

### --feedback--

Msemo huu wa maneno mawili unahusu jinsi programu au tovuti zinavyotenda kwa matendo kama kubofya au kubonyeza funguo, yanayofanywa na mtumizi. Neno la pili linaishia na `-ing`.

# --explanation--

`There's a problem with` hutumika kuelezea kwamba kitu hakifanyi kazi ipasavyo. Inamaanisha kuna tatizo au ugumu unaohusiana na jambo fulani. Kwa mfano:

`There's a problem with the network.` – Hii inamaanisha mtandao haufanyi kazi ipasavyo.

`Event handling` inahusu jinsi programu au tovuti zinavyosimamia matendo ya mtumizi kama kubofya, kubonyeza funguo za kibodi, au kusogeza panya. Kwa mfano:

`There's an issue with event handling.` - Hii inamaanisha programu haijibu ipasavyo matendo ya mtumizi.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.38,
      "finishTimestamp": 35.2
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "It could be a JavaScript issue. Maybe there's a problem with the event handling.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
