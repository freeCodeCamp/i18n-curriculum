---
id: 655b67f02eecf57fa75ceecf
title: Attività 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: That's important work. I'm helping our team learn how to stay safe online. -->

# --description--

Il verbo `stay` si usa per indicare il mantenimento di uno stato o condizione particolare. Viene spesso usato in istruzioni o consigli per mantenersi in una certa situazione. Per esempio:

- `Stay safe online.` - Continua a essere sicuro mentre usi internet.

- `Stay calm during the test.` - Continua a mantenere la calma.

- `Stay focused on your work.` - Continua a prestare attenzione al tuo lavoro.

# --fillInTheBlank--

## --sentence--

`That's important work. I'm BLANK our team learn how to BLANK safe online.`

## --blanks--

`helping`

### --feedback--

Questo verbo indica che Sophie sta attivamente fornendo assistenza o supporto al suo team. Finisce con `-ing`.

---

`stay`

### --feedback--

Questa parola si usa per suggerire di mantenere un certo stato, in questo caso, essere sicuri mentre si è online.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 13.92,
      "finishTimestamp": 17.34
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
      "finishTime": 4.42,
      "dialogue": {
        "text": "That's important work. I'm helping our team learn how to stay safe online.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.92
    }
  ]
}
```
