---
id: 6710e0e2cafeeb09e6cb2d8f
title: Tarea 55
challengeType: 22
dashedName: task-55
lang: en-US
---

<!-- (Audio) Linda: Well, during the project, I was working closely with the development team, and we were constantly updating the user interface based on user feedback. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Well, during the project, I BLANK BLANK closely with the development team, and we BLANK constantly BLANK the user interface based on user feedback.`

## --blanks--

`was`

### --feedback--

Este es el verbo auxiliar usado para formar el `Past Continuous` en la forma singular de primera persona.

---

`working`

### --feedback--

Este es el verbo principal en el `Past Continuous`, que describe el acto de trabajar.

---

`were`

### --feedback--

Este es el verbo auxiliar usado para formar el `Past Continuous` en la forma plural de primera persona.

---

`updating`

### --feedback--

Este es el verbo principal en el `Past Continuous`, que describe una acción en curso de mejorar o modernizar algo.

# --explanation--

El tiempo `Past Continuous` se usa para describir acciones que estaban en curso en un momento específico del pasado. Cuando se usan dos oraciones en `Past Continuous` juntas, a menudo describen acciones simultáneas o acciones que ocurren una al lado de la otra.  

En esta oración, Linda está describiendo cómo ella y su equipo estaban trabajando y actualizando continuamente la interfaz de usuario durante todo el proyecto. Esto muestra dos acciones que ocurrían al mismo tiempo en el pasado, proporcionando contexto o antecedentes entre sí. Por ejemplo: 

Mientras yo preparaba el informe, ellos estaban probando las nuevas funciones. Esto significa que la acción de que yo preparara el informe y la prueba de las nuevas funciones ocurrieron al mismo tiempo.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_2-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.08,
      "finishTimestamp": 17.34
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
      "finishTime": 4.36,
      "dialogue": {
        "text": "Well, during the project, I was working closely with the development team,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.5,
      "finishTime": 8.26,
      "dialogue": {
        "text": "and we were constantly updating the user interface based on user feedback.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 8.76
    }
  ]
}
```
