---
id: 67efebdf734ad521ace8a89e
title: 작업 57
challengeType: 22
dashedName: task-57
lang: en-US
---

<!-- (audio) Jake: Sure, Jessica. It could be an unpatched vulnerability. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. It could be an BLANK.`

## --blanks--

`unpatched vulnerability`

### --feedback--

이 두 단어 구절은 수정이나 업데이트가 이루어지지 않아 악용될 수 있는 시스템의 보안 결함을 의미합니다.

# --explanation--

`Unpatched`는 무언가가 업데이트되거나 고쳐지지 않았다는 뜻입니다.

`Vulnerability`는 악용될 수 있는 시스템의 약점을 가리킵니다.

함께 쓰이면 `unpatched vulnerability`는 고쳐지거나 업데이트되지 않은 보안 약점을 뜻합니다. 해커들은 이러한 약점을 이용해 시스템을 공격할 수 있습니다. 예를 들어:

`We need to fix the unpatched vulnerability now.` - 팀은 보안 문제를 알고 있지만 아직 수리하지 않았습니다.

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
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 6.72,
      "finishTimestamp": 10.1
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
      "finishTime": 4.38,
      "dialogue": {
        "text": "Sure, Jessica. It could be an unpatched vulnerability.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
