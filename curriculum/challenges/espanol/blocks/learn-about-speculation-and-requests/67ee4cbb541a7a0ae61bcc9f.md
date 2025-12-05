---
id: 67ee4cbb541a7a0ae61bcc9f
title: Tarea 4
challengeType: 19
dashedName: task-4
lang: en-US
---

<!-- (audio) Sophie: It's not a big deal, but we should fix it before it causes problems. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Es este pequeño error grave?

## --answers--

No, y no necesitan hacer nada al respecto.

### --feedback--

Sophie no dice que sea un problema grave, pero deberían arreglarlo.

---

Sí, romperá todo el sistema.

### --feedback--

Sophie no dice que sea un problema mayor, solo algo que deberían arreglar.

---

Sí, Sophie está muy preocupada por eso.

### --feedback--

Sophie no está muy preocupada, pero aún piensa que deberían arreglarlo.

---

No, pero aún así debería estar arreglado.

## --video-solution--

4

# --explanation--

`It's not a big deal` significa que el problema no es serio. Por ejemplo:

- Persona 1: `I can't join the meeting today.`

- Persona 2: `It's not a big deal. I'll take notes for you.` - Está bien perder la reunión, y esta persona puede ayudar.

Sophie también dice que `we should fix it before it causes problems`, lo que significa que es mejor arreglarlo ahora antes de que se vuelva serio.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.72,
      "finishTimestamp": 8.5
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
      "finishTime": 3.78,
      "dialogue": {
        "text": "It's not a big deal, but we should fix it before it causes problems.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.28
    }
  ]
}
```
