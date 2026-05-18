---
id: 657cbef9aa43ceba8af6feb4
title: Aufgabe 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (audio) Sophie: I think she has a passion for technology and enjoys leading our team. -->

# --description--

Wenn Sie etwas sehr gern tun, können Sie sagen, dass Sie `enjoy` es tun. Das ist eine einfache Möglichkeit auszudrücken, dass Ihnen etwas Freude bereitet.

Zum Beispiel können Sie sagen, `I enjoy playing video games`. Das bedeutet, dass Ihnen das Spielen von Videospielen Spaß macht.

Im Dialog erzählt Sophie, was Maria an ihrem Job gern hat.

# --fillInTheBlank--

## --sentence--

`I think she has a passion for technology and she BLANK leading our team.`

## --blanks--

`enjoys`

### --feedback--

Dieses Verb bedeutet, dass Maria etwas gern hat und sich freut, es zu tun. Es endet auf `-s`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 8.50,
      "finishTimestamp": 11.88
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
      "finishTime": 4.38,
      "dialogue": {
        "text": "I think she has a passion for technology and she enjoys leading our team.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
