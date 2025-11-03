---
id: 65f6f9e9cfbda7f9c04e8af7
title: Tarefa 41
challengeType: 19
dashedName: task-41
lang: en-US
---

<!-- (Audio) Brian: Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening. -->

# --description--

A frase `by the end of it` é comumente usada em inglês para se referir à conclusão ou parte final de um processo ou período de tempo. Isso implica que, ao concluir uma determinada atividade, um resultado ou entendimento específico será alcançado.

# --questions--

## --text--

No diálogo, o que Brian quer dizer com `by the end of it`?

## --answers--

Eles vão parar a investigação.

### --feedback--

Esta frase é sobre chegar a uma conclusão, não necessariamente parar a atividade.

---

Eles iniciarão outra atividade.

### --feedback--

Brian está se referindo ao fim da investigação atual, não ao início de algo novo.

---

Eles farão uma pausa.

### --feedback--

A frase foca em alcançar um entendimento no final do processo, não em fazer uma pausa.

---

Eles terão uma compreensão mais clara da situação após a investigação.

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "6.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 20.74,
      "finishTimestamp": 26.28
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
      "finishTime": 6.54,
      "dialogue": {
        "text": "Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
