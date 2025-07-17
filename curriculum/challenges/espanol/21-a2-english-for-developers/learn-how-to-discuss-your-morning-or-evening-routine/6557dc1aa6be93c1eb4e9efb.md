---
id: 6557dc1aa6be93c1eb4e9efb
title: Tarea 29
challengeType: 19
dashedName: task-29
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

La palabra `if` se usa a menudo en sentencias condicionales para hablar de una posible situación y sus consecuencias. Por ejemplo:

* `If it rains, I will bring an umbrella.` (La acción de llevar un paraguas depende de la posibilidad de lluvia.)
* `If you need help, just ask.` (La oferta de ayuda es condicional a que la otra persona la necesite.)

# --questions--

## --text--

¿Qué insinúa Sarah al usar `if` en su sentencia sobre revisar correos electrónicos y mensajes?

## --answers--

Ella siempre encuentra actualizaciones urgentes de su equipo

### --feedback--

`If` no sugiere certeza de encontrar actualizaciones urgentes.

---

A veces hay actualizaciones urgentes, a veces no

---

Ella nunca revisa sus correos electrónicos y mensajes

### --feedback--

Sarah de hecho afirma que sí revisa sus correos electrónicos y mensajes.

---

Revisar correos electrónicos no es parte de su rutina

### --feedback--

Sarah menciona que revisar correos electrónicos y mensajes es parte de su rutina.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 55.08,
      "finishTimestamp": 60.78
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.70,
      "dialogue": {
        "text": "Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.20
    }
  ]
}
```
