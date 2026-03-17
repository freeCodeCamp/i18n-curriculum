---
id: 655b275cadbebf5fc0f0db05
title: Attività 82
challengeType: 22
dashedName: task-82
lang: en-US
---

<!-- (Audio) Maria: On Tuesdays, I learn Japanese. I take online lessons at 7. -->

# --description--

Il verbo `take` può significare cose diverse a seconda della situazione. Nel contesto dell'apprendimento, `take` significa frequentare o partecipare a una classe o a un corso. Per esempio:

- `I take online lessons at 7.` - Qui `take` significa frequentare le lezioni.

- `She is taking a programming course this semester.` - Qui `taking` significa che è iscritta e partecipa al corso.

Quindi, quando dici `take lessons` o `take a course`, stai parlando di unirti o partecipare a essi, non di prendere fisicamente qualcosa.

# --fillInTheBlank--

## --sentence--

`On Tuesdays, I learn Japanese. I BLANK BLANK lessons at 7.`

## --blanks--

`take`

### --feedback--

Questo verbo descrive l'azione di partecipare alle lezioni.

---

`online`

### --feedback--

Questa parola si riferisce a un ambiente virtuale.

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 17.14,
      "finishTimestamp": 20.86
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
      "finishTime": 4.72,
      "dialogue": {
        "text": "On Tuesdays, I learn Japanese. I take online lessons at 7.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.22
    }
  ]
}
```
