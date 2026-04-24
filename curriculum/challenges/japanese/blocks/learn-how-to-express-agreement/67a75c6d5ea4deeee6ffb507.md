---
id: 67a75c6d5ea4deeee6ffb507
title: タスク 21
challengeType: 19
dashedName: task-21
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

リンダは何をすると申し出ていますか？  

## --answers--  

テスト用のユーザーシナリオを準備する。  

---  

テスト段階をスキップする。  

### --feedback--  

リンダはテストをスキップすることを提案していません。積極的にテストに貢献しています。  

---  

他の誰かにユーザーテストを任せる。  

### --feedback--  

リンダはその作業を他の人に任せるとは言っていません。  

---  

ユーザーインターフェースを一から再設計する。  

### --feedback--  

リンダはインターフェースの再設計について話していません。  

## --video-solution--  

1  

# --explanation--  

リンダが何を申し出ているかを示すキーワードに注目してください。  

`I can also` – これは彼女が自発的に貢献しようとしていることを示しています。  

`Prepare some user scenarios for testing` – 彼女が責任を持つタスクを明確に述べています。  

`Ensure a smooth user experience` – テストが重要である理由を説明し、プロジェクトへのコミットメントを強調しています。  

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
