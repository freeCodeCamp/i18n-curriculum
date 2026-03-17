---
id: 662e4f2edbb46a1dc6efc94f
title: Attività 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Tom: Don't worry. Debugging is a common challenge for programmers. -->

# --description--

`Common` si usa per descrivere qualcosa che accade spesso o è ampiamente condiviso tra molte persone. Per esempio, `Colds are a common illness during the winter.` Questo significa che è un problema di salute comune che molte persone affrontano in quel periodo dell'anno.

`Challenge` si riferisce a un'attività o situazione che richiede uno sforzo speciale per essere portata a termine perché è difficile. Per esempio, `Learning to ride a bike was a big challenge for her at first.` Questa frase descrive come imparare ad andare in bicicletta abbia presentato inizialmente delle difficoltà.

# --fillInTheBlank--

## --sentence--

`Don't worry. Debugging is a BLANK BLANK for programmers.`

## --blanks--

`common`

### --feedback--

Questo aggettivo descrive qualcosa che si verifica frequentemente o è usuale tra un gruppo.

---

`challenge`

### --feedback--

Questo sostantivo indica un'attività o problema difficile che richiede impegno per essere risolto o superato.

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
      "filename": "5.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 5.02,
      "finishTimestamp": 8.18
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
      "finishTime": 4.16,
      "dialogue": {
        "text": "Don't worry. Debugging is a common challenge for programmers.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
