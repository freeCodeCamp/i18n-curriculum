---
id: 679d26afcebc4ea8a9478fbf
title: Tarefa 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) James: Absolutely. Do you think we need to update the software again? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

James tem certeza de que eles precisam atualizar o software?

## --answers--

Na verdade não, já que ele está pedindo a opinião da Maria.

---

Sim, ele já decidiu atualizá-lo.

### --feedback--

James está perguntando para Maria sobre isso, então ele provavelmente ainda não decidiu.

---

Sim, ele já começou a atualizar o software.

### --feedback--

James está perguntando se eles devem atualizar o software ou não.

---

Pelo contrário, ele tem certeza de que eles não devem atualizar o software.

### --feedback--

James não está rejeitando a ideia completamente; ele está na verdade pedindo a opinião da Maria sobre o assunto.

## --video-solution--

1

# --explanation--

`To update` significa modificar ou melhorar o software lançando uma nova versão. Atualizações podem incluir correções de bugs, novos recursos ou melhorias de desempenho. Por exemplo:

`The company released an update to fix security vulnerabilities in the app.` - Isso significa que uma nova versão foi lançada para corrigir problemas de segurança.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.8,
      "finishTimestamp": 28.74
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
      "finishTime": 4.34,
      "dialogue": {
        "text": "Absolutely. Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.84
    }
  ]
}
```
