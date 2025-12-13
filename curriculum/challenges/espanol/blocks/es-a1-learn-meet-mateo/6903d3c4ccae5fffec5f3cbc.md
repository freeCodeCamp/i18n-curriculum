---
id: 6903d3c4ccae5fffec5f3cbc
title: Tarea 4
challengeType: 19
dashedName: task-4
lang: es
---

<!-- (Audio) Mateo: Soy puertorriqueño. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Cuál es la nacionalidad de Mateo?

## --answers--

`Chileno`

### --feedback--

Esta opción se refiere a alguien de Chile.

---

`Peruano`

### --feedback--

Esta palabra describe a una persona de Perú.

---

`Puertorriqueño`

---

`Colombiana`

### --feedback--

Esto se refiere a una mujer de Colombia, y la terminación `-a` indica la forma femenina, que no coincide con Mateo.

## --video-solution--

3

# --explanation--

`Soy` ("I am") proviene del verbo `ser` y se usa para expresar identidad, nacionalidad o profesión. Por ejemplo:

- `Soy chilena.` – Soy chilena.

- `Soy chileno.` – Soy chileno.

- `Soy puertorriqueña` - Soy puertorriqueña. (femenino)

- `Soy puertorriqueño` - Soy puertorriqueño. (masculino)

- `Soy canadiense.` – Soy canadiense.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 5.81,
      "finishTimestamp": 7.13
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Soy puertorriqueño.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 2.82
    }
  ]
}
```
