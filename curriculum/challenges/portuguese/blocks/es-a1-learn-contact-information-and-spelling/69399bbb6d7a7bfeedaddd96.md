---
id: 69399bbb6d7a7bfeedaddd96
title: Tarefa 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Basti: Me llamo Sebastián Ávila Gómez. -->

# --description--

O verbo `escribir` significa "to write". Quando falantes de espanhol querem explicar como uma palavra é escrita ou soletrada, eles frequentemente usam a expressão `se escribe`.

Este formulário vem do verbo `escribir` e é comumente usado antes de soletrar nomes, e-mails ou outras palavras letra por letra. Por exemplo:

- `Carlos se escribe C-a-r-l-o-s.` – Carlos se soletra C-a-r-l-o-s.

- `Mi apellido se escribe con z.` – Meu sobrenome é escrito com z.

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Hola, buenas noches.`

`Me llamo Sebastián Ávila Gómez.`

`Sebastián BLANK BLANK S-e-b-a-s-t-i-á-n, con acento en la última a.`

## --blanks--

`se`

### --feedback--

Esta pequena palavra faz parte de uma expressão comum usada ao explicar como algo é escrito.

---

`escribe`

### --feedback--

Esta forma verbal vem de `escribir` e é usada ao soletrar uma palavra.

# --explanation--

`Se escribe` é usado ao explicar como uma palavra ou nome é escrito.

Vem do verbo `escribir` e é comumente usado antes de soletrar algo letra por letra.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 0.81,
      "finishTimestamp": 16.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 2.41,
      "dialogue": {
        "text": "Hola, buenas noches.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 3.32,
      "finishTime": 6.25,
      "dialogue": {
        "text": "Me llamo Sebastián Ávila Gómez.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 7.36,
      "finishTime": 16.69,
      "dialogue": {
        "text": "Sebastián se escribe s-e-b-a-s-t-i-á-n, con acento en la última a.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 17.19
    }
  ]
}
```
