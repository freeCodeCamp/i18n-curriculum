---
id: 6620102deeab45aeeffa84ac
title: Attività 5
challengeType: 22
dashedName: task-5
lang: en-US
---

<!-- (Audio) Tom: She's a colleague with long wavy brown hair and bright brown eyes. -->

# --description--

Quando descrivi il colore degli occhi di una persona, normalmente li identifichi prima dal loro colore. I colori degli occhi più comuni sono `black`, `brown`, `blue` e `green`. A seconda del colore, possono tendere a `white` o a `black` (il colore stesso è più intenso o più tenue). In questo caso, puoi aggiungere le parole `light` (che tende a `white`) e `dark` (che tende a `black`) prima del colore per esprimerlo. Un'altra caratteristica che normalmente usi per identificare gli occhi di un'altra persona è la forma: `round` quando è più simile a un cerchio e `narrow` quando è più simile a una linea. Infine, puoi riferirti a loro in termini di dimensione, `large` (quando sono grandi) o `small` (quando non lo sono). Tom esprime anche un'opinione, dicendo che gli occhi di Lisa sono pieni di energia e vitalità. In questo caso, si dice che gli occhi di qualcuno sono `bright`.

Come fai con `hair`, anche gli aggettivi per identificare gli occhi di una persona seguono un ordine in inglese. Prima esprimi questa opinione, poi passi alla dimensione, poi alla forma e infine al colore (preceduto o meno da `light` o `dark`).

Esempio: `Tom has beautiful, small, narrow, light green eyes.`

Ora ascolta e completa gli spazi con la descrizione che Tom fa degli occhi di Lisa.

# --fillInTheBlank--

## --sentence--

`She's a colleague with long wavy brown hair and BLANK BLANK eyes.`

## --blanks--

`bright`

### --feedback--

Tom esprime prima un'opinione. Dice che gli occhi di Lisa sono pieni di energia.

---

`brown`

### --feedback--

Tom parla infine del colore degli occhi di Lisa. È una tonalità vicina a `black`, e non è né `blue` né `green`.

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
      "filename": "4.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 6.52,
      "finishTimestamp": 10.6
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
      "finishTime": 5.08,
      "dialogue": {
        "text": "She's a colleague with long wavy brown hair and bright brown eyes.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.58
    }
  ]
}
```
