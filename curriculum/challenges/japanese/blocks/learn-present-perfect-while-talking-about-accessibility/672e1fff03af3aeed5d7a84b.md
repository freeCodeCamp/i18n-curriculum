---
id: 672e1fff03af3aeed5d7a84b
title: タスク 117
challengeType: 19
dashedName: task-117
lang: en-US
---

<!-- (Audio) Anna: That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

アンナはジェームズのアイデアについてどう思っていて、何を提案していますか？

## --answers--

彼女はジェームズのアイデアに反対して、新しいアプローチを始めることを提案しています。

### --feedback--

アンナはジェームズに同意しており、反対していません。また、最初からやり直すのではなく、進捗を把握したいと考えています。

---

彼女はジェームズのアイデアが混乱を招くと考え、アクセシビリティ目標のみにフォーカスすることを提案しています。

### --feedback--

アンナはジェームズのアイデアを混乱しているとは思っておらず、同意していて、共有の目標の進捗を監視したいと考えています。

---

彼女はジェームズに同意して、進捗を監視するために連絡を取り続けることを提案しています。

---

彼女はジェームズのアイデアは不要だと考え、プロジェクトを中止することを提案しています。

### --feedback--

アンナは中止を提案しておらず、ジェームズのアイデアを支持し、最新情報を得たいと考えています。

## --video-solution--

3

# --explanation--

アンナはジェームズのアプローチに同意しており、`That makes sense`と言っています。これは彼女が彼のアイデアを理解し支持していることを示しています。また、`keeping in touch to monitor progress`を提案しており、共有の目標を達成するために進捗を把握したいという関心を示しています。

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_4-4.mp3",
      "startTime": 1,
      "startTimestamp": 50.98,
      "finishTimestamp": 55.72
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
      "finishTime": 5.74,
      "dialogue": {
        "text": "That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.24
    }
  ]
}
```
