---
id: 679cebb26c5d61aaed58b4db
title: Tarefa 79
challengeType: 19
dashedName: task-79
lang: en-US
---

<!-- (Audio) Maria: Did you hear anything about this? James: No, I didn't. What did he say? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que James sabe sobre o problema com a última atualização?

## --answers--

Ele sabe exatamente qual é o problema.

### --feedback--

James claramente diz que ele não ouviu nada.

---

Ele não sabe nada sobre isso.

---

Ele já falou com o cliente.

### --feedback--

James não menciona falar com o cliente.

---

Ele recebeu um email sobre o problema.

### --feedback--

James afirma que ele não ouviu nada.

## --video-solution--

2

# --explanation--

Respostas curtas com verbos auxiliares repetem o auxiliar da pergunta para confirmar ou negar algo. Neste caso, Maria pergunta, `Did you hear anything?`, e James responde, `No, I didn't.` em vez de apenas dizer `No.` Aqui estão alguns outros exemplos: 

- `Are you coming to the meeting?` → `Yes, I am.`  

- `Have they finished the report?` → `No, they haven't.`  

- `Will she be here on time?` → `Yes, she will.`  

Respostas curtas fazem com que as respostas soem naturais e completas enquanto evitam a repetição da frase inteira.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      },
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
      "startTimestamp": 5.62,
      "finishTimestamp": 9.24
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Did you hear anything about this?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 2.49
    },
    {
      "character": "James",
      "opacity": 1,
      "startTime": 2.49
    },
    {
      "character": "James",
      "startTime": 2.66,
      "finishTime": 4.62,
      "dialogue": {
        "text": "No, I didn't. What did he say?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 5.12
    }
  ]
}
```
