---
id: 657e1fd7b5ffaebc0ff4bd9f
title: Tarefa 26
challengeType: 19
dashedName: task-26
lang: en-US
---

<!-- (audio) Tom: Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me. -->

# --description--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Por que Tom está agradecendo a Sophie?

## --answers--

Para fornecer a ele um aplicativo de gerenciamento de tempo.

### --feedback--

Tom está agradecendo Sophie pelas dicas, não por lhe dar um app.

---

Porque ele acha as dicas da Sophie úteis.

---

Para convidá-lo para o almoço.

### --feedback--

Ele está agradecendo a ela pelo conselho, não pelo convite para o almoço.

---

Para ajudá-lo com um projeto.

### --feedback--

A gratidão de Tom está relacionada às dicas sobre organização, não à ajuda específica do projeto.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 58.29,
      "finishTimestamp": 63.00
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
      "finishTime": 5.71,
      "dialogue": {
        "text": "Thanks for sharing, Sophie. I want to get more organized and your tips are a great help to me.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 6.21
    }
  ]
}
```
