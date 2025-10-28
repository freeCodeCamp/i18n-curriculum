---
id: 678e5a7c4de8c4ccf4ed6ca9
title: Tarefa 66
challengeType: 22
dashedName: task-66
---

<!-- (audio) Jake: Okay, let's agree to disagree. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Okay, let's BLANK to BLANK.`

## --blanks--

`agree`

### --feedback--

Esta palavra significa ter a mesma opinião ou alcançar um entendimento mútuo. 

---

`disagree`

### --feedback--

Esta palavra significa ter uma opinião diferente ou não estar de acordo.

# --explanation--

`Agree` significa estar de acordo ou ter a mesma opinião que alguém.Por exemplo:  

`We both agree that improving security is important.` - Isso significa que você compartilha a mesma opinião sobre segurança com a outra pessoa.

`Disagree` significa ter uma opinião diferente ou não estar de acordo.Por exemplo:  

`Jake and Maria disagree on which software to use.` - Isso mostra que Jake e Maria têm opiniões diferentes sobre a escolha do software.

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
