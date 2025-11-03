---
id: 66193b1deee8db8cfe3bc5c1
title: Tarea 41
challengeType: 19
dashedName: task-41
lang: en-US
---

<!-- (Audio) Tom: What other collaboration tools are there? Alice: Well, there are project management tools. They help teams to organize tasks. Also, cloud storage services make it easy to share and collaborate on documents. -->

# --description--

Escucha el audio y responde a la pregunta.

# --questions--

## --text--

¿Qué herramientas de colaboración menciona Alice?

## --answers--

`Project management tools` y `cloud storage services`

---

`The internet` y `computer networks`

### --feedback--

Aunque estas son herramientas importantes en el mundo actual, no son las herramientas que menciona Alice.

---

`Screwdrivers` y `hammers`

### --feedback--

Estas son herramientas manuales, no herramientas de colaboración.

---

`Chat apps` y `email`

### --feedback--

Estas pueden considerarse herramientas de colaboración en un entorno virtual, pero Alice no las menciona.

## --video-solution--

1

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
      },
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.2-2.mp3",
      "startTime": 1,
      "startTimestamp": 30.82,
      "finishTimestamp": 42.02
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
      "finishTime": 3.04,
      "dialogue": {
        "text": "What other collaboration tools are there?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 3.29
    },
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 3.29
    },
    {
      "character": "Alice",
      "startTime": 3.54,
      "finishTime": 7.46,
      "dialogue": {
        "text": "Well, there are project management tools. They help teams to organize tasks.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "startTime": 8.06,
      "finishTime": 12.2,
      "dialogue": {
        "text": "Also, cloud storage services make it easy to share and collaborate on documents.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 12.7
    }
  ]
}
```
