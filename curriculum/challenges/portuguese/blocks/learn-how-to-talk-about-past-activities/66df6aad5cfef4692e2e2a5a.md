---
id: 66df6aad5cfef4692e2e2a5a
title: Tarefa 74
challengeType: 22
dashedName: task-74
---

<!--
AUDIO REFERENCE:
Linda: Not yet, but I anticipate we'll start receiving more detailed reports as more users navigate the updated interface.
-->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Not yet, but I anticipate we'll start receiving more detailed reports BLANK BLANK BLANK BLANK the updated interface.`

## --blanks--

`as`

### --feedback--

Uma palavra que mostra duas ações acontecendo ao mesmo tempo ou uma ação dependendo da outra.

---

`more`

### --feedback--

Uma palavra que indica uma quantidade ou número maior.

---

`users`

### --feedback--

Uma palavra que se refere às pessoas que navegam na interface atualizada.

---

`navigate`

### --feedback--

Uma palavra que significa mover-se ao redor ou através de algo, como um site ou um aplicativo.

# --explanation--

`As` pode ser usado para significar "enquanto" ou "quando", mostrando que uma ação acontecerá enquanto outra ação está ocorrendo.Por exemplo:

- `As I was walking home, they called me.` - Eles te chamaram enquanto você estava indo para casa.

- `You will get better at coding as you practice more.` - Você vai melhorar enquanto ou quando praticar mais.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-2.mp3",
      "startTime": 1,
      "startTimestamp": 34.22,
      "finishTimestamp": 40.44
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Not yet, but I anticipate we'll start receiving more detailed reports",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.82,
      "finishTime": 7.22,
      "dialogue": {
        "text": "as more users navigate the updated interface.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.72
    }
  ]
}
```
