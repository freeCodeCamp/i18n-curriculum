---
id: 65a4f2c2d1bbdfbe82cb3fdd
title: Aufgabe 94
challengeType: 22
dashedName: task-94
lang: en-US
---

<!-- (Audio) Bob: Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets! -->

# --description--

Ein `gadget` ist ein kleines Werkzeug oder Gerät, oft clever oder neuartig, das eine bestimmte Funktion erfüllt oder etwas erleichtert.

Im Bereich Technik können Gadgets Dinge wie Smartphones, Smartwatches oder jedes coole, innovative elektronische Gerät sein.

Zum Beispiel `My new fitness tracker gadget helps me keep track of my steps and exercise.`

# --fillInTheBlank--

## --sentence--

`Hey, Sarah, do you know what really BLANK me excited about tech? It's all BLANK amazing BLANK!`

## --blanks--

`gets`

### --feedback--

Dieses Wort bedeutet, dass etwas ein Gefühl oder eine Reaktion hervorruft. Hier wird es verwendet, um zu beschreiben, was Bob an Technik begeistert. Es ist in der dritten Person Singular konjugiert.

---

`those`

### --feedback--

Dieses Wort wird verwendet, um auf bestimmte Dinge hinzuweisen, über die gesprochen wird, in diesem Fall die Gadgets. Plural von `that`.

---

`gadgets`

### --feedback--

Dieses Wort bezieht sich auf kleine elektronische Geräte oder Werkzeuge, die nützlich oder interessant sind. Es wird oft verwendet, um coole Technikartikel zu beschreiben. Es steht im Plural.

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
