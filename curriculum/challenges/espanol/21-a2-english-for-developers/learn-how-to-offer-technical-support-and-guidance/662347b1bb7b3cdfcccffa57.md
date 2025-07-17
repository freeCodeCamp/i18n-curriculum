---
id: 662347b1bb7b3cdfcccffa57
title: Task 50
challengeType: 22
dashedName: task-50
---

<!-- (Audio) Brian: Sophie, I heard you're working on fixing that bug in the user authentication module. Need any help? -->

# --description--

`Heard` es el pasado del verbo `to hear`, lo que significa tomar conciencia de algo a través de los oídos o ser informado de algo. Por ejemplo, `I heard the news yesterday` significa que te enteraste de las noticias el día anterior.

Un `authentication module` en un contexto de software es una parte de un sistema responsable de verificar la identidad de los usuarios. A menudo se utiliza en sistemas de inicio de sesión. Por ejemplo, `the authentication module checks the username and password` significa que verifica las credenciales del usuario.

# --fillInTheBlank--

## --sentence--

`Sophie, I BLANK you're working on BLANK that bug in the user BLANK module. Need any help?`

## --blanks--

`heard`

### --feedback--

Es el pasado de `to hear`, lo que indica que Brian fue informado sobre la tarea de Sophie.

---

`fixing`

### --feedback--

Se refiere al acto de reparar o resolver el problema (error) en el software.

---

`authentication`

### --feedback--

Se refiere al proceso de verificación de la identidad de un usuario en el módulo de software.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 5.66
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.84,
      "dialogue": {
        "text": "Sophie, I heard you're working on fixing that bug",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.84,
      "finishTime": 6.66,
      "dialogue": {
        "text": "in the user authentication module. Need any help?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.16
    }
  ]
}
```
