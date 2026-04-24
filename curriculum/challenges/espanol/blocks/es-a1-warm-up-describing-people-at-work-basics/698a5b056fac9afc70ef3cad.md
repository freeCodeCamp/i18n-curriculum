---
id: 698a5b056fac9afc70ef3cad
title: tarea 10
challengeType: 22
dashedName: task-10
lang: es
---

<!-- (Audio) Camila: Brasil, Colombia, Panamá -->

# --description--

Repasemos algunos de los países que has aprendido hasta ahora.

| País | Nacionalidad (femenina) | Nacionalidad (masculina) |
| :--- | :--- | :--- |
| `Brasil` | `brasileña` | `brasileño` |
| `Colombia` | `colombiana` | `colombiano` |
| `México` | `mexicana` | `mexicano` |
| `Panamá` | `panameña` | `panameño` |
| `República Dominicana` | `dominicana` | `dominicano` |

En español, los nombres de los países son nombres propios y siempre comienzan con letra mayúscula.

Observa que las nacionalidades `brasileño`/`brasileña` y `panameño`/`panameña` usan la letra única `eñe` (`ñ`).

Camila está practicando con algunos de estos países. ¿Puedes identificarlos?

# --instructions--

Escucha el audio y completa la secuencia a continuación.

# --fillInTheBlank--

## --sentence--

`BLANK - Colombia - BLANK`

## --blanks--

`Brasil`

### --feedback--

Este país es el más grande de Sudamérica y comienza con letra mayúscula.

---

`Panamá`

### --feedback--

Este país es conocido por su famoso canal. Recuerda incluir la tilde en la última letra `a` y escribir la primera letra en mayúscula.

# --explanation--

La secuencia es `Brasil` - `Colombia` - `Panamá`.

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 20.9,
      "finishTimestamp": 25.4
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Brasil",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 2.88,
      "finishTime": 3.79,
      "dialogue": {
        "text": "Colombia",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 4.79,
      "finishTime": 5.5,
      "dialogue": {
        "text": "Panamá",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 6
    }
  ]
}
```
