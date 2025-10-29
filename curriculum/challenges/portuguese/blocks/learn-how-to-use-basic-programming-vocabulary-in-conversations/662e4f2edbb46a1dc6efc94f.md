---
id: 662e4f2edbb46a1dc6efc94f
title: Tarefa 37
challengeType: 22
dashedName: task-37
---

<!-- (Audio) Tom: Don't worry. Debugging is a common challenge for programmers. -->

# --description--

`Common` é usado para descrever algo que acontece frequentemente ou é amplamente compartilhado entre muitas pessoas.Por exemplo, `Colds are a common illness during the winter.` Isso significa que é um problema de saúde comum que muitas pessoas enfrentam durante essa época do ano.

`Challenge` refere-se a uma tarefa ou situação que requer esforço especial para ser realizada porque é difícil.Por exemplo, `Learning to ride a bike was a big challenge for her at first.` Esta frase descreve como aprender a andar de bicicleta apresentou dificuldades inicialmente.

# --fillInTheBlank--

## --sentence--

`Don't worry. Debugging is a BLANK BLANK for programmers.`

## --blanks--

`common`

### --feedback--

Este adjetivo descreve algo que ocorre frequentemente ou é comum entre um grupo.

---

`challenge`

### --feedback--

Este substantivo refere-se a uma tarefa ou problema difícil que requer esforço para ser resolvido ou superado.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 5.02,
      "finishTimestamp": 8.18
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 4.16,
      "dialogue": {
        "text": "Don't worry. Debugging is a common challenge for programmers.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
