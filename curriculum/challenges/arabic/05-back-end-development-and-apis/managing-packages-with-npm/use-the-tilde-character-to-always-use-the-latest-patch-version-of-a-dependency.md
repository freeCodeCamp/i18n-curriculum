---
id: 587d7fb5367417b2b2512c02
title: استخدم رمز Tilde لاستخدام أحدث نسخة patch من التبعية دائما
challengeType: 2
forumTopicId: 301532
dashedName: use-the-tilde-character-to-always-use-the-latest-patch-version-of-a-dependency
---

# --description--

In the last challenge, you told npm to only include a specific version of a package. That’s a useful way to freeze your dependencies if you need to make sure that different parts of your project stay compatible with each other. But in most use cases, you don’t want to miss bug fixes since they often include important security patches and (hopefully) don’t break things in doing so.

للسماح للتبعية npm للتحديث إلى أحدث إصدار PATCH، يمكنك أن تضيف رمز (`~`) في بداية الإصدار للتبعية. Here's an example of how to allow updates to any `1.3.x` version.

```json
"package": "~1.3.8"
```

# --instructions--

In the package.json file, your current rule for how npm may upgrade `@freecodecamp/example` is to use a specific version (`1.2.13`). But now, you want to allow the latest `1.2.x` version.

استخدم رمز (`~`) لبادئة رقم إصدار `@freecodecamp/example` في تبعياتك (dependencies). ذلك يسمح ل npm بتحديثها إلى أي إصدار _patch_ جديد.

**ملاحظة:** لا تغيير أرقام الإصدار نفسها.

# --hints--

يجب أن تتضمن `"dependencies"` مقطع `"@freecodecamp/example"`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.property(
        packJson.dependencies,
        '@freecodecamp/example',
        '"dependencies" does not include "@freecodecamp/example"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

يجب أن تطابق `"@freecodecamp/example"` إصدارها `"~1.2.13"`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.match(
        packJson.dependencies["@freecodecamp/example"],
        /^\~1\.2\.13/,
        'Wrong version of "@freecodecamp/example". It should be ~1.2.13'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

