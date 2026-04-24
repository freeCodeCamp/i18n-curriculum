---
id: 6856ddea73ea5fafe4d65cfc
title: タスク 95
challengeType: 19
dashedName: task-95
lang: en-US
---

<!-- (Audio) Jake: We could incorporate an interactive quiz during the onboarding process. It could teach users how to recognize and handle potential phishing attempts. -->

<!-- SPEAKING -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

リンダはどのようにしてジェイクのアイデアを褒めることができるでしょうか？

## --answers--

`That's an excellent suggestion.`

### --audio-id--

EN02a86d00

---

`Are you sure that would work?`

### --audio-id--

EN13416258

### --feedback--

これは疑わしい響きで、支持的ではありません。

## --video-solution--

1

# --explanation--

`That's an excellent suggestion` は、強い同意と承認を示して誰かのアイデアを丁寧かつ肯定的に褒める方法です。例えば：

- **グラフィックデザイナー:** `Let's add more visuals to the report.` – この人は、レポートをより鮮やかにするために、もっとグラフィックや画像を取り入れることを提案しています。

- **プロジェクトマネージャー:** `That's an excellent suggestion.` – これは、その人がそのアイデアを非常に良くて役立つと考えていることを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_24-2.mp3",
      "startTime": 1,
      "startTimestamp": 74.74,
      "finishTimestamp": 82.58
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "We could incorporate an interactive quiz",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 3.06,
      "finishTime": 4.3,
      "dialogue": {
        "text": "during the onboarding process.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 4.6,
      "finishTime": 6.36,
      "dialogue": {
        "text": "It could teach users how to recognize",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "startTime": 6.36,
      "finishTime": 8.84,
      "dialogue": {
        "text": "and handle potential phishing attempts.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 9.34
    }
  ]
}
```
