---
id: 67a75c6d5ea4deeee6ffb507
title: Tarea 21
challengeType: 19
dashedName: task-21
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué ofrece hacer Linda?  

## --answers--  

Prepara escenarios de usuario para pruebas.  

---  

Omite la fase de pruebas.  

### --feedback--  

Linda no sugiere saltarse las pruebas; ella está contribuyendo activamente a ellas.  

---  

Pídele a otra persona que se encargue de las pruebas de usuario.  

### --feedback--  

Linda no delega la tarea a otra persona.  

---  

Rediseña la interfaz de usuario desde cero.  

### --feedback--  

Linda no habla sobre rediseñar la interfaz.  

## --video-solution--  

1  

# --explanation--  

Escucha las palabras clave que indican qué está ofreciendo hacer Linda.  

`I can also` – Esto muestra que ella se está ofreciendo para contribuir.  

`Prepare some user scenarios for testing` – Esto indica claramente la tarea de la que ella se está haciendo responsable.  

`Ensure a smooth user experience` – Esto explica por qué las pruebas son importantes y refuerza su compromiso con el proyecto.  

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
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
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
