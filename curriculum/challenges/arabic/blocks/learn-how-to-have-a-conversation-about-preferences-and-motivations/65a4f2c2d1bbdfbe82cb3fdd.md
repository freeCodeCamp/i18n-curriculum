---
id: 65a4f2c2d1bbdfbe82cb3fdd
title: المهمة 94
challengeType: 22
dashedName: task-94
lang: en-US
---

<!-- (Audio) Bob: Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets! -->

# --description--

يشير مصطلح `gadget` إلى أداة أو جهاز صغير، غالبًا ما يكون ذكيًا أو مبتكرًا، يؤدي دالة محددة أو يجعل شيئًا ما أسهل.

في مجال التقنية، يمكن أن تشمل الأجهزة الذكية أشياء مثل الهواتف الذكية، الساعات الذكية، أو أي جهاز إلكتروني مبتكر ورائع.

على سبيل المثال: `My new fitness tracker gadget helps me keep track of my steps and exercise.`

# --fillInTheBlank--

## --sentence--

`Hey, Sarah, do you know what really BLANK me excited about tech? It's all BLANK amazing BLANK!`

## --blanks--

`gets`

### --feedback--

تعني هذه الكلمة أن شيئًا ما يسبب شعورًا أو رد فعل. هنا، تُستخدم للحديث عن ما يثير حماس بوب تجاه التقنية. الكلمة مصرفة مع الفاعل المفرد الغائب.

---

`those`

### --feedback--

تُستخدم هذه الكلمة للإشارة إلى أشياء محددة يجري الحديث عنها، وفي هذه الحالة الأجهزة الذكية. جمع كلمة `that`.

---

`gadgets`

### --feedback--

تشير هذه الكلمة إلى أجهزة أو أدوات إلكترونية صغيرة مفيدة أو مثيرة للاهتمام. غالبًا ما تُستخدم عند الحديث عن منتجات تقنية رائعة. الكلمة بصيغة الجمع.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 6.08
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 7.08,
      "dialogue": {
        "text": "Hey, Sarah, do you know what really gets me excited about tech? It's all those amazing gadgets.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.58
    }
  ]
}
```
