---
id: 65a74dae1b3acd9fad3a068e
title: Tarefa 132
challengeType: 22
dashedName: task-132
lang: en-US
---

<!-- (Audio) Tom: For me, I like the idea of practicing my skills and getting recognition for my contributions. -->

# --description--

`To recognize` significa identificar alguém ou algo de antes, ou reconhecer a existência ou validade de algo. Por exemplo, `I recognize your efforts in completing this project.`

`Recognition` é a forma substantiva de `recognize` e refere-se ao ato de reconhecer ou dar crédito a alguém por seus esforços ou conquistas. Por exemplo, `He received recognition for his innovative work.`

# --fillInTheBlank--

## --sentence--

`For me, I like the idea of BLANK my skills and getting BLANK for my contributions.`

## --blanks--

`practicing`

### --feedback--

Este verbo significa realizar uma atividade ou exercício repetidamente ou regularmente para melhorar ou manter a proficiência de alguém.

---

`recognition`

### --feedback--

Este substantivo refere-se à ação ou processo de reconhecer os esforços, conquistas ou qualidades de alguém.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-5.mp3",
      "startTime": 1,
      "startTimestamp": 41.5,
      "finishTimestamp": 47.12
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
      "finishTime": 6.62,
      "dialogue": {
        "text": "For me, I like the idea of practicing my skills and getting recognition for my contributions.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 7.12
    }
  ]
}
```
