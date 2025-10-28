---
id: 67c4bacefd5097faecca40d4
title: Tarefa 22
challengeType: 19
dashedName: task-22
---

<!-- (Audio) Bob: True, but we could try working even more extra hours just for this project. Wouldn't that make a difference? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Bob quer saber?  

## --answers--

Se eles devem cancelar o projeto.  

### --feedback--

Bob não está perguntando sobre o cancelamento do projeto.  

---

Se trabalhar menos horas seria melhor.  

### --feedback--

Bob está sugerindo trabalhar mais horas, não menos.  

---

Se a equipe já resolveu o problema.  

### --feedback--

Bob está perguntando se a sugestão dele vai ajudar, não se o problema já está resolvido.  

---

Se trabalhar horas extras vai melhorar a situação.  

## --video-solution--

4  

# --explanation--

Usar negativos em perguntas com verbos auxiliares ou modais (como `wouldn't`, `isn't`, `doesn't`), que exigem respostas diretas `yes`/`no`, sugere que o falante espera que a resposta seja positiva — Bob assume, neste caso, que trabalhar horas extras ajudará. Outro exemplo:

`Doesn't this plan seem like a good idea?` - O orador espera que o ouvinte concorde que o plano é bom.

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
      "filename": "B1_12-1.mp3",
      "startTime": 1,
      "startTimestamp": 29,
      "finishTimestamp": 34.76
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
      "finishTime": 5.18,
      "dialogue": {
        "text": "True, but we could try working even more extra hours just for this project.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 5.68,
      "finishTime": 6.76,
      "dialogue": {
        "text": "Wouldn't that make a difference?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.26
    }
  ]
}
```
