---
id: 67ddb67d2bbf41bb5dce0fb3
title: タスク 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) James: No problem. Talk to you later. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ジェームズの返答から何がわかりますか？

## --answers--

彼はまず問題を解決する必要があります。

### --feedback--

ジェームズは別の問題については何も言っていません。

---

彼は友好的に会話を終えようとしています。

---

彼は今すぐミーティングを予定したいと思っています。

### --feedback--

予定についての言及はありません。

---

彼はもっと助けを求めています。

### --feedback--

ジェームズはリクエストをしていません。

## --video-solution--

2

# --explanation--

会話では、意味が明確な場合に単語を省略することがよくあります。`Talk to you later`では、主語`I'll`（`I will`の短縮形）が省略されています。完全な文は`I'll talk to you later`となります。このような省略はカジュアルな会話でよく見られます。別の例：

`See you tomorrow!` - これは`I'll see you tomorrow`を短く言ったものです。

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
