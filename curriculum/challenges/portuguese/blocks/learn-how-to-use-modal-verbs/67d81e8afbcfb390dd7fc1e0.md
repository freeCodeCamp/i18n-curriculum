---
id: 67d81e8afbcfb390dd7fc1e0
title: Tarefa 133
challengeType: 19
dashedName: task-133
---

<!-- (audio) Lisa: Have you checked which files were compromised? -->

<!-- SPEAKING -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Jake ainda não verificou isso e diz que a equipe deve se concentrar em outra coisa.O que ele diria?  

## --answers--

`Not yet, but we should focus on the critical systems first.`

---

`I already checked, and everything looks fine.`

### --feedback--

Jake ainda não verificou, então ele não seria capaz de confirmar isso.

## --video-solution--

1

# --explanation--

Garantir a segurança de sistemas críticos geralmente é a primeira prioridade antes de avaliar arquivos individuais.

`Not yet.` significa que Jake ainda não verificou quais arquivos foram comprometidos.

`We should focus on the critical systems first.` significa que, em vez de olhar para arquivos, a equipe deve priorizar a proteção das partes essenciais do sistema.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 37.82,
      "finishTimestamp": 39.88
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "Have you checked which files were compromised?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
