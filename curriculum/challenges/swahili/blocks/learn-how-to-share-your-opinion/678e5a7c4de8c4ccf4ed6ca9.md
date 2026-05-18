---
id: 678e5a7c4de8c4ccf4ed6ca9
title: Zoezi la 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (audio) Jake: Okay, let's agree to disagree. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`Okay, let's BLANK to BLANK.`

## --blanks--

`agree`

### --feedback--

Neno hili linamaanisha kuwa na maoni sawa au kufikia uelewa wa pamoja.

---

`disagree`

### --feedback--

Neno hili linamaanisha kuwa na maoni tofauti au kutokubaliana.

# --explanation--

`Agree` linamaanisha kukubaliana au kuwa na maoni sawa na mtu mwingine. Kwa mfano:  

`We both agree that improving security is important.` - Hii ina maana kwamba unashiriki maoni sawa kuhusu usalama na mtu mwingine.

`Disagree` linamaanisha kuwa na maoni tofauti au kutokubaliana. Kwa mfano:  

`Jake and Maria disagree on which software to use.` - Hii inaonyesha kwamba Jake na Maria wana maoni tofauti kuhusu uchaguzi wa programu.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-2.mp3",
      "startTime": 1,
      "startTimestamp": 56.0,
      "finishTimestamp": 58.28
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.28,
      "dialogue": {
        "text": "Okay, let's agree to disagree.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 3.78
    }
  ]
}
```
