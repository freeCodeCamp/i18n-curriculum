---
id: 68249d79d4ddca45eff7fafd
title: Tarefa 144
challengeType: 19
dashedName: task-144
lang: en-US
---

<!-- (Audio) Jessica: Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow. This feedback should help us know what to do next. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Jessica planeja fazer com a informação?

## --answers--

Ignore isso por enquanto e aguarde mais feedback.

### --feedback--

Jessica diz que ela vai organizar a informação e compartilhá-la, não ignorá-la.

---

Organize em um relatório e discuta com outras pessoas.

---

Peça aos usuários para testarem novamente antes de fazer alterações.

### --feedback--

Ela não menciona nada sobre retesting ou user feedback.

---

Envie diretamente para o cliente sem revisão.

### --feedback--

Jessica planeja conversar com sua equipe primeiro e não enviar diretamente para um cliente.

## --video-solution--

2

# --explanation--

Jessica diz que ela vai `put all this information into a report` e `talk about it with the team tomorrow`. Isso mostra que ela planeja organizar os detalhes e ter uma discussão com sua equipe.

Ela também diz que o feedback `should help`, significando que ele vai guiar os próximos passos deles.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-3.mp3",
      "startTime": 1,
      "startTimestamp": 86.16,
      "finishTimestamp": 93.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 6.0,
      "dialogue": {
        "text": "Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 6.26,
      "finishTime": 7.86,
      "dialogue": {
        "text": "This feedback should help us know what to do next.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.86
    }
  ]
}
```
