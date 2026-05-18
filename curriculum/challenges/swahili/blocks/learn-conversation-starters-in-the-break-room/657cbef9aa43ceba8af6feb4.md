---
id: 657cbef9aa43ceba8af6feb4
title: Zoezi la 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (audio) Sophie: I think she has a passion for technology and enjoys leading our team. -->

# --description--

Unapopenda kufanya jambo sana, unaweza kusema unakupenda `enjoy`. Hii ni njia rahisi ya dhihirisha kwamba jambo fulani linakufanya uwe na furaha.

Kwa mfano, unaweza kusema, `I enjoy playing video games`. Hii inamaanisha kucheza michezo ya video ni furaha kwako.

Katika mazungumzo, Sophie anasema jambo ambalo Maria anafurahia katika kazi yake.

# --fillInTheBlank--

## --sentence--

`I think she has a passion for technology and she BLANK leading our team.`

## --blanks--

`enjoys`

### --feedback--

Kitenzi hiki kinamaanisha Maria anapenda jambo fulani na anahisi furaha akilifanya. Kinaishia kwa `-s`.

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
