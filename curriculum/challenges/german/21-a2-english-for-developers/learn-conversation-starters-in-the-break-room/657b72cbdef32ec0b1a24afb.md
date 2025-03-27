---
id: 657b72cbdef32ec0b1a24afb
title: Task 30
challengeType: 19
dashedName: task-30
---

<!-- (audio) Tom: Wow! Electric or acoustic? Sophie: Electric, for sure! -->

# --description--

Wenn du von verschiedenen Arten von Gitarren hörst, können zwei gebräuchliche Arten auftauchen: `electric` und `acoustic`. `Electric guitars` benötigen in der Regel etwas, das man als Verstärker bezeichnet, damit sie laut genug zu hören sind, während `acoustic guitars` ohne zusätzliches Equipment zu hören sind.

# --questions--

## --text--

Höre dir den Dialog an und wähle die richtige Art von Gitarre die Sophie bevorzugt.

## --answers--

Elektrische Gitarre

---

Akustik-Gitarre

### --feedback--

Sophie macht es sehr deutlich, welche Art von Gitarre sie mag. Vergiss nicht, dass die, die sie bevorzugt, einen Verstärker braucht, um richtig laut zu sein.

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": { "x": 50, "y": 15, "z": 1.2 },
        "opacity": 0
      },
      {
        "character": "Sophie",
        "position": { "x": 50, "y": 0, "z": 1.4 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.52
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
      "startTime": 1.1,
      "finishTime": 3.1,
      "dialogue": {
        "text": "Wow! Electric or acoustic?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 3.2
    },
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 3.3
    },
    {
      "character": "Sophie",
      "startTime": 3.3,
      "finishTime": 5.12,
      "dialogue": {
        "text": "Electric for sure.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.62
    }
  ]
}
```
