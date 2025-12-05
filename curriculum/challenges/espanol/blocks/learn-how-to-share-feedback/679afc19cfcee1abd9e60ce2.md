---
id: 679afc19cfcee1abd9e60ce2
title: Tarea 61
challengeType: 19
dashedName: task-61
lang: en-US
---

<!-- (Audio) Brian: If people don't feel valued, they might lose motivation, right? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué cree Brian que podría pasar si no escuchamos a quienes en el equipo no están de acuerdo?

## --answers--

Podrían perder la motivación.

---

Dejarán de tener desacuerdos.

### --feedback--

Ignorar las opiniones de las personas no detiene los desacuerdos; solo podría hacer que las personas estén menos comprometidas.

---

Ellos trabajarán más duro para demostrar su punto.

### --feedback--

Brian no sugiere que sentirse infravalorado haga que las personas trabajen más duro.

---

Ellos estarán automáticamente de acuerdo con todo.

### --feedback--

No escuchar a las personas no hace que estén de acuerdo con todo — puede hacer que se desconecten en cambio.

## --video-solution--

1

# --explanation--

`To feel valued` describe la sensación que tienes cuando crees que tus pensamientos, esfuerzos y contribuciones son apreciados. Por ejemplo:

El project manager siempre dedica algo de tiempo durante la reunión para escuchar lo que tenemos que decir. Esto hace que todos en el equipo se sientan valorados. - Esto significa que la actitud del project manager está trayendo buenos resultados al equipo.

Lo que Brian sugiere es que si se ignoran las opiniones de los miembros del equipo, pueden sentirse poco importantes. Si los miembros del equipo se sienten valorados, es más probable que se mantengan comprometidos y contribuyan con nuevas ideas.

Por otro lado, si las personas sienten que sus opiniones no importan, pueden desconectarse y perder la motivación para contribuir, lo que puede perjudicar el trabajo en equipo y la productividad en general.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.54,
      "finishTimestamp": 46.1
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 4.56,
      "dialogue": {
        "text": "If people don't feel valued, they might lose motivation, right?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.06
    }
  ]
}
```
