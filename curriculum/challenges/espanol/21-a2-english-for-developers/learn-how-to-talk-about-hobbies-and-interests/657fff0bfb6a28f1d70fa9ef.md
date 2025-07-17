---
id: 657fff0bfb6a28f1d70fa9ef
title: Task 80
challengeType: 22
dashedName: task-80
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

La expresión `I appreciate it, but` se utiliza para expresar gratitud por una oferta o gesto mientras que se rechaza educadamente o se indica una limitación o preferencia personal.

Por ejemplo, si tu amigo se ofrece para ayudarte con un desafío de codificación, y estás agradecido pero quieres intentarlo por tu cuenta primero, podrías decir, `I appreciate it, but I want to give it a shot by myself first.`

# --fillInTheBlank--

## --sentence--

`Thanks for the invite, Sarah. I BLANK it, BLANK I'm not really into sci-fi.`

## --blanks--

`appreciate`

### --feedback--

Esta palabra se usa a menudo para mostrar agradecimiento o gratitud.

---

`but`

### --feedback--

Esta conjunción se utiliza para introducir una frase o cláusula que contrasta con lo que ya se ha mencionado.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
