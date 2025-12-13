---
id: 68c58aa8c9d2a2dfea45deb7
title: Tarea 7
challengeType: 19
dashedName: task-7
lang: es
---

<!-- (Audio) Elena: Hasta luego -->

# --description--

Elena se está despidiendo, pero espera verte de nuevo.

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué frase usa Elena para decir "see you later"?

## --answers--

`Hasta luego.`

---

`Adiós`

### --feedback--

Esto es una despedida, pero es más definitiva. El hablante usa una frase diferente.

---

`Chao`

### --feedback--

Esta también es una forma informal de decir adiós, pero no es la que aparece en el audio.

---

`¡Hola!`

### --feedback--

Esto significa "Hi", un saludo general, pero no es lo que dice Elena.

## --video-solution--

1

# --explanation--

`Hasta luego` es una forma común de decir adiós en español. Se traduce como "See you later".

Se usa cuando esperas ver a la persona de nuevo, pero no necesariamente pronto. Por ejemplo:  

`Hasta luego, Marta.` – Hasta luego, Marta.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Elena",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_greetings_in_the_morning.mp3",
      "startTime": 1,
      "startTimestamp": 5.68,
      "finishTimestamp": 6.64
    }
  },
  "commands": [
    {
      "character": "Elena",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Elena",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Hasta luego.",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.46
    }
  ]
}
```
