---
id: 6710e0e2cafeeb09e6cb2d8f
title: タスク 55
challengeType: 22
dashedName: task-55
lang: en-US
---

<!-- (Audio) Linda: Well, during the project, I was working closely with the development team, and we were constantly updating the user interface based on user feedback. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Well, during the project, I BLANK BLANK closely with the development team, and we BLANK constantly BLANK the user interface based on user feedback.`

## --blanks--

`was`

### --feedback--

これは単数の一人称で`Past Continuous`を作るために使われる助動詞です。

---

`working`

### --feedback--

これは`Past Continuous`の主動詞で、労働する行為を表しています。

---

`were`

### --feedback--

これは複数の一人称で`Past Continuous`を作るために使われる助動詞です。

---

`updating`

### --feedback--

これは`Past Continuous`の主動詞で、何かを改善または近代化している継続的な行動を表しています。

# --explanation--

`Past Continuous`時制は、過去の特定の時点で継続していた行動を表すために使われます。2つの`Past Continuous`文が一緒に使われる場合、それらは同時に起こっている行動や並行している行動を表すことが多いです。

この文では、リンダが自分とチームがプロジェクトの間ずっと働きながらユーザーインターフェースを継続的に更新していたことを説明しています。これは過去に同時に起こっていた2つの行動を示し、お互いの背景や状況を提供しています。例えば：

`While I was preparing the report, they were testing the new features.` - これは、私がレポートを準備している行動と新機能のテストが同時に行われたことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_2-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.08,
      "finishTimestamp": 17.34
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
      "finishTime": 4.36,
      "dialogue": {
        "text": "Well, during the project, I was working closely with the development team,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.5,
      "finishTime": 8.26,
      "dialogue": {
        "text": "and we were constantly updating the user interface based on user feedback.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 8.76
    }
  ]
}
```
