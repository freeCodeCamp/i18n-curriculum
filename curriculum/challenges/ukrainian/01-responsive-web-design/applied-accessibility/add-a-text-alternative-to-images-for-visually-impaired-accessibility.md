---
id: 587d774c367417b2b2512a9c
title: Додайте альтернативний текст до зображень для людей з вадами зору
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp7VfD'
forumTopicId: 16628
dashedName: add-a-text-alternative-to-images-for-visually-impaired-accessibility
---

# --description--

You've likely seen an `alt` attribute on an `img` tag in other challenges. `alt` text describes the image's content and provides a text-alternative for it. An `alt` attribute helps in cases where the image fails to load or can't be seen by a user. Search engines also use it to understand what an image contains to include it in search results. Ось приклад:

```html
<img src="importantLogo.jpeg" alt="Company logo">
```

Люди з вадами зору використовують зчитувачі екрану, що перетворюють контент сайту в аудіо формат. Вони не отримають інформацію, якщо вона подана тільки візуально. Що стосується зображень, програма зчитування з екрану може мати доступ до атрибуту `alt` і зчитувати їхній вміст, щоб передати ключову інформацію.

Якісний текст атрибуту `alt` надає програмі зчитування з екрану короткий опис зображення. Завжди додавайте атрибут `alt` до вашого зображення. Згідно зі специфікаціями HTML5, наразі це вважається обов'язковим.

# --instructions--

Кіт Кампер є одночасно ніндзя-кодувальником і справжнім ніндзя, який створює сайт, щоб поділитися знаннями. Фото профілю, яке він використовує, відображає його навички, тож усім відвідувачам сайту слід його цінувати. Додайте атрибут `alt` в тег `img`, який пояснює, що Кіт Кампер займається карате. (Зображення `src` не має посилання на існуючий файл, тож ви маєте побачити текст `alt` на дисплеї.)

# --hints--

Ваш теґ `img` повинен містити атрибут `alt` і не має бути порожнім.

```js
assert.isNotEmpty(document.querySelector('img')?.getAttribute('alt'));
```

# --seed--

## --seed-contents--

```html
<img src="doingKarateWow.jpeg">
```

# --solutions--

```html
<img src="doingKarateWow.jpeg" alt="Someone doing karate">
```
