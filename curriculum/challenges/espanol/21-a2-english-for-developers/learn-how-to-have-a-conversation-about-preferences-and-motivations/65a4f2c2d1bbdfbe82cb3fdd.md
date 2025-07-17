---
id: 65a4f2c2d1bbdfbe82cb3fdd
title: Task 94
challengeType: 22
dashedName: task-94
---

<!-- (Audio) Bob: Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets! -->

# --description--

Un `gadget` es una herramienta o dispositivo pequeño, a menudo ingenioso o novedoso, que realiza una función específica o hace algo más fácil.

En tecnología, los gadgets pueden incluir cosas como teléfonos inteligentes, relojes inteligentes o cualquier dispositivo electrónico genial e innovador.

Por ejemplo, `My new fitness tracker gadget helps me keep track of my steps and exercise.`

# --fillInTheBlank--

## --sentence--

`Hey, Sarah, do you know what really BLANK me excited about tech? It's all BLANK amazing BLANK!`

## --blanks--

`gets`

### --feedback--

Esta palabra significa que algo provoca un sentimiento o una reacción. Aquí, se utiliza para hablar sobre lo que emociona a Bob acerca de la tecnología. Está conjugado en la tercera persona del singular.

---

`those`

### --feedback--

Esta palabra se utiliza para señalar cosas específicas de las que se está hablando, en este caso, los gadgets. Plural de `that`.

---

`gadgets`

### --feedback--

Esta palabra se refiere a dispositivos electrónicos o herramientas pequeñas que son útiles o interesantes. A menudo se usa para hablar sobre elementos tecnológicos geniales. Está en plural.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 6.08
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 7.08,
      "dialogue": {
        "text": "Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.58
    }
  ]
}
```
