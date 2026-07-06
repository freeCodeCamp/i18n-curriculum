---
id: 6620102deeab45aeeffa84ac
title: المهمة 5
challengeType: 22
dashedName: task-5
lang: en-US
---

<!-- (Audio) Tom: She's a colleague with long wavy brown hair and bright brown eyes. -->

# --description--

عند وصف لون عيني شخص ما، تحددها عادةً أولاً حسب لونها. الألوان الشائعة للعيون هي `black`، و`brown`، و`blue`، و`green`. حسب اللون، قد تميل إلى `white` أو إلى `black` (أي أن اللون نفسه يكون أقوى أو أضعف). في هذه الحالة، يمكنك إضافة كلمتي `light` (تميل إلى `white`) و`dark` (تميل إلى `black`) قبل اللون للتعبير عنه. خاصية أخرى تستخدمها عادةً لتحديد عيون شخص آخر هي الشكل - `round` عندما تكون أقرب إلى دائرة و`narrow` عندما تكون أقرب إلى خط. أخيرًا، يمكنك الإشارة إليها من حيث الحجم، `large` (عندما تكون كبيرة) أو `small` (عندما لا تكون كذلك). كما يعبر توم عن رأيه، قائلاً إن عيني ليزا مليئتان بالطاقة والحيوية. في هذه الحالة، تقول إن عيني الشخص `bright`.

كما تفعل مع `hair`، تتبع الصفات التي تحدد عيون الشخص ترتيبًا في اللغة الإنجليزية. أولاً، تعبر عن هذا الرأي، ثم تنتقل إلى الحجم، ثم الشكل وأخيرًا اللون (سواء سبقته أو لم يسبقه `light` أو `dark`).

مثال: `Tom has beautiful, small, narrow, light green eyes.`

الآن استمع واملأ الفراغات بوصف توم لعيون ليزا.

# --fillInTheBlank--

## --sentence--

`She's a colleague with long wavy brown hair and BLANK BLANK eyes.`

## --blanks--

`bright`

### --feedback--

يعبر توم عن رأيه أولاً. يقول إن عيني ليزا مليئتان بالطاقة.

---

`brown`

### --feedback--

يتحدث توم أخيرًا عن لون عيني ليزا. إنه ظل قريب من `black`، وليس `blue` ولا `green`.

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
      }
    ],
    "audio": {
      "filename": "4.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 6.52,
      "finishTimestamp": 10.6
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
      "finishTime": 5.08,
      "dialogue": {
        "text": "She's a colleague with long wavy brown hair and bright brown eyes.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.58
    }
  ]
}
```
