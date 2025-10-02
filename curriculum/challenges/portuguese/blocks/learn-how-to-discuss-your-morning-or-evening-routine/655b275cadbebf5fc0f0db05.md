---
id: 655b275cadbebf5fc0f0db05
title: Tarefa 82
challengeType: 22
dashedName: task-82
---

<!-- (Audio) Maria: On Tuesdays, I learn Japanese. I take online lessons at 7. -->

# --description--

Para `take` pode significar coisas diferentes dependendo da situação. No contexto de aprendizado, `take` significa assistir ou participar de uma aula ou curso. Por exemplo:

- `I take online lessons at 7.` - Aqui, `take` significa assistir às aulas.

- Ela está fazendo um curso de programação neste semestre. - Aqui, `taking` significa que ela está matriculada e frequentando o curso.

Então, quando você diz `take lessons` ou `take a course`, você está falando sobre participar ou assistir a eles, não sobre pegar algo fisicamente.

# --fillInTheBlank--

## --sentence--

`On Tuesdays, I learn Japanese. I BLANK BLANK lessons at 7.`

## --blanks--

`take`

### --feedback--

Este verbo descreve a ação de participar das aulas.

---

`online`

### --feedback--

Esta palavra se refere a um ambiente virtual.

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 17.14,
      "finishTimestamp": 20.86
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
      "finishTime": 4.72,
      "dialogue": {
        "text": "On Tuesdays, I learn Japanese. I take online lessons at 7.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.22
    }
  ]
}
```
