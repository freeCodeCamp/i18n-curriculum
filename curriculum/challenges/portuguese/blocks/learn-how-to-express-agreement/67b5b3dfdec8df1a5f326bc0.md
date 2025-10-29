---
id: 67b5b3dfdec8df1a5f326bc0
title: Tarefa 110
challengeType: 22
dashedName: task-110
---

<!-- (audio) Maria: We've chosen a subtle color palette, but maybe adding some brighter tones would help. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`We've chosen a BLANK color BLANK, but maybe adding some brighter tones would help.`

## --blanks--

`subtle`

### --feedback--

Isso significa algo que não é forte ou óbvio.É algo suave ou delicado que você pode não perceber imediatamente.

---

`palette`

### --feedback--

Isto se refere ao intervalo de cores usadas em um design ou obra de arte.Neste caso, uma `color palette` refere-se à seleção de cores escolhidas para o design do app ou projeto.

# --explanation--

`Subtle` refere-se a algo que é delicado ou não óbvio.Por exemplo:

`The artist used subtle shades of blue in the painting.` - Isso significa que o artista usou tons claros ou suaves de azul que não são muito fortes ou chamativos.

`Palette` refere-se à gama de cores ou materiais que um artista ou designer utiliza.Por exemplo:

`The designer chose a warm palette for the website, using reds, oranges, and yellows.` - Isso significa que o designer selecionou um conjunto de cores quentes, como vermelho, laranja e amarelo, para o design do site.

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
      }
    ],
    "audio": {
      "filename": "B1_10-3.mp3",
      "startTime": 1,
      "startTimestamp": 36.2,
      "finishTimestamp": 39.94
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
      "finishTime": 4.74,
      "dialogue": {
        "text": "We've chosen a subtle color palette, but maybe adding some brighter tones would help.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
