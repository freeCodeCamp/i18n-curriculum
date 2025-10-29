---
id: 680e2de44baaad7305adc8ee
title: Tarefa 46
challengeType: 22
dashedName: task-46
---

<!-- (Audio) Josh: I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you? -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`I'll draft a new quote with these specifics and send it over to you by tomorrow. BLANK for you?`

## --blanks--

`Does that work`

### --feedback--

Essas três palavras juntas são usadas para perguntar educadamente se um plano ou sugestão é aceitável.A primeira letra da primeira palavra é maiúscula.

# --explanation--

`Does that work` é uma forma educada de verificar se uma sugestão ou arranjo está bom para alguém.Por exemplo:

Podemos nos encontrar às 15h.Isso funciona para você?` – Isso pergunta se o horário é bom ou conveniente para a outra pessoa.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Josh",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 70.14,
      "finishTimestamp": 75.94
    }
  },
  "commands": [
    {
      "character": "Josh",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Josh",
      "startTime": 1,
      "finishTime": 6.8,
      "dialogue": {
        "text": "I'll draft a new quote with these specifics and send it over to you by tomorrow. Does that work for you?",
        "align": "center"
      }
    },
    {
      "character": "Josh",
      "opacity": 0,
      "startTime": 7.3
    }
  ]
}
```
