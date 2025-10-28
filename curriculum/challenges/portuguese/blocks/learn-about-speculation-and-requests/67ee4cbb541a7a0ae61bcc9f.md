---
id: 67ee4cbb541a7a0ae61bcc9f
title: Tarefa 4
challengeType: 19
dashedName: task-4
---

<!-- (audio) Sophie: It's not a big deal, but we should fix it before it causes problems. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Esse pequeno erro é sério?

## --answers--

Não, e eles não precisam fazer nada a respeito.

### --feedback--

Sophie não diz que é um problema grave, mas eles deveriam consertar isso.

---

Sim, isso vai quebrar todo o sistema.

### --feedback--

Sophie não diz que é um problema grave, apenas algo que eles deveriam corrigir.

---

Sim, Sophie está muito preocupada com isso.

### --feedback--

Sophie não está muito preocupada, mas ela ainda acha que eles deveriam consertar isso.

---

Não, mas ainda assim deve ser corrigido.

## --video-solution--

4

# --explanation--

`It's not a big deal` significa que o problema não é sério.Por exemplo:

- Pessoa 1: `I can't join the meeting today.`

- Pessoa 2: `It's not a big deal. I'll take notes for you.` - Perder a reunião está tudo bem e essa pessoa pode ajudar.

Sophie também diz que `we should fix it before it causes problems`, ou seja, é melhor consertar agora antes que se torne sério.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.72,
      "finishTimestamp": 8.5
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
      "finishTime": 3.78,
      "dialogue": {
        "text": "It's not a big deal, but we should fix it before it causes problems.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.28
    }
  ]
}
```
