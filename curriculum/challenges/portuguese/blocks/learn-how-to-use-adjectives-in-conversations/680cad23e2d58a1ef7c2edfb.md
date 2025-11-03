---
id: 680cad23e2d58a1ef7c2edfb
title: Tarefa 19
challengeType: 22
dashedName: task-19
lang: en-US
---

<!-- (Audio) Sarah: Those are the ones. But, we found something even better in your catalog, these high-capacity ones here. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Those are the ones. But, we found something even better in your catalog, BLANK BLANK ones here.`

## --blanks--

`these`

### --feedback--

Esta palavra é usada para apontar para itens específicos que estão próximos ao falante.

---

`high-capacity`

### --feedback--

Esta palavra composta significa algo que pode lidar com uma grande quantidade de trabalho, armazenamento ou energia. Lembre-se de usar `-`.

# --explanation--

`High-capacity` descreve algo projetado para gerenciar ou conter uma grande quantidade em comparação com versões padrão. Por exemplo:

`We installed high-capacity batteries in the new devices.` – Isso significa que as baterias podem armazenar mais energia e durar mais, o que é útil em equipamentos tecnológicos.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
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
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 27.3,
      "finishTimestamp": 32.68
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
      "finishTime": 6.38,
      "dialogue": {
        "text": "Those are the ones, but we found something even better in your catalog, these high capacity ones here.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.88
    }
  ]
}
```
