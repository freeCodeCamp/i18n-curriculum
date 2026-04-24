---
id: 67caefddb5ddbc2cfc69bc6e
title: タスク 38
challengeType: 22
dashedName: task-38
lang: en-US
---

<!-- (audio) Jake: Not really. SafeGuard is more focused on security, so it might not integrate as easily with other platforms. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Not really. SafeGuard is BLANK security, so it might not integrate as easily with other platforms.`

## --blanks--

`more focused on`

### --feedback--

これら3つの単語は、SafeGuardが他の機能と比べてセキュリティを優先している、またはより重視していることを意味します。

# --explanation--

`More focused on` は、何かや誰かが最も注意を払っていることを示すために使われます。例えば：

`This software is more focused on performance than on design.` - これは、そのソフトウェアが魅力的なデザインではなく、主に高いパフォーマンスのために作られていることを意味します。

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
      "startTimestamp": 56.88,
      "finishTimestamp": 62.58
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
      "finishTime": 6.7,
      "dialogue": {
        "text": "Not really. Safeguard is more focused on security, so it might not integrate as easily with other platforms.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 7.2
    }
  ]
}
```
