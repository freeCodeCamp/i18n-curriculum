---
id: 660684bfc24bf48cfaaf9cfa
title: Tarea 8
challengeType: 22
dashedName: task-8
---

<!-- (Audio) Sophie: Thanks, I'll give it a shot. -->

# --description--

`Give it a shot` significa intentar hacer algo. Es como decir `Try it`.

Por ejemplo, si tu amigo está dudando sobre unirse a una clase de codificación porque piensa que podría ser demasiado difícil, podrías decir `¿Por qué no lo intentas? Podrías disfrutarlo más de lo que piensas.` para animarlos a intentar unirse a esta clase.

# --fillInTheBlank--

## --sentence--

`Thanks, BLANK give it a BLANK.`

## --blanks--

`I'll`

### --feedback--

Es la abreviatura de `I will`. Sophie está expresando su decisión de intentar lo que Brian sugirió.

---

`shot`

### --feedback--

En este contexto, significa un intento o probar hacer algo. Sophie está diciendo que intentará lo que Brian ha recomendado.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 24.86,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.42,
      "dialogue": {
        "text": "Thanks, I'll give it a shot.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 2.92
    }
  ]
}
```
