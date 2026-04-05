---
id: 657b72cbdef32ec0b1a24afb
title: 작업 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (audio) Tom: Wow! Electric or acoustic? Sophie: Electric, for sure. -->

# --description--

기타의 여러 종류에 대해 들으면, 두 가지 흔한 유형이 나올 수 있습니다: `electric`와 `acoustic`.

`Electric guitars`는 보통 소리를 크게 내기 위해 앰프라는 것이 필요하지만, `acoustic guitars`는 추가 장비 없이도 들을 수 있습니다.

# --questions--

## --text--

소피가 선호하는 기타 종류는 무엇인가요?

## --answers--

Electric guitar

---

Acoustic guitar

### --feedback--

소피가 어떤 기타를 좋아하는지 아주 분명히 말합니다. 그녀가 선호하는 기타는 소리를 크게 내기 위해 앰프가 필요합니다.

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": { "x": 50, "y": 15, "z": 1.2 },
        "opacity": 0
      },
      {
        "character": "Sophie",
        "position": { "x": 50, "y": 0, "z": 1.4 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.52
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
      "startTime": 1.1,
      "finishTime": 3.1,
      "dialogue": {
        "text": "Wow! Electric or acoustic?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 3.2
    },
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 3.3
    },
    {
      "character": "Sophie",
      "startTime": 3.3,
      "finishTime": 5.12,
      "dialogue": {
        "text": "Electric, for sure.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.62
    }
  ]
}
```
