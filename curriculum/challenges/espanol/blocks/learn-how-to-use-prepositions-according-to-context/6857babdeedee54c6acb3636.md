---
id: 6857babdeedee54c6acb3636
title: Tarea 134
challengeType: 19
dashedName: task-134
lang: en-US
---

<!-- (Audio) Sarah: If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Dónde se almacenan ahora los monitores?

## --answers--

Al final del estacionamiento.

### --feedback--

Sarah no menciona el estacionamiento.

---

Dentro de la sala de TI.

### --feedback--

Fueron trasladados fuera de la sala de TI anteriormente.

---

Al lado del escritorio de seguridad.

### --feedback--

No hay mención de un escritorio de seguridad.

---

Justo cerca de la máquina de café.

## --video-solution--

4

# --explanation--

Sarah da instrucciones claras que terminan con un punto de referencia: `the coffee machine`.

Ella explica que después de bajar por el pasillo y girar a la izquierda, los monitores se encuentran posicionados frente a él, haciendo que la cafetera sea el punto de referencia visible más cercano para encontrarlos.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.68,
      "finishTimestamp": 18.22
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
      "finishTime": 6.54,
      "dialogue": {
        "text": "If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
