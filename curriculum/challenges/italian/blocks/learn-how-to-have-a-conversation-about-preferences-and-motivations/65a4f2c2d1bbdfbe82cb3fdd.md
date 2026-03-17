---
id: 65a4f2c2d1bbdfbe82cb3fdd
title: Attività 94
challengeType: 22
dashedName: task-94
lang: en-US
---

<!-- (Audio) Bob: Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets! -->

# --description--

Un `gadget` è uno strumento o dispositivo piccolo, spesso ingegnoso o innovativo, che svolge una funzione specifica o rende qualcosa più facile.

Nel campo della tecnologia, i gadget possono includere cose come smartphone, smartwatch o qualsiasi dispositivo elettronico innovativo e interessante.

Per esempio, `My new fitness tracker gadget helps me keep track of my steps and exercise.`

# --fillInTheBlank--

## --sentence--

`Hey, Sarah, do you know what really BLANK me excited about tech? It's all BLANK amazing BLANK!`

## --blanks--

`gets`

### --feedback--

Questa parola significa che qualcosa provoca una sensazione o una reazione. Qui è usata per parlare di ciò che entusiasma Bob riguardo alla tecnologia. È coniugata alla terza persona singolare.

---

`those`

### --feedback--

Questa parola serve a indicare cose specifiche di cui si parla, in questo caso i gadget. È il plurale di `that`.

---

`gadgets`

### --feedback--

Questa parola si riferisce a piccoli dispositivi elettronici o strumenti utili o interessanti. Viene spesso usata per parlare di oggetti tecnologici cool. È al plurale.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 6.08
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 7.08,
      "dialogue": {
        "text": "Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.58
    }
  ]
}
```
