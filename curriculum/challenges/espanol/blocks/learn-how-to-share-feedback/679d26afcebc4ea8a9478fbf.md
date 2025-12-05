---
id: 679d26afcebc4ea8a9478fbf
title: Tarea 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) James: Absolutely. Do you think we need to update the software again? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿James está seguro de que necesitan actualizar el software?

## --answers--

No realmente, ya que él está pidiendo la opinión de Maria.

---

Sí, él ya ha decidido actualizarlo.

### --feedback--

James le está preguntando a Maria sobre eso, así que probablemente aún no lo ha decidido.

---

Sí, él ya ha comenzado a actualizar el software.

### --feedback--

James está preguntando si debería actualizar el software o no.

---

Al contrario, está seguro de que no deberían actualizar el software.

### --feedback--

James no está rechazando la idea por completo; en realidad está pidiendo la opinión de Maria sobre el tema.

## --video-solution--

1

# --explanation--

`To update` significa modificar o mejorar el software lanzando una nueva versión. Las actualizaciones pueden incluir correcciones de errores, nuevas funciones o mejoras de rendimiento. Por ejemplo:

`The company released an update to fix security vulnerabilities in the app.` - Esto significa que se lanzó una nueva versión para solucionar problemas de seguridad.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.8,
      "finishTimestamp": 28.74
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.34,
      "dialogue": {
        "text": "Absolutely. Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.84
    }
  ]
}
```
