---
id: 6620102deeab45aeeffa84ac
title: Tarea 5
challengeType: 22
dashedName: task-5
lang: en-US
---

<!-- (Audio) Tom: She's a colleague with long wavy brown hair and bright brown eyes. -->

# --description--

Cuando describes el color de los ojos de una persona, normalmente los identificas primero por su color. Los colores de ojos comunes son `black`, `brown`, `blue` y `green`. Dependiendo del color, puede tender a `white` o a `black` (el color en sí mismo es más fuerte o más débil). En este caso, puedes agregar las palabras `light` (tendiendo a `white`) y `dark` (tendiendo a `black`) antes del color para expresarlo. Otra característica que normalmente usas para identificar los ojos de otra persona es la figura - `round` cuando es más como un círculo y `narrow` cuando es más similar a una línea. Finalmente, puedes referirte a ellos en términos de su tamaño, `large` (cuando son grandes) o `small` (cuando no lo son). Tom también expresa una opinión, diciendo que los ojos de Lisa están llenos de energía y vitalidad. En este caso, dices que los ojos de alguien son `bright`.

Como haces con el `hair`, los adjetivos para identificar los ojos de una persona también siguen un orden en inglés. Primero, expresas esta opinión, luego pasas al tamaño, luego a la figura y finalmente al color (precedido o no por `light` o `dark`).

Ejemplo: `Tom has beautiful, small, narrow, light green eyes.`

Ahora escucha y completa los espacios en blanco con la descripción de Tom sobre los ojos de Lisa.

# --fillInTheBlank--

## --sentence--

`She's a colleague with long wavy brown hair and BLANK BLANK eyes.`

## --blanks--

`bright`

### --feedback--

Tom expresa una opinión primero. Él dice que los ojos de Lisa están llenos de energía.

---

`brown`

### --feedback--

Tom finalmente habla sobre el color de los ojos de Lisa. Es una sombra cercana a `black`, y ni `blue` ni `green`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 6.52,
      "finishTimestamp": 10.6
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.08,
      "dialogue": {
        "text": "She's a colleague with long wavy brown hair and bright brown eyes.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.58
    }
  ]
}
```
