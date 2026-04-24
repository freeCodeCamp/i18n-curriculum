---
id: 67cbb5b81e5e4e3ae9ff6fb3
title: タスク 42
challengeType: 19
dashedName: task-42
lang: en-US
---

<!-- (audio) Jake: If integration is crucial, you might have to do some extra work with SafeGuard. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ジェイク は何を意味していますか？

## --answers--

SafeGuard は他のツールと簡単に統合できます。
  
### --feedback--

ジェイク の発言は簡単ではないことを示唆しています。

---

SafeGuard は統合すると費用が高くなります。

### --feedback--

ジェイク は費用については言及していません。

---

SafeGuard との統合には追加の作業が必要な場合があります。

---

SafeGuard は統合に柔軟性がありません。

### --feedback--

ジェイク は柔軟性については言及せず、追加作業の必要性にフォーカスしています。

## --video-solution--

3

# --explanation--

`Extra work` は目標を達成するために必要な追加の努力や時間を意味します。

ジェイク は `if integration is crucial`（非常に重要）であれば、ソフィー は SafeGuard に関してチャレンジに直面するかもしれず、そのため他のプラットフォームと統合するには追加の作業や努力が必要になると示唆しています。

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
      "filename": "B1_13-1.mp3",
      "startTime": 1,
      "startTimestamp": 62.88,
      "finishTimestamp": 67.4
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
      "finishTime": 5.34,
      "dialogue": {
        "text": "If integration is crucial, you might have to do some extra work with Safeguard.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 5.84
    }
  ]
}
```
