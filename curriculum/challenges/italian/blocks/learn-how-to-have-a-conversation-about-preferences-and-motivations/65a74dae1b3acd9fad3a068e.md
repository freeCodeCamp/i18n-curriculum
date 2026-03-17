---
id: 65a74dae1b3acd9fad3a068e
title: Attività 132
challengeType: 22
dashedName: task-132
lang: en-US
---

<!-- (Audio) Tom: For me, I like the idea of practicing my skills and getting recognition for my contributions. -->

# --description--

`To recognize` significa identificare qualcuno o qualcosa già noto, oppure riconoscere l'esistenza o la validità di qualcosa. Per esempio, `I recognize your efforts in completing this project.`

`Recognition` è la forma sostantivata di `recognize` e indica l'atto di riconoscere o attribuire merito a qualcuno per i suoi sforzi o risultati. Per esempio, `He received recognition for his innovative work.`

# --fillInTheBlank--

## --sentence--

`For me, I like the idea of BLANK my skills and getting BLANK for my contributions.`

## --blanks--

`practicing`

### --feedback--

Questo verbo indica svolgere un'attività o un esercizio ripetutamente o regolarmente per migliorare o mantenere la propria competenza.

---

`recognition`

### --feedback--

Questo sostantivo si riferisce all'azione o al processo di riconoscere gli sforzi, i risultati o le qualità di qualcuno.

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
