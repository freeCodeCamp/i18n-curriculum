---
id: 67dd5baa84d2fcc56c09dce3
title: Tarefa 15
challengeType: 22
dashedName: task-15
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`By the way, did we BLANK on the deadline for the first BLANK?`

## --blanks--

`decide`

### --feedback--

Isso significa fazer uma escolha ou chegar a uma conclusão sobre algo.

---

`phase`

### --feedback--

Isto se refere a uma etapa ou parte específica de um processo ou projeto.

# --explanation--

`To decide` significa escolher algo depois de pensar sobre isso. Por exemplo:

`We need to decide which tools to use for the project.` – Isso significa escolher as ferramentas após considerar as opções.

Uma `phase` refere-se a uma parte ou etapa em um processo maior. Por exemplo:

`We just finished the testing phase of the software.` – Isso significa que a etapa de teste no processo de desenvolvimento está completa.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
