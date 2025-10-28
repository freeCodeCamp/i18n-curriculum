---
id: 68555dfadef342c2db9b5abf
title: Tarefa 83
challengeType: 22
dashedName: task-83
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

Esta frase de duas palavras significa introduzido ou causado algo a aparecer ou se tornar um problema.A primeira palavra é a forma no passado de `bring`.

---

`unexpected`

### --feedback--

Esta palavra significa que algo aconteceu que não foi planejado ou previsto.Termina com `-ed`.

# --explanation--

`Brought up` significa causar algo a aparecer, especialmente um problema ou questão.Aqui, `brought` é a forma no passado de `bring`.Por exemplo:

`The new feature brought up several bugs.` – Isso significa que a funcionalidade fez com que os bugs fossem notados.

`Unexpected` descreve algo que acontece sem aviso ou planejamento.Por exemplo:

`We had an unexpected delay due to server issues.` – Isso significa que o atraso não foi antecipado.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.32,
      "finishTimestamp": 35.5
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "What about testing? The last update brought up some unexpected challenges.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.68
    }
  ]
}
```
