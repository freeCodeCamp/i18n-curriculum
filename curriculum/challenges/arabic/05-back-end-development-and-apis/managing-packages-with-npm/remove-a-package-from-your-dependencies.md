---
id: 587d7fb5367417b2b2512c04
title: إزالة حزمة (Package) من تبعياتك (Dependency)
challengeType: 2
forumTopicId: 301530
dashedName: remove-a-package-from-your-dependencies
---

# --description--

You have now tested a few ways you can manage dependencies of your project by using the package.json's dependencies section. You have also included external packages by adding them to the file and even told npm what types of versions you want, by using special characters such as the tilde or the caret.

ولكن ماذا لو أردت إزالة حزمة خارجية لم تعد بحاجة إليها؟ ربما قد خمنتها فعلًا، عليك فقط أن تزيل زوج key-value المقابل لتلك الحزمة من تبعياتك (dependencies).

تنطبق نفس الطريقة على إزالة الخانات الأخرى في package.json أيضا.

# --instructions--

أزل حزمة `@freecodecamp/example` من تبعياتك.

**ملاحظة:** تأكد من أن لديك العدد الصحيح من الفواصل بعد إزالتها.

# --hints--

يجب ألا تتضمن `"dependencies"` مقطع `"@freecodecamp/example"`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.notProperty(
        packJson.dependencies,
        '@freecodecamp/example',
        '"dependencies" still includes "@freecodecamp/example"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

