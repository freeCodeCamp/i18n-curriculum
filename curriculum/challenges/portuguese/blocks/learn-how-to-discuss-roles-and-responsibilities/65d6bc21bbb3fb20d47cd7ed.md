---
id: 65d6bc21bbb3fb20d47cd7ed
title: Tarefa 43
challengeType: 22
dashedName: task-43
---

<!-- (Audio) Tom: I don't really know her, to be honest. What's her role?
-->

# --description--

Perguntar `What's her role?` é uma forma de descobrir o trabalho ou posição de alguém em um grupo ou projeto. `Role` significa a parte ou trabalho que alguém desempenha em uma situação específica.Por exemplo, se o `role` de alguém em uma escola é professor, isso significa que o trabalho dessa pessoa é ensinar os alunos.

# --fillInTheBlank--

## --sentence--

`I don't really know her, to be honest. What's BLANK BLANK?`

## --blanks--

`her`

### --feedback--

Esta palavra mostra que Tom está falando sobre o trabalho ou papel de uma pessoa do sexo feminino em algo.

---

`role`

### --feedback--

Esta palavra significa o trabalho ou cargo que alguém tem em uma situação.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.98,
      "finishTimestamp": 18.96
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
      "finishTime": 3.98,
      "dialogue": {
        "text": "I don't really know much about her to be honest. What's her role?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.48
    }
  ]
}
```
