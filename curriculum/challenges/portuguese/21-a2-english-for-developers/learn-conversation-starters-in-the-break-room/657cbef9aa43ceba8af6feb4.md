---
id: 657cbef9aa43ceba8af6feb4
title: Task 51
challengeType: 22
dashedName: task-51
---

<!-- (audio) Sophie: "I think she has a passion for technology and enjoys leading our team." -->

# --description--

Quando você gosta muito de fazer algo, você pode dizer que `enjoy` isso. É uma maneira simples de expressar que algo faz você feliz.

Por exemplo, você pode dizer, `I enjoy playing video games` se jogar video games é divertido para você. No diálogo, Sophie nos conta algo que Maria aprecia em seu trabalho.

# --fillInTheBlank--

## --sentence--

`I think she has a passion for technology and she BLANK leading our team.`

## --blanks--

`enjoys`

### --feedback--

Que palavra você usaria para dizer que Maria encontra felicidade em liderar a equipe? É a mesma palavra usada quando você se diverte ou gosta de fazer uma atividade.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 8.50,
      "finishTimestamp": 11.88
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
      "finishTime": 4.38,
      "dialogue": {
        "text": "I think she has a passion for technology and she enjoys leading our team.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
