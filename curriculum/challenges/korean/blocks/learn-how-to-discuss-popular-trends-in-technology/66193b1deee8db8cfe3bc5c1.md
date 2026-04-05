---
id: 66193b1deee8db8cfe3bc5c1
title: 작업 41
challengeType: 19
dashedName: task-41
lang: en-US
---

<!-- (Audio) Tom: What other collaboration tools are there? Alice: Well, there are project management tools. They help teams to organize tasks. Also, cloud storage services make it easy to share and collaborate on documents. -->

# --description--

오디오를 듣고 질문에 답하세요.

# --questions--

## --text--

앨리스가 언급한 협업 도구는 무엇인가요?

## --answers--

`Project management tools` 그리고 `cloud storage services`

---

`The internet` 그리고 `computer networks`

### --feedback--

이것들은 오늘날 중요한 도구이지만, 앨리스가 언급한 도구는 아닙니다.

---

`Screwdrivers` 그리고 `hammers`

### --feedback--

이것들은 수동 도구이며 협업 도구가 아닙니다.

---

`Chat apps` 그리고 `email`

### --feedback--

이것들은 가상 환경에서 협업 도구로 볼 수 있지만, 앨리스는 언급하지 않았습니다.

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      },
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.2-2.mp3",
      "startTime": 1,
      "startTimestamp": 30.82,
      "finishTimestamp": 42.02
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.04,
      "dialogue": {
        "text": "What other collaboration tools are there?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 3.29
    },
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 3.29
    },
    {
      "character": "Alice",
      "startTime": 3.54,
      "finishTime": 7.46,
      "dialogue": {
        "text": "Well, there are project management tools. They help teams to organize tasks.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "startTime": 8.06,
      "finishTime": 12.2,
      "dialogue": {
        "text": "Also, cloud storage services make it easy to share and collaborate on documents.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 12.7
    }
  ]
}
```
