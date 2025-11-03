---
id: 68443eddeab5bb2d7d6e44bf
title: Tarefa 45
challengeType: 22
dashedName: task-45
lang: en-US
---

<!-- (Audio) Bob: Last, where should we set up the break room? -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Last, where should we BLANK the BLANK?`

## --blanks--

`set up`

### --feedback--

Esta frase de duas palavras significa organizar ou preparar algo para uso.

---

`break room`

### --feedback--

Esta frase de duas palavras refere-se a um espaço onde os funcionários podem relaxar do trabalho.

# --explanation--

`Set up` significa preparar ou organizar algo para uso. Por exemplo:

`We need to set up the new computers before the meeting.` – Isso significa prepará-los.

`Break room` é um lugar em um escritório onde as pessoas descansam, comem ou relaxam. Por exemplo:

`Let's meet in the break room after lunch.` – Isso se refere a um espaço destinado para fazer uma pausa.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 61.04,
      "finishTimestamp": 63.6
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 3.56,
      "dialogue": {
        "text": "Last, where should we set up the break room?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.06
    }
  ]
}
```
