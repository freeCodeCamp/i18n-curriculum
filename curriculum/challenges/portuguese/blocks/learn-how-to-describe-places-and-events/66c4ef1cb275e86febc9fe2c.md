---
id: 66c4ef1cb275e86febc9fe2c
title: Tarefa 113
challengeType: 22
dashedName: task-113
lang: en-US
---

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`It should, but it's not BLANK because the live server extension might not be BLANK.`

## --blanks--

`displaying`

### --feedback--

A ação de mostrar ou renderizar algo. Esta palavra termina em `-ing`.

---

`running`

### --feedback--

Indica que a extensão está ativa e funcionando. Esta palavra termina em `-ing`.

# --explanation--

Um gerúndio é uma forma verbal terminada em `-ing` que funciona como um substantivo. Nesta frase, `displaying` e `running` são gerúndios que descrevem ações em andamento. Por exemplo:

- `Updating the software is essential.` - Aqui, `Updating` é um gerúndio que descreve uma ação.

Na frase de Sarah, `displaying` e `running` descrevem ações relacionadas à extensão do servidor ao vivo e como ela funciona.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.62,
      "finishTimestamp": 16.66
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 2.62,
      "dialogue": {
        "text": "It should, but it's not displaying",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 2.62,
      "finishTime": 5.04,
      "dialogue": {
        "text": "because the live server extension might not be running.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.54
    }
  ]
}
```
