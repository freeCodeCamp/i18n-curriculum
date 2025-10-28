---
id: 67d78c94b686ce3bddcaf8ab
title: Tarefa 117
challengeType: 22
dashedName: task-117
---

<!-- (Audio) Brian: It could save us time and resources. What about timelines? Which option is faster? -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`It could BLANK and resources. What about BLANK? Which option is faster?`

## --blanks--

`save us time`

### --feedback--

Essas três palavras juntas significam reduzir a quantidade de tempo necessária para completar uma tarefa.  

---

`timelines`

### --feedback--

Esta palavra no plural refere-se a cronogramas ou prazos para a conclusão de um projeto.  

# --explanation--

`Save us time` significa reduzir o tempo necessário para completar algo, tornando o processo mais eficiente.Por exemplo:

`Using automation tools can save us time on repetitive tasks.` – Isso significa que ferramentas de automação ajudam a completar tarefas mais rapidamente.  

`Timelines` referem-se a cronogramas ou prazos que mostram quando diferentes partes de um projeto devem ser concluídas.Por exemplo:

`We need to adjust our timelines to finish the project on schedule.` – Isso significa alterar os prazos para garantir que o projeto seja concluído no prazo.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 32.34,
      "finishTimestamp": 37.52
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.18,
      "dialogue": {
        "text": "It could save us time and resources. What about timelines? Which option is faster?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.68
    }
  ]
}
```
