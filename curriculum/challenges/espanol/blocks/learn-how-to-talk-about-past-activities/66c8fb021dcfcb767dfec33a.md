---
id: 66c8fb021dcfcb767dfec33a
title: Tarea 16
challengeType: 19
dashedName: task-16
lang: en-US
---

<!-- (Audio) Linda: No, we haven't. But we've solved similar issues on other projects. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Cuál de las siguientes afirmaciones es verdadera?

## --answers--

Nunca han solucionado problemas como este antes.

### --feedback--

Piensa si Linda menciona alguna experiencia con problemas similares.

---

Ya han solucionado este problema exacto en otro proyecto.

### --feedback--

Considera si Linda dice que tiene experiencia con este problema específico o algo similar.

---

No han arreglado este problema exacto, pero sí han solucionado otros similares antes.

---

Han solucionado este problema muchas veces antes.

### --feedback--

Reflexiona sobre si Linda está hablando de haber solucionado este problema exacto o algo similar.
  
## --video-solution--

3

# --explanation--

Para encontrar la respuesta correcta, concéntrate en si Linda está hablando de arreglar el `exact issue` o `similar issues`. 

Linda deja claro que no han solucionado este problema exacto antes, pero también menciona que han resuelto problemas similares en el pasado. 

La respuesta correcta debería mostrar este equilibrio: reconocer que no hay una coincidencia exacta pero confirmar experiencia pasada con problemas relacionados.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 20.16
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 1.86,
      "dialogue": {
        "text": "No, we haven't,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 1.9,
      "finishTime": 4.14,
      "dialogue": {
        "text": "but we've solved similar issues on other projects.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 4.64
    }
  ]
}
```
