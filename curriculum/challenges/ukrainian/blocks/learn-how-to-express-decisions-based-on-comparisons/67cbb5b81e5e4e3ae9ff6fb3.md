---
id: 67cbb5b81e5e4e3ae9ff6fb3
title: Завдання 42
challengeType: 19
dashedName: task-42
lang: en-US
---

<!-- (audio) Jake: If integration is crucial, you might have to do some extra work with SafeGuard. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що має на увазі Джейк?

## --answers--

SafeGuard легко інтегрувати з іншими інструментами.
  
### --feedback--

Те, що каже Джейк, натякає, що це не так просто.

---

SafeGuard коштує дорожче при інтеграції.

### --feedback--

Джейк не згадує про вартість.

---

Інтеграція з SafeGuard може вимагати додаткових зусиль.

---

SafeGuard не є гнучким у плані інтеграції.

### --feedback--

Джейк не говорить про гнучкість, а зосереджується на необхідності додаткової роботи.

## --video-solution--

3

# --explanation--

`Extra work` означає додаткові зусилля або час, необхідні для досягнення мети.

Джейк пропонує, що `if integration is crucial` (дуже важливо), Софі може стикнутися з труднощами з SafeGuard, і тому для інтеграції з іншими платформами знадобиться додаткова робота або зусилля.

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
