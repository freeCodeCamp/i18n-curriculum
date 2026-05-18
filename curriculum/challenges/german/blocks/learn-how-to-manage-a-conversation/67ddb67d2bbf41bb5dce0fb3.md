---
id: 67ddb67d2bbf41bb5dce0fb3
title: Aufgabe 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) James: No problem. Talk to you later. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was können wir aus James’ Antwort schließen?

## --answers--

Er muss zuerst ein Problem lösen.

### --feedback--

James erwähnt kein anderes Problem.

---

Er beendet das Gespräch auf freundliche Weise.

---

Er möchte jetzt ein Treffen vereinbaren.

### --feedback--

Es wird nichts von einer Terminvereinbarung erwähnt.

---

Er bittet um weitere Hilfe.

### --feedback--

James stellt keine Anfrage.

## --video-solution--

2

# --explanation--

Im Gespräch lassen Sie oft Wörter weg, wenn die Bedeutung klar ist. In `Talk to you later` wird das Subjekt `I'll` (Kontraktion von `I will`) ausgelassen. Der vollständige Satz wäre `I'll talk to you later`. Solche Auslassungen sind in der Umgangssprache üblich. Ein weiteres Beispiel:

`See you tomorrow!` – Das ist eine kürzere Art zu sagen `I'll see you tomorrow`.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 44.74,
      "finishTimestamp": 46.5
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "No problem. Talk to you later.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
