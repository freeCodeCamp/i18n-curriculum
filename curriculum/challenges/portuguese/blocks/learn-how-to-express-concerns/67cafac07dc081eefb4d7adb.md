---
id: 67cafac07dc081eefb4d7adb
title: Tarefa 135
challengeType: 19
dashedName: task-135
---

<!-- (Audio) Bob: That makes sense. Could you set up a weekly meeting to discuss progress and keep everyone in the loop? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.  

# --questions--

## --text--

Qual é o objetivo de ter reuniões semanais?

## --answers--

Para reduzir o número de tarefas que a equipe possui.

### --feedback--

Bob não menciona reduzir tarefas.  

---

Para evitar fazer quaisquer alterações no projeto.

### --feedback--

Bob não sugere que eles evitem fazer mudanças.

---

Para aumentar o número de reuniões sem um objetivo claro.

### --feedback--

Bob tem um objetivo específico e ele o menciona.

---

Para garantir que todos fiquem atualizados sobre o projeto.

## --video-solution--

4  

# --explanation--

`To keep someone in the loop` significa mantê-los informados sobre atualizações e decisões importantes.Por exemplo:

`Please keep me in the loop about any changes to the schedule.` - Isso significa que o falante quer ser atualizado se algo mudar.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 43.3,
      "finishTimestamp": 48.18
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
      "finishTime": 3.26,
      "dialogue": {
        "text": "That makes sense. Could you set up a weekly meeting",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.26,
      "finishTime": 5.88,
      "dialogue": {
        "text": "to discuss progress and keep everyone in the loop?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 6.38
    }
  ]
}
```
