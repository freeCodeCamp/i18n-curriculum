---
id: 67b5b3dfdec8df1a5f326bc0
title: Attività 110
challengeType: 22
dashedName: task-110
lang: en-US
---

<!-- (audio) Maria: We've chosen a subtle color palette, but maybe adding some brighter tones would help. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`We've chosen a BLANK color BLANK, but maybe adding some brighter tones would help.`

## --blanks--

`subtle`

### --feedback--

Significa qualcosa che non è forte o evidente. È qualcosa di delicato o morbido che potresti non notare subito.

---

`palette`

### --feedback--

Si riferisce alla gamma di colori usata in un design o in un'opera d'arte. In questo caso, un `color palette` indica la selezione di colori scelta per il design dell'app o del progetto.

# --explanation--

`Subtle` indica qualcosa di delicato o non evidente. Per esempio:

`The artist used subtle shades of blue in the painting.` - Questo significa che l'artista ha usato tonalità chiare o morbide di blu che non sono molto forti o appariscenti.

`Palette` si riferisce alla gamma di colori o materiali che un artista o designer usa. Per esempio:

`The designer chose a warm palette for the website, using reds, oranges, and yellows.` - Questo significa che il designer ha scelto un insieme di colori caldi, come rosso, arancione e giallo, per il design del sito web.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-3.mp3",
      "startTime": 1,
      "startTimestamp": 36.2,
      "finishTimestamp": 39.94
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
      "finishTime": 4.74,
      "dialogue": {
        "text": "We've chosen a subtle color palette, but maybe adding some brighter tones would help.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
