---
id: 67caec5ecebab7be7456df7f
title: Tarefa 130
challengeType: 19
dashedName: task-130
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.  

# --questions--

## --text--

Qual outro problema a equipe levantou?

## --answers--

Que eles recebam atualizações cedo demais.

### --feedback--

Maria menciona o exato oposto.

---

Que eles não querem se comunicar tanto.

### --feedback--

Maria não menciona a disposição da equipe para se comunicar.  

---

Que eles frequentemente não ouvem sobre as mudanças a tempo.

---

Que eles acham que muitas pessoas estão envolvidas na comunicação.

### --feedback--

Maria não menciona o número de pessoas envolvidas.

## --video-solution--

3  

# --explanation--

Quando você diz que algo `isn't great`, você está suavizando uma mensagem negativa (em vez de dizer `it is bad`, por exemplo). Isso faz a crítica soar mais educada ou indireta. Dê uma olhada nas seguintes sentenças:

- `The design is bad.` - Esta é uma afirmação negativa forte, que muitas vezes soa indelicada.

- O design não está ótimo. Talvez possamos melhorá-lo.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
