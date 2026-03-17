---
id: 677d3b8fac17ba6cbf3d8afa
title: Attività 3
challengeType: 22
dashedName: task-3
lang: en-US
---

<!-- (Audio) Bob: I want to start by saying that you've done a great job with your QA work. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`I want to start by BLANK that you've done a great job with your BLANK work.`

## --blanks--

`saying`

### --feedback--

Questa è la forma `-ing` del verbo `say`, usata dopo la preposizione `by` per indicare il modo di iniziare.

---

`QA`

### --feedback--

Questo indica `Quality Assurance`, riferito al processo di assicurarsi che i prodotti rispettino gli standard richiesti.

# --explanation--

Quando un verbo segue una preposizione, deve assumere la forma `-ing` (gerundio). In questa frase, `saying` segue la preposizione `by`, indicando il modo in cui Bob inizia la sua affermazione. Per esempio:

`She improved her skills by practicing regularly.` - Qui `practicing` segue la preposizione `by`, mostrando come ha migliorato le sue competenze.

Bob fa un complimento a Jessica per il suo lavoro in `QA`. `QA` indica `Quality Assurance`. Si riferisce al processo di assicurarsi che prodotti o servizi rispettino specifici standard di qualità e funzionino correttamente. Un altro esempio:

`The QA team identified several bugs during testing.` - Questo significa che le persone responsabili di garantire la qualità del software sono riuscite a individuare bug nel software prima della sua pubblicazione.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-1.mp3",
      "startTime": 1,
      "startTimestamp": 3.3,
      "finishTimestamp": 6.7
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
      "finishTime": 4.4,
      "dialogue": {
        "text": "I want to start by saying that you've done a great job with your QA work.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
