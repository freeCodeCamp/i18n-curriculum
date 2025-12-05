---
id: 68bb001c22f3bcbd1fdf38fa
title: Tarea 1
challengeType: 19
dashedName: task-1
lang: es
---

<!-- (Audio) Elena: Hola -->

# --description--

Elena quiere decir "hola". Escucharás esta palabra todo el tiempo en español cuando las personas se encuentran.

# --instructions--

Escucha el audio y responde la pregunta a continuación.  
Solo hay **una** respuesta correcta. Si necesitas ayuda, haz clic en **explanation** al final de la lección.

# --questions--

## --text--

¿Qué palabra usa Elena para decir "hi"?

## --answers--

`Hola`

---

`Adiós`

### --feedback--

Esto significa lo contrario de lo que dice el hablante. Abre la sección de explicación si necesitas más ayuda.

---

`Chao`

### --feedback--

Esto significa lo contrario de lo que dice el hablante. Abre la sección de explicación si necesitas más ayuda.

---

`Buenos días`

### --feedback--

Esto significa "Good morning", pero no es lo que escuchas en el audio.

## --video-solution--

1

# --explanation--

La palabra `Hola` es un saludo. Se usa cuando conoces a alguien, similar a "Hello" o "Hi". Por ejemplo:

`¡Hola, buenos días!` – Hola, buenos días! 

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
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_1.1.mp3",
      "startTime": 1,
      "startTimestamp": 0.35,
      "finishTimestamp": 0.90
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
      "finishTime": 1.55,
      "dialogue": {
        "text": "¡Hola!",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.05
    }
  ]
}
```
