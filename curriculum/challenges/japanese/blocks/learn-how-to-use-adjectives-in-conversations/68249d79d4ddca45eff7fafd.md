---
id: 68249d79d4ddca45eff7fafd
title: タスク 144
challengeType: 19
dashedName: task-144
lang: en-US
---

<!-- (Audio) Jessica: Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow. This feedback should help us know what to do next. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ジェシカ はこの情報をどうするつもりですか？

## --answers--

今は無視して、さらなるフィードバックを待つ。

### --feedback--

ジェシカ は情報を整理して共有すると言っており、無視すると言っていません。

---

情報をレポートにまとめて、他の人と話し合う。

---

変更を加える前にユーザーに再テストを依頼する。

### --feedback--

再テストやユーザーフィードバックについては言及していません。

---

レビューなしでクライアントに直接送る。

### --feedback--

ジェシカ はまずチームと話すと言っており、クライアントに直接送るとは言っていません。

## --video-solution--

2

# --explanation--

ジェシカ は `put all this information into a report` と `talk about it with the team tomorrow` をすると言っています。これは詳細を整理してチームと話し合うつもりであることを示しています。

また、フィードバックが `should help` とも言っており、次のステップの指針になることを意味しています。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-3.mp3",
      "startTime": 1,
      "startTimestamp": 86.16,
      "finishTimestamp": 93.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 6.0,
      "dialogue": {
        "text": "Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 6.26,
      "finishTime": 7.86,
      "dialogue": {
        "text": "This feedback should help us know what to do next.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.86
    }
  ]
}
```
