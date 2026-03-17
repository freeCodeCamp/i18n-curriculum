---
id: 657fff0bfb6a28f1d70fa9ef
title: Завдання 80
challengeType: 22
dashedName: task-80
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

`I appreciate it, but...` використовується, щоб висловити подяку за пропозицію або жест, водночас ввічливо відмовляючись або зазначаючи особисте обмеження чи вподобання.

Наприклад, якщо ваш друг пропонує допомогти вам із завданням з програмування, і ви вдячні, але хочете спробувати самостійно, ви можете сказати `I appreciate it, but I want to give it a shot by myself first`.

# --fillInTheBlank--

## --sentence--

`Thanks for the invite, Sarah. I BLANK it, BLANK I'm not really into sci-fi.`

## --blanks--

`appreciate`

### --feedback--

Це слово часто використовують, щоб показати вдячність або подяку.

---

`but`

### --feedback--

Це слово використовується для введення фрази або умови, що протиставляється тому, що вже було сказано.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
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
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
