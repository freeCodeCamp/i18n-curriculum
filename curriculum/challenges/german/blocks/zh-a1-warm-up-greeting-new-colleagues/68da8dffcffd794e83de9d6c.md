---
id: 68da8dffcffd794e83de9d6c
title: Aufgabe 10
challengeType: 19
dashedName: task-10
lang: zh-CN
---

<!-- (Audio) Chen Na: 你们好 (nǐ men hǎo) -->

# --instructions--

Hören Sie sich die Audiodatei an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was sagt Chen Na, um eine Gruppe von Personen zu begrüßen?

## --answers--

`你好 (nǐ hǎo)`

### --feedback--

Dies ist eine Begrüßung für eine einzelne Person, aber Chen Na begrüßt mehrere Personen.

---

`您们好 (nín men hǎo)`

### --feedback--

Diese Form ist im Chinesischen nicht standardmäßig.

---

`你们好 (nǐ men hǎo)`

---

`大家好 (dà jiā hǎo)`

### --feedback--

Das bedeutet ebenfalls „Hallo, alle zusammen“, aber Chen Na verwendet einen anderen Ausdruck.

## --video-solution--

3

# --explanation--

Die Frage lautet, was Chen Na sagt, um **eine Gruppe von Personen** zu begrüßen.

`你好 (nǐ hǎo)` ist eine Begrüßung für eine einzelne Person, während `您好 (nín hǎo)` eine höfliche Begrüßung für eine einzelne Person ist. `您们好 (nín men hǎo)` ist im Chinesischen nicht standardmäßig; `您 (nín)` ist höflich und singular, wird normalerweise nicht im Plural verwendet.

Der korrekte Ausdruck, um eine Gruppe zu begrüßen, ist `你们好 (nǐ men hǎo)`, was eine gebräuchliche Art ist, „Hallo, alle zusammen“ zu sagen. `大家好 (dà jiā hǎo)` ist eine weitere Möglichkeit, eine Gruppe zu begrüßen, die Sie im Verlauf noch lernen werden.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Chen Na",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ZH_A1_greetings_and_introductions_warm_up.mp3",
      "startTime": 1,
      "startTimestamp": 8.98,
      "finishTimestamp": 9.9
    }
  },
  "commands": [
    {
      "character": "Chen Na",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Chen Na",
      "startTime": 1,
      "finishTime": 1.92,
      "dialogue": {
        "text": "你们好 (nǐ men hǎo)",
        "align": "center"
      }
    },
    {
      "character": "Chen Na",
      "opacity": 0,
      "startTime": 2.42
    }
  ]
}
```
