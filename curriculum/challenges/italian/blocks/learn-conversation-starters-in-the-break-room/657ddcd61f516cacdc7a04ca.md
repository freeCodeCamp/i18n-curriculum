---
id: 657ddcd61f516cacdc7a04ca
title: Attività 128
challengeType: 19
dashedName: task-128
lang: en-US
---

<!-- (audio) Maria: The bookstores I remember are all downtown. But there's a bus that stops two blocks away. -->

# --description--

Maria informa Tom sulle opzioni di trasporto pubblico, menzionando in particolare un mezzo che si ferma nelle vicinanze. Questo è importante per spostarsi in città, soprattutto verso luoghi che non si possono raggiungere a piedi.

`Two blocks away` indica che devi superare due angoli di strada per arrivare a un posto. È una breve passeggiata in città.

`Downtown` è il centro di una città dove ci sono molti negozi, ristoranti e di solito edifici alti.

# --questions--

## --text--

Cosa dice Maria che si ferma a due isolati di distanza?

## --answers--

Un taxi

### --feedback--

Maria menziona un'opzione di trasporto pubblico, non un servizio privato.

---

Un treno

### --feedback--

I treni di solito non si fermano agli isolati; si fermano alle stazioni.

---

Un autobus

---

Un noleggio di biciclette

### --feedback--

I noleggi sono solitamente servizi fissi, non qualcosa che si ferma. 

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 37.92,
      "finishTimestamp": 42.38
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 5.46,
      "dialogue": {
        "text": "The bookstores I remember are all downtown. But there's a bus that stops two blocks away.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.96
    }
  ]
}
```
