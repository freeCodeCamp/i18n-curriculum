---
id: 67aa23adedb02b11aaceda26
title: Завдання 8
challengeType: 19
dashedName: task-8
lang: en-US
---

<!-- (Audio) Anna: While furniture is important, many people mentioned that their computers need upgrades. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що є важливішим, за словами Анни?

## --answers--

Оновлення комп’ютерів.

---

Купівля нових офісних меблів.

### --feedback--

Анна визнає, що меблі важливі, але каже, що багато людей згадували про потребу в чомусь іншому.

---

Отримання більшої доплати за дистанційну роботу.

### --feedback--

Анна не говорить про збільшення доплати, лише про те, як люди хочуть її використовувати.

---

Зміна питань у опитуванні.

### --feedback--

Анна нічого не згадує про питання опитування.

## --video-solution--

1

# --explanation--

`computer upgrade` означає покращення комп’ютера шляхом додавання або заміни деталей, таких як більше пам’яті (RAM), швидший процесор або кращий екран. Наприклад:

- `I need a computer upgrade to run the latest software.` - Поточний комп’ютер мовця недостатньо потужний, тому їм потрібен кращий.

- `After the computer upgrade, everything runs much faster.` - Продуктивність системи покращилася після оновлення або заміни компонентів.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 12.06,
      "finishTimestamp": 15.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "While furniture is important, many people mentioned that their computers need upgrades.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
