---
id: 695fea6173bbffcaa3ffc36d
title: Tarefa 10
challengeType: 19
dashedName: task-10
lang: es
---

<!-- (Audio) Esteban: ¿Cómo te llamas? -->

# --description--

Existem duas formas comuns de perguntar o nome de alguém em espanhol.

Ambos são usados no espanhol cotidiano e significam a mesma coisa. Eles apenas são estruturados de forma diferente.

# --instructions--

Ouça o áudio e responda a pergunta abaixo. 

# --questions--

## --text--

Qual das seguintes perguntas **é semelhante** ao que você ouve no áudio?

## --answers--

`¿Cuál es tu nombre?`

---

`¿Dónde vives?`

### --feedback--

Esta pergunta pergunta onde alguém mora.

---

`¿Cuál es tu apellido?`

### --feedback--

Isso pede o sobrenome de alguém.

---

`¿Tienes apodo?`

### --feedback--

Isso pergunta se alguém tem um apelido.

## --video-solution--

1

# --explanation--

Esteban diz `¿Cómo te llamas?`. Esta é uma das formas mais comuns de perguntar o nome de alguém em espanhol. Outra pergunta muito comum com o mesmo significado é:

`¿Cuál es tu nombre?`

Ambas as perguntas são usadas no espanhol cotidiano para perguntar o nome de uma pessoa. Elas são simplesmente estruturadas de forma diferente:

- `¿Cómo te llamas?` usa o verbo `llamarse` (to be called).
- `¿Cuál es tu nombre?` pergunta diretamente pelo nome como um substantivo.

Nesta tarefa, a resposta correta é a opção que pergunta o nome de alguém.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Esteban",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_personal_details_just_questions.mp3",
      "startTime": 1,
      "startTimestamp": 43.02,
      "finishTimestamp": 44.53
    }
  },
  "commands": [
    {
      "character": "Esteban",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Esteban",
      "startTime": 1,
      "finishTime": 2.51,
      "dialogue": {
        "text": "¿Cómo te llamas?",
        "align": "center"
      }
    },
    {
      "character": "Esteban",
      "opacity": 0,
      "startTime": 2.61
    }
  ]
}
```
