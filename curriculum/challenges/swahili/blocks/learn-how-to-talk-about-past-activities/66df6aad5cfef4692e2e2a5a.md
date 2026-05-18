---
id: 66df6aad5cfef4692e2e2a5a
title: Zoezi la 74
challengeType: 22
dashedName: task-74
lang: en-US
---
<!--
AUDIO REFERENCE:
Linda: Not yet, but I anticipate we'll start receiving more detailed reports as more users navigate the updated interface.
-->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`Not yet, but I anticipate we'll start receiving more detailed reports BLANK BLANK BLANK BLANK the updated interface.`

## --blanks--

`as`

### --feedback--

Neno linaloonyesha matendo mawili yanayotokea kwa wakati mmoja au tendo moja linalotegemea tendo jingine.

---

`more`

### --feedback--

Neno linaloashiria kiasi au idadi kubwa zaidi.

---

`users`

### --feedback--

Neno linalorejelea watu wanaotumia na kuvinjari kiolesura kilichosasishwa.

---

`navigate`

### --feedback--

Neno linalomaanisha kuzunguka au kupitia kitu, kama tovuti au programu.

# --explanation--

`As` linaweza kutumika kumaanisha "wakati" au "mara", likionyesha kuwa tendo moja litafanyika wakati tendo jingine linaendelea. Kwa mfano:

- `As I was walking home, they called me.` - Walikupigia simu wakati ulipokuwa unarudi nyumbani.

- `You will get better at coding as you practice more.` - Utaimarika wakati au mara unapotumia mazoezi zaidi.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_3-2.mp3",
      "startTime": 1,
      "startTimestamp": 34.22,
      "finishTimestamp": 40.44
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
      "finishTime": 4.82,
      "dialogue": {
        "text": "Not yet, but I anticipate we'll start receiving more detailed reports",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.82,
      "finishTime": 7.22,
      "dialogue": {
        "text": "as more users navigate the updated interface.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.72
    }
  ]
}
```
