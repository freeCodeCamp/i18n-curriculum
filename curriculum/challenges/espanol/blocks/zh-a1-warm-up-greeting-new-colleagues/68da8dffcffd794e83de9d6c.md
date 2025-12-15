---
id: 68da8dffcffd794e83de9d6c
title: Tarea 10
challengeType: 19
dashedName: task-10
lang: zh-CN
---

<!-- (Audio) Chen Na: 你们好 (nǐ men hǎo) -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué está diciendo Chen Na para saludar a un grupo de personas?

## --answers--

`你好 (nǐ hǎo)`

### --feedback--

Este es un saludo para una persona, pero Chen Na está saludando a más de una.

---

`您们好 (nín men hǎo)`

### --feedback--

Este formulario no es estándar en chino.

---

`你们好 (nǐ men hǎo)`

---

`大家好 (dà jiā hǎo)`

### --feedback--

Esto también significa "Hello, everyone.", pero Chen Na usa una frase diferente.

## --video-solution--

3

# --explanation--

La pregunta es qué está diciendo Chen Na para saludar **a un grupo de personas**.

`你好 (nǐ hǎo)` es un saludo para una persona, mientras que `您好 (nín hǎo)` es un saludo cortés para una persona. `您们好 (nín men hǎo)` no es estándar en chino; `您 (nín)` es singular cortés, no suele pluralizarse.

La frase correcta para saludar a un grupo es `你们好 (nǐ men hǎo)`, que es una forma común de decir "hola a todos". `大家好 (dà jiā hǎo)` es otra forma de saludar a un grupo, que aprenderás a medida que avances.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Chen Na",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_warmup_vocabulary.mp3",
      "startTime": 1,
      "startTimestamp": 8.98,
      "finishTimestamp": 9.9
    }
  },
  "commands": [
    {
      "character": "Chen Na",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Chen Na",
      "startTime": 1,
      "finishTime": 1.92,
      "dialogue": {
        "text": "你们好 (nǐ men hǎo)",
        "align": "center"
      }
    },
    {
      "character": "Chen Na",
      "opacity": 0,
      "startTime": 2.42
    }
  ]
}
```
