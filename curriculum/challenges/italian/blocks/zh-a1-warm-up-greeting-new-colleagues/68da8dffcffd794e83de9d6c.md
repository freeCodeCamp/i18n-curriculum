---
id: 68da8dffcffd794e83de9d6c
title: Attività 10
challengeType: 19
dashedName: task-10
lang: zh-CN
---

<!-- (Audio) Chen Na: 你们好 (nǐ men hǎo) -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa dice Chen Na per salutare un gruppo di persone?

## --answers--

`你好 (nǐ hǎo)`

### --feedback--

Questo è un saluto rivolto a una persona, ma Chen Na sta salutando più persone.

---

`您们好 (nín men hǎo)`

### --feedback--

Questa forma non è standard in cinese.

---

`你们好 (nǐ men hǎo)`

---

`大家好 (dà jiā hǎo)`

### --feedback--

Anche questa significa "ciao a tutti", ma Chen Na usa una frase diversa.

## --video-solution--

3

# --explanation--

La domanda chiede cosa dice Chen Na per salutare **un gruppo di persone**.

`你好 (nǐ hǎo)` è un saluto rivolto a una persona, mentre `您好 (nín hǎo)` è un saluto cortese rivolto a una persona. `您们好 (nín men hǎo)` non è standard in cinese; `您 (nín)` è cortese al singolare, di solito non si usa al plurale.

La frase corretta per salutare un gruppo è `你们好 (nǐ men hǎo)`, che è un modo comune per dire "ciao a tutti". `大家好 (dà jiā hǎo)` è un altro modo per salutare un gruppo, che imparerai man mano che procedi.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Chen Na",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 8.98,
      "finishTimestamp": 9.9
    }
  },
  "commands": [
    {
      "character": "Chen Na",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Chen Na",
      "startTime": 1,
      "finishTime": 1.92,
      "dialogue": {
        "text": "你们好 (nǐ men hǎo)",
        "align": "center"
      }
    },
    {
      "character": "Chen Na",
      "opacity": 0,
      "startTime": 2.42
    }
  ]
}
```
