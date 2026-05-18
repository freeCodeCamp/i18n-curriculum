---
id: 6620102deeab45aeeffa84ac
title: Aufgabe 5
challengeType: 22
dashedName: task-5
lang: en-US
---

<!-- (Audio) Tom: She's a colleague with long wavy brown hair and bright brown eyes. -->

# --description--

Wenn Sie die Farbe der Augen einer Person beschreiben, nennen Sie normalerweise zuerst die Farbe. Häufige Augenfarben sind `black`, `brown`, `blue` und `green`. Je nach Farbe kann sie dazu neigen, `white` oder `black` zu sein (die Farbe selbst ist stärker oder schwächer). In diesem Fall können Sie die Wörter `light` (tendierend zu `white`) und `dark` (tendierend zu `black`) vor der Farbe hinzufügen, um dies auszudrücken. Ein weiteres Merkmal, das Sie normalerweise verwenden, um die Augen einer anderen Person zu beschreiben, ist die Form – `round`, wenn sie eher rund ist, und `narrow`, wenn sie eher einer Linie ähnelt. Schließlich können Sie sie hinsichtlich ihrer Größe beschreiben, `large` (wenn sie groß sind) oder `small` (wenn sie es nicht sind). Tom äußert auch eine Meinung und sagt, dass Lisas Augen voller Energie und Vitalität sind. In diesem Fall sagt man, die Augen einer Person sind `bright`.

Wie bei `hair` folgen die Adjektive zur Beschreibung der Augen einer Person im Englischen ebenfalls einer Reihenfolge. Zuerst drücken Sie die Meinung aus, dann die Größe, danach die Form und schließlich die Farbe (gegebenenfalls mit `light` oder `dark` davor).

Beispiel: `Tom has beautiful, small, narrow, light green eyes.`

Hören Sie nun zu und füllen Sie die Lücken mit Toms Beschreibung von Lisas Augen aus.

# --fillInTheBlank--

## --sentence--

`She's a colleague with long wavy brown hair and BLANK BLANK eyes.`

## --blanks--

`bright`

### --feedback--

Tom äußert zuerst eine Meinung. Er sagt, Lisas Augen sind voller Energie.

---

`brown`

### --feedback--

Tom spricht schließlich über Lisas Augenfarbe. Es ist ein Farbton, der nahe an `black` liegt und weder `blue` noch `green` ist.

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
