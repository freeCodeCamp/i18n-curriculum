---
id: 67eeb0a9bfe9ce2ab1cbffd2
title: Aufgabe 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (audio) Sophie: Great. Also, you should have run the test suite before submitting your code. -->

# --instructions--

Hören Sie sich das Audio an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was hätte Mark sonst noch tun sollen?

## --answers--

Er hätte seinen gesamten Code neu schreiben sollen.

### --feedback--

Mark musste nicht alles neu schreiben.

---

Er hätte seinen Code zuerst testen sollen.

---

Er hätte alle Kommentare entfernen sollen.

### --feedback--

Kommentare sind nützlich und sollten nicht entfernt werden.

---

Er hätte das Testen überspringen sollen, weil es zu lange dauert.

### --feedback--

Das Testen ist ein wichtiger Schritt, bevor Sie Code absenden.

## --video-solution--

2

# --explanation--

Eine `test suite` ist eine Sammlung von Tests, die überprüfen, ob ein Programm korrekt funktioniert. Zum Beispiel:

- `We ran the test suite to check if the app works properly.` – Das Team führte alle Tests aus, um sicherzustellen, dass die App wie erwartet funktioniert.

- `We need to add more tests to the test suite to check for edge cases.` – Das Team sollte mehr Tests hinzufügen, um alle möglichen Situationen abzudecken.

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
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 42.42,
      "finishTimestamp": 45.94
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
      "finishTime": 4.52,
      "dialogue": {
        "text": "Great. Also, you should have run the test suite before submitting your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.02
    }
  ]
}
```
