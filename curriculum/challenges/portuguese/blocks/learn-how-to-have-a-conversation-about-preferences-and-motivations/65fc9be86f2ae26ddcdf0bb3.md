---
id: 65fc9be86f2ae26ddcdf0bb3
title: Tarefa 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) Maria: "But do you know what else is great? Seeing the team's enthusiasm after solving these issues. When you see the team inspired, it can boost your motivation." -->

# --description--

Ouça Maria e responda à pergunta.

# --questions--

## --text--

O que pode aumentar a motivação deles segundo Maria?

## --answers--

Tendo uma grande equipe

### --feedback--

Pense no que especificamente torna a equipe mais motivada, não apenas no tamanho da equipe.

---

Fazendo uma longa pausa

### --feedback--

Considere se quebras são mencionadas como uma forma de aumentar a motivação.

---

Vendo a equipe inspirada

---

Resolvendo problemas rapidamente

### --feedback--

Reflita se a velocidade de resolver problemas é o que Maria destaca como motivador.

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 60.96,
      "finishTimestamp": 68.80
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
      "finishTime": 5.7,
      "dialogue": {
        "text": "But do you know what else is great? Seeing the team's enthusiasm after solving these issues.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 6.16,
      "finishTime": 8.84,
      "dialogue": {
        "text": "When you see the team inspired, it can boost your motivation.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 9.34
    }
  ]
}
```
