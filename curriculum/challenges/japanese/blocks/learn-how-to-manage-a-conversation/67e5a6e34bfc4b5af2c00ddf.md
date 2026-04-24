---
id: 67e5a6e34bfc4b5af2c00ddf
title: タスク 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (Audio) Jessica: Well, we've discovered a critical bug that might affect the user interface. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Well, we've discovered a BLANK bug that might BLANK the user interface.`

## --blanks--

`critical`

### --feedback--

これは非常に深刻または重要であることを意味します。何かがすぐに対応を必要とするときによく使われます。

---

`affect`

### --feedback--

これは何かを変えたり影響を与えたりすることを意味します。あるものが別のものに変化をもたらす様子を表すことが多いです。

# --explanation--

`Critical` は非常に重要または深刻であることを意味します。例えば：

`We have a critical deadline tomorrow.` – これは締め切りが非常に重要で、絶対に逃せないことを意味します。

`To affect` は何かに影響を与えたり変化をもたらしたりすることを意味します。例えば：

`The new policy may affect employee performance.` – これは方針が従業員の働き方に影響を与えるかもしれないことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.12,
      "finishTimestamp": 13.52
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
      "finishTime": 2.72,
      "dialogue": {
        "text": "Well, we've discovered a critical bug",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.72,
      "finishTime": 4.4,
      "dialogue": {
        "text": "that might affect the user interface.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
