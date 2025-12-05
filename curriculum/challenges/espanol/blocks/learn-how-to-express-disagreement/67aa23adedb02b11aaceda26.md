---
id: 67aa23adedb02b11aaceda26
title: Tarea 8
challengeType: 19
dashedName: task-8
lang: en-US
---

<!-- (Audio) Anna: While furniture is important, many people mentioned that their computers need upgrades. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué es más importante, según Anna?

## --answers--

Actualizando computadoras.

---

Comprar muebles nuevos para la oficina.

### --feedback--

Anna reconoce que los muebles son importantes pero dice que muchas personas mencionaron necesitar algo más.

---

Obteniendo un estipendio más grande para trabajo remoto.

### --feedback--

Anna no habla sobre aumentar la beca, solo sobre cómo la gente quiere usarla.

---

Cambiando las preguntas de la encuesta.

### --feedback--

Anna no menciona nada sobre las preguntas de la encuesta.

## --video-solution--

1

# --explanation--

Una `computer upgrade` significa mejorar una computadora agregando o reemplazando partes como más memoria (RAM), un procesador más rápido o una mejor pantalla. Por ejemplo:

- `I need a computer upgrade to run the latest software.` - La computadora actual del hablante no es lo suficientemente potente, por lo que necesita una mejor.

- `After the computer upgrade, everything runs much faster.` - El rendimiento del sistema mejoró después de actualizar o reemplazar componentes.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 12.06,
      "finishTimestamp": 15.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "While furniture is important, many people mentioned that their computers need upgrades.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
