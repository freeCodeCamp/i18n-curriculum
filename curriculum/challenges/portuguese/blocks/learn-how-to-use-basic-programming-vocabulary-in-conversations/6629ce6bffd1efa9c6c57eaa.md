---
id: 6629ce6bffd1efa9c6c57eaa
title: Tarefa 1
challengeType: 22
dashedName: task-1
---

<!-- (Audio) Brian: Hey, Sophie. How's it going? -->

# --description--

A frase `how's it going?` é uma forma comum de perguntar a alguém como está ou o que está acontecendo na sua vida.É frequentemente usado como uma saudação amigável.

Por exemplo, quando você vê um amigo antigo, pode dizer `Hey, how's it going?`Não te vejo há um tempo!` Esta é uma forma casual de perguntar sobre a vida deles.Se você quiser perguntar a eles sobre algo específico, como o novo emprego, você pode dizer `How's it going with your new job?`

# --fillInTheBlank--

## --sentence--

`Hey, Sophie. BLANK it BLANK?`

## --blanks--

`How's`

### --feedback--

Esta contração é comumente usada em cumprimentos informais.Coloque a primeira palavra em maiúscula.

---

`going`

### --feedback--

Esta palavra completa a saudação informal comum que pergunta sobre o estado geral de alguém.

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
      "filename": "5.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.08
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
      "finishTime": 3.08,
      "dialogue": {
        "text": "Hey, Sophie. How's it going?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
