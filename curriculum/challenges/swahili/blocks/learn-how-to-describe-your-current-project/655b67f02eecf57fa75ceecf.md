---
id: 655b67f02eecf57fa75ceecf
title: Zoezi la 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: That's important work. I'm helping our team learn how to stay safe online. -->

# --description--

Kitenzi `stay` kinatumika kuonyesha kubaki katika hali fulani au sharti fulani. Mara nyingi hutumika katika maelekezo au ushauri wa kujilinda katika hali fulani. Kwa mfano:

- `Stay safe online.` - Endelea kuwa salama unapotumia intaneti.

- `Stay calm during the test.` - Endelea kuwa mtulivu.

- `Stay focused on your work.` - Endelea kuzingatia kazi yako.

# --fillInTheBlank--

## --sentence--

`That's important work. I'm BLANK our team learn how to BLANK safe online.`

## --blanks--

`helping`

### --feedback--

Kitenzi hiki kinaonyesha kwamba Sophie anatoa msaada au usaidizi kwa timu yake kwa ufanisi. Kinaishia kwa `-ing`.

---

`stay`

### --feedback--

Neno hili linatumika kupendekeza kudumisha hali fulani, katika kesi hii, kuwa salama wakati wa mtandao.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 13.92,
      "finishTimestamp": 17.34
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
      "finishTime": 4.42,
      "dialogue": {
        "text": "That's important work. I'm helping our team learn how to stay safe online.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.92
    }
  ]
}
```
