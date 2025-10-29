---
id: 679aa5040bedaccedf33d6d8
title: Tarefa 45
challengeType: 19
dashedName: task-45
---

<!-- (Audio) Brian: If we all agreed on everything, we might miss important details, don't you think? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Por que Brian acha que não é bom quando todos pensam da mesma forma?

## --answers--

Porque eles podem deixar passar detalhes importantes.

---

Porque isso tornaria a tomada de decisão mais rápida.

### --feedback--

Brian não está dizendo que o acordo é benéfico.

---

Porque desacordos sempre causam problemas.

### --feedback--

Brian está realmente dizendo que algum desacordo é útil, não que ele cause problemas.

---

Porque ninguém compartilharia suas opiniões.

### --feedback--

Brian não está falando sobre pessoas se recusando a compartilhar suas opiniões.

## --video-solution--

1

# --explanation--

A estrutura `if + verb in the Simple Past` seguida de `might` na cláusula de consequência é usada para descrever uma situação hipotética com um resultado possível.Por exemplo:

`If you studied more, you might pass the exam.` - Isso significa que há uma possibilidade de passar se a pessoa estudar mais.

Neste diálogo, `If we all agreed on everything, we might miss important details` expressa uma possível consequência negativa do acordo completo.

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
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.24
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
      "finishTime": 3.98,
      "dialogue": {
        "text": "If we all agreed on everything, we might miss important details,",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 4.26,
      "finishTime": 4.84,
      "dialogue": {
        "text": "don't you think?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.34
    }
  ]
}
```
