---
id: 657b1a27dc6daf6ffd52ff1f
title: 任務 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (Audio) Anna: Excellent. Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: Yes. I have a master's degree in computer science. -->

# --description--

在英文中，名詞後接 `'s` 再接第二個名詞的結構用來表示所有權或所屬關係。

如果第一個名詞是單數，如 `Sarah's laptop`，則表示筆電屬於 Sarah。然而，如果第一個名詞是複數，結構會改為名詞後綴 `'`，如 `teachers' office`，表示老師們的辦公室。

# --questions--

## --text--

在對話盒的背景關係中，`master's degree` 指的是什麼？

## --answers--

學校教師學位

### --feedback--

`Master's degree` 指的是一種進階學位，並非專門針對教師。

---

初級教育學位

### --feedback--

`Master's degree` 是高於初級層次的高等教育資格。

---

掌握技能的程度

### --feedback--

雖然它暗示專業知識，`master's degree` 特指學術資格。

---

一個進階學術學位

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      },
      {
        "character": "Second Candidate",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 43.44,
      "finishTimestamp": 51.78
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 5.72,
      "dialogue": {
        "text": "Excellent. Can you share details about your educational background? Were you trained in a specific field?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "opacity": 1,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "startTime": 6.36,
      "finishTime": 9.34,
      "dialogue": {
        "text": "Yes. I have a master's degree in computer science.",
        "align": "center"
      }
    },
    {
      "character": "Second Candidate",
      "opacity": 0,
      "startTime": 9.84
    }
  ]
}
```
