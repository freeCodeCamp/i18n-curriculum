---
id: 663a4d6ec33accaf2ec7be49
title: Tarefa 28
challengeType: 22
dashedName: task-28
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

Um `smile` é o que acontece quando você levanta os cantos da boca para mostrar felicidade.É algo que você faz com seu rosto quando está feliz ou quer ser gentil.

`Friendly` descreve alguém que é gentil, agradável e fácil de conversar.Uma pessoa amigável faz os outros se sentirem confortáveis e felizes.

`A friendly smile` é um sorriso que mostra que você está sendo gentil e acolhedor.Faz os outros se sentirem bem e mostra que você quer ser amigo.

Ouça o diálogo e preencha as lacunas.

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a tall guy with a BLANK BLANK.`

## --blanks--

`friendly`

### --feedback--

Este espaço em branco descreve alguém que é simpático, fácil de conversar e acolhedor.

---

`smile`

### --feedback--

A ação que você faz quando quer mostrar felicidade com a boca.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.12,
      "finishTimestamp": 17.74
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.62,
      "dialogue": {
        "text": "Sure. Tom is a tall guy with a friendly smile.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.12
    }
  ]
}
```
