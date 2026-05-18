---
id: 663a4d6ec33accaf2ec7be49
title: Aufgabe 28
challengeType: 22
dashedName: task-28
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

Ein `smile` ist das, was passiert, wenn Sie die Mundwinkel nach oben ziehen, um Glück zu zeigen. Es ist etwas, das Sie mit Ihrem Gesicht machen, wenn Sie glücklich sind oder nett sein wollen.

`Friendly` beschreibt jemanden, der freundlich, nett und leicht anzusprechen ist. Eine freundliche Person sorgt dafür, dass sich andere wohl und glücklich fühlen.

`A friendly smile` ist ein Lächeln, das zeigt, dass Sie freundlich und einladend sind. Es lässt andere sich gut fühlen und zeigt, dass Sie Freunde sein möchten.

Hören Sie sich den Dialog an und füllen Sie die Lücken aus.

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a tall guy with a BLANK BLANK.`

## --blanks--

`friendly`

### --feedback--

Diese Lücke beschreibt jemanden, der nett, leicht anzusprechen und einladend ist.

---

`smile`

### --feedback--

Die Handlung, die Sie ausführen, wenn Sie mit Ihrem Mund Glück zeigen möchten.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.12,
      "finishTimestamp": 17.74
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.62,
      "dialogue": {
        "text": "Sure. Tom is a tall guy with a friendly smile.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.12
    }
  ]
}
```
