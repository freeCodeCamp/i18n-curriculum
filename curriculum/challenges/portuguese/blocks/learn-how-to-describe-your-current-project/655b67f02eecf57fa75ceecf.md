---
id: 655b67f02eecf57fa75ceecf
title: Tarefa 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: That's important work. I'm helping our team learn how to stay safe online. -->

# --description--

To `stay` is used to indicate remaining in a particular state or condition. É frequentemente usado em instruções ou conselhos para manter-se em uma determinada situação. Por exemplo:

- `Stay safe online.` - Continue sendo seguro enquanto usa a internet.

- `Stay calm during the test.` - Continue mantendo a calma.

- `Stay focused on your work.` - Continue prestando atenção ao seu trabalho.

# --fillInTheBlank--

## --sentence--

`That's important work. I'm BLANK our team learn how to BLANK safe online.`

## --blanks--

`helping`

### --feedback--

Este verbo indica que Sophie está ativamente fornecendo assistência ou suporte para sua equipe. Termina em `-ing`.

---

`stay`

### --feedback--

Esta palavra é usada para sugerir a manutenção de um determinado estado, neste caso, estar seguro enquanto estiver online.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 13.92,
      "finishTimestamp": 17.34
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
      "finishTime": 4.42,
      "dialogue": {
        "text": "That's important work. I'm helping our team learn how to stay safe online.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.92
    }
  ]
}
```
