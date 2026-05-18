---
id: 66bbba46fff0ef451b701bcd
title: Aufgabe 103
challengeType: 19
dashedName: task-103
lang: en-US
---

<!-- Audio Reference:
Tom: Hey Sarah, do you have a moment? I'm struggling with these IDEs.
Sarah: Sure, I'm not busy. What's the problem? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Ist Sarah verfügbar, um mit Tom zu sprechen?

## --answers--

Nein, sie ist beschäftigt und möchte nichts von seinen Problemen wissen.

### --feedback--

Sarah sagt, dass sie nicht beschäftigt ist.

---

Ja, sie ist verfügbar und möchte wissen, was das Problem ist.

---

Nein, sie kann gerade nicht sprechen, da sie ihre eigenen Probleme hat.

### --feedback--

Sarah erwähnt, dass sie nicht beschäftigt ist.

---

Ja, aber nur für einen Moment, weil sie ihre eigenen Probleme hat.

### --feedback--

Sarah begrenzt die Zeit nicht; sie sagt einfach, dass sie nicht beschäftigt ist.

## --video-solution--

2

# --explanation--

Anstatt direkt zu sagen, dass sie frei ist, verwendet Sarah die Verneinung `I'm not busy`, um zu betonen, dass sie Zeit hat, zu helfen.

Dies ist eine höfliche und indirekte Art, Verfügbarkeit im Englischen anzubieten, die häufig verwendet wird, um das Gespräch taktvoller zu gestalten.

Ihr Folgesatz `What's the problem?` bestätigt, dass sie bereit ist zu helfen, indem sie Tom einlädt, das Problem zu erklären.

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
      },
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.5
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
      "finishTime": 2.92,
      "dialogue": {
        "text": "Hey Sarah, do you have a moment?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "startTime": 3.08,
      "finishTime": 5.14,
      "dialogue": {
        "text": "I'm struggling with these IDEs.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "startTime": 5.54,
      "finishTime": 7.5,
      "dialogue": {
        "text": "Sure, I'm not busy. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8
    }
  ]
}
```
