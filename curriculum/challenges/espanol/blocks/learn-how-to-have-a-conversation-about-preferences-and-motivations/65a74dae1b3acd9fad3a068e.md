---
id: 65a74dae1b3acd9fad3a068e
title: Tarea 132
challengeType: 22
dashedName: task-132
lang: en-US
---

<!-- (Audio) Tom: For me, I like the idea of practicing my skills and getting recognition for my contributions. -->

# --description--

`To recognize` significa identificar a alguien o algo de antes, o reconocer la existencia o validez de algo. Por ejemplo, `I recognize your efforts in completing this project.`

`Recognition` es el formulario sustantivo de `recognize` y se refiere al acto de reconocer o dar crédito a alguien por sus esfuerzos o logros. Por ejemplo, `He received recognition for his innovative work.`

# --fillInTheBlank--

## --sentence--

`For me, I like the idea of BLANK my skills and getting BLANK for my contributions.`

## --blanks--

`practicing`

### --feedback--

Este verbo significa realizar una actividad o ejercicio repetidamente o con regularidad para mejorar o mantener la destreza de uno.

---

`recognition`

### --feedback--

Este sustantivo se refiere a la acción o proceso de reconocer los esfuerzos, logros o cualidades de alguien.

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
