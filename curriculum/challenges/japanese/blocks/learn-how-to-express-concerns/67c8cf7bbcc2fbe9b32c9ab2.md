---
id: 67c8cf7bbcc2fbe9b32c9ab2
title: タスク 92
challengeType: 19
dashedName: task-92
lang: en-US
---

<!-- (Audio) Maria: That's a good point. I'll suggest having more regular check-ins with the team to improve communication. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。  

# --questions--

## --text--

マリアはジェームズからのコメントをどうしますか？  

## --answers--

彼女はそれらを無視します。  

### --feedback--

マリアはジェームズの指摘を認め、行動を起こすつもりです。

---

彼女はチームにコミュニケーションを気にしないように伝えます。

### --feedback--

マリアは懸念を否定するのではなく、コミュニケーションを改善したいと考えています。 

---

彼女はチームの定期的なチェックインをキャンセルします。

### --feedback--

マリアはチェックインをキャンセルすると言っていません。

---

彼女はコミュニケーションを改善するために、より多くのチェックインを提案します。

## --video-solution--

4  

# --explanation--

動詞`suggest`を使う場合、動詞の不定詞ではなく`-ing`形を使います。例えば：

- `She suggested taking a break.` - これは提案されたアイデアが休憩を取ることを意味します。

- `He suggested starting the meeting earlier to avoid delays.` - これは彼が会議を早く始めることを提案したことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 57.14,
      "finishTimestamp": 61.36
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 2.9,
      "dialogue": {
        "text": "That's a good point. I'll suggest having more",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3,
      "finishTime": 5.22,
      "dialogue": {
        "text": "regular check-ins with the team to improve communication.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.72
    }
  ]
}
```
