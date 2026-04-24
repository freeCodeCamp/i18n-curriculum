---
id: 657b2fc9c0f96bdfddfce4d9
title: タスク 90
challengeType: 22
dashedName: task-90
lang: en-US
---

<!-- (Audio) Anna: I took a course in organizational psychology, and it piqued my interest in the workplace and employee dynamics. -->

# --description--

`pique one's interest` とは、誰かの好奇心を刺激したり、もっと知りたいと思わせることを意味します。何かがあなたの注意を引き、興味を持たせるときに使います。例えば：

- `The new AI tool really piqued my interest.` - それがあなたの好奇心を刺激し、もっと知りたいと思わせました。

- `Her presentation on cybersecurity piqued the team's interest.` - チームはより好奇心を持ち、もっと知りたいと思いました。

# --fillInTheBlank--

## --sentence--

`I BLANK a course in organizational BLANK, and it BLANK my interest in the workplace and employee dynamics.`

## --blanks--

`took`

### --feedback--

この単語は、コースに参加したり修了したりする行為を指します。過去形を正しく使う必要があります。

---

`psychology`

### --feedback--

この単語は、特に職場環境における心と行動の研究を表します。

---

`piqued`

### --feedback--

この単語は、興味や好奇心を引き起こすことを意味します。過去形を正しく使う必要があります。

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-5.mp3",
      "startTime": 1,
      "startTimestamp": 13.14,
      "finishTimestamp": 18.62
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
      "finishTime": 6.48,
      "dialogue": {
        "text": "I took a course in organizational psychology, and it piqued my interest in the workplace and employee dynamics.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.98
    }
  ]
}
```
