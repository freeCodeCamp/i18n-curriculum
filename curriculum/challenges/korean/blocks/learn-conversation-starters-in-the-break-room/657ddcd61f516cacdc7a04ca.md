---
id: 657ddcd61f516cacdc7a04ca
title: 도전 과제 128
challengeType: 19
dashedName: task-128
lang: en-US
---

<!-- (audio) Maria: The bookstores I remember are all downtown. But there's a bus that stops two blocks away. -->

# --description--

Maria가 Tom에게 대중교통 수단에 대해 알려주며, 특히 가까운 곳에 정차하는 교통편을 언급합니다. 이는 도보로 갈 수 없는 곳을 포함해 도시 내 이동에 중요합니다.

`Two blocks away`는 목적지까지 두 개의 거리 모퉁이를 지나 걸어야 한다는 뜻입니다. 도심에서 짧은 거리입니다.

`Downtown`는 상점, 식당이 많고 보통 높은 건물이 있는 도시의 중심지입니다.

# --questions--

## --text--

Maria가 두 블록 떨어진 곳에 정차한다고 말한 것은 무엇인가요?

## --answers--

택시

### --feedback--

Maria는 개인 서비스가 아닌 대중교통 수단을 언급했습니다.

---

기차

### --feedback--

기차는 보통 블록 단위가 아닌 역에 정차합니다.

---

버스

---

자전거 대여

### --feedback--

대여 서비스는 보통 고정된 장소에 있으며, 정차하는 개념이 아닙니다.

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 37.92,
      "finishTimestamp": 42.38
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
      "finishTime": 5.46,
      "dialogue": {
        "text": "The bookstores I remember are all downtown. But there's a bus that stops two blocks away.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.96
    }
  ]
}
```
