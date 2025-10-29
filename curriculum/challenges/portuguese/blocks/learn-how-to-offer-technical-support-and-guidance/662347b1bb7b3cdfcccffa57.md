---
id: 662347b1bb7b3cdfcccffa57
title: Tarefa 50
challengeType: 22
dashedName: task-50
---

<!-- (Audio) Brian: Sophie, I heard you're working on fixing that bug in the user authentication module. Need any help? -->

# --description--

`Heard` é o passado do verbo `to hear`, que significa tornar-se ciente de algo através dos ouvidos ou ser informado de algo.Por exemplo, `I heard the news yesterday` significa que você tomou conhecimento da notícia no dia anterior.

Um `authentication module` em um contexto de software é uma parte de um sistema responsável por verificar a identidade dos usuários.É frequentemente usado em sistemas de login.Por exemplo, `The authentication module checks the username and password` significa que ele verifica as credenciais do usuário.

# --fillInTheBlank--

## --sentence--

`Sophie, I BLANK you're working on BLANK that bug in the user BLANK module. Need any help?`

## --blanks--

`heard`

### --feedback--

É o passado de `to hear`, indicando que Brian foi informado sobre a tarefa de Sophie.

---

`fixing`

### --feedback--

Refere-se ao ato de reparar ou resolver o problema (bug) no software.

---

`authentication`

### --feedback--

Refere-se ao processo de verificar a identidade de um usuário no módulo de software.

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
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 5.66
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
      "finishTime": 3.84,
      "dialogue": {
        "text": "Sophie, I heard you're working on fixing that bug",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.84,
      "finishTime": 6.66,
      "dialogue": {
        "text": "in the user authentication module. Need any help?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.16
    }
  ]
}
```
