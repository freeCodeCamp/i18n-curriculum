---
id: 657b1a27dc6daf6ffd52ff1f
title: タスク 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (Audio) Anna: Excellent. Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: Yes. I have a master's degree in computer science. -->

# --description--

英語では、`'s`が付いた名詞に続けて別の名詞を置く構造は、所有や所属を示すために使われます。

最初の名詞が単数の場合、`Sarah's laptop`のように、そのノートパソコンがサラのものであることを示します。しかし、最初の名詞が複数の場合は、`'`が付いた名詞の構造に変わり、`teachers' office`のように教師たちのためのオフィスを示します。

# --questions--

## --text--

対話の文脈で`master's degree`は何を指していますか？

## --answers--

学校の教師のための学位

### --feedback--

`Master's degree`は教師専用ではなく、高度な学術学位を指します。

---

初等教育レベルの学位

### --feedback--

`Master's degree`は初等教育を超えた高等教育の資格です。

---

スキル習得のための学位

### --feedback--

専門知識を示唆しますが、`master's degree`は特に学術的な資格を指します。

---

高度な学術学位

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
