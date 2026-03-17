---
id: 678e5a7c4de8c4ccf4ed6ca9
title: Attività 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (audio) Jake: Okay, let's agree to disagree. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Okay, let's BLANK to BLANK.`

## --blanks--

`agree`

### --feedback--

Questa parola significa avere la stessa opinione o raggiungere un'intesa reciproca.

---

`disagree`

### --feedback--

Questa parola significa avere un'opinione diversa o non essere d'accordo.

# --explanation--

`Agree` significa essere d'accordo o avere la stessa opinione di qualcuno. Per esempio:  

`We both agree that improving security is important.` - Questo significa che condividi la stessa opinione sulla sicurezza con un'altra persona.

`Disagree` significa avere un'opinione diversa o non essere d'accordo. Per esempio:  

`Jake and Maria disagree on which software to use.` - Questo mostra che Jake e Maria hanno opinioni diverse sulla scelta del software.

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
