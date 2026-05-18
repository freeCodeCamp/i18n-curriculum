---
id: 68555dfadef342c2db9b5abf
title: Zoezi la 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

Usemi huu wa maneno mawili unamaanisha kuanzisha au kusababisha jambo kuonekana au kuwa tatizo. Neno la kwanza ni umbo la wakati uliopita la `bring`.

---

`unexpected`

### --feedback--

Neno hili linamaanisha jambo lilitokea ambalo halikupangwa au kutabirika. Linaishia na `-ed`.

# --explanation--

`Brought up` inamaanisha kusababisha jambo kuonekana, hasa tatizo au hitilafu. Hapa, `brought` ni umbo la wakati uliopita la `bring`. Kwa mfano:

`The new feature brought up several bugs.` – Hii inamaanisha kipengele kilisababisha hitilafu kuonekana.

`Unexpected` inaelezea jambo linalotokea bila onyo au mpango. Kwa mfano:

`We had an unexpected delay due to server issues.` – Hii inamaanisha kucheleweshwa hakukutabirika.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.32,
      "finishTimestamp": 35.5
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "What about testing? The last update brought up some unexpected challenges.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.68
    }
  ]
}
```
