---
id: 587d7fae367417b2b2512be3
title: احصل على JSON مع طريقة JavaScript XMLHttpRequest
challengeType: 6
forumTopicId: 301502
dashedName: get-json-with-the-javascript-xmlhttprequest-method
---

# --description--

You can also request data from an external source. This is where APIs come into play.

تذكر أن APIs - أو واجهات برمجة التطبيقات - هي أدوات تستخدمها أجهزة الكمبيوتر للتواصل مع بعضها البعض. ستتعلم كيفية تحديث HTML مع البيانات التي نحصل عليها من APIs باستخدام تقنية تسمى AJAX.

معظم واجهات برمجة تطبيقات الويب تنقل البيانات بتنسيق يسمى JSON. JSON ترمز إلى JavaScript Object Notation.

يبدو بناء الجملة JSON شبيهاً جداً بالمعنى الحرفي لكائن JavaScript. لدى JSON خصائص الكائن وقيمتهم الحالية، مدمجة بين `{` و `}`.

وغالباً ما يشار إلى هذه الخصائص وقيمها باسم "key-value pairs".

ومع ذلك، فإن JSON التي تم إرسالها بواسطة APIs يتم إرسالها كبايتس `bytes`، ويتلقاها تطبيقك كمقطع نصي `string`. يمكن تحويل هذه الكائنات إلى JavaScript objects، لكنها ليست كائنات JavaScript من البداية. طريقة `JSON.parse` تحلل المقطع النصي وتبني كائن JavaScript الذي وصفه.

يمكنك طلب JSON من freeCodeCamp's Cat Photo API. إليك الكود الذي يمكنك وضعه في حدث النقر (click event) الخاص بك للقيام بما يلي:

```js
const req = new XMLHttpRequest();
req.open("GET",'/json/cats.json',true);
req.send();
req.onload = function(){
  const json = JSON.parse(req.responseText);
  document.getElementsByClassName('message')[0].innerHTML = JSON.stringify(json);
};
```

ها هي مراجعة لما تفعله كل قطعة. لدى كائن `XMLHttpRequest` في JavaScript عدد من الخصائص والطرق المستخدمة لنقل البيانات. أولا، تم إنشاء كائن `XMLHttpRequest` وحفظه في متغير `req`. بعد ذلك، طريقة `open` تهيئ الطلب - هذا المثال طلب بيانات من API، لذلك هو طلب نوعه `GET`. يكون المعطى الثاني في `open` عنوان (URL) الواجهة (API) التي تطلب البيانات منها. المعطى الثالثة قيمة منطقية حيث `true` تجعلها طلباً متزامنًا (asynchronous request). طريقة `send` ترسل الطلب. وأخيرا، فإن معالج الحدث `onload` يحلل البيانات التي تم إرجاعها ويطبق الطريقة `JSON.stringify` لتحويل كائن JavaScript إلى مقطع نصي. ثم تدرج هذا المقطع كنص الرسالة.

# --instructions--

قم بتحديث الكود لإنشاء وإرسال طلب `GET` إلى واجهة freeCodeCamp Cat Photo API. ثم انقر فوق زر `Get Message`. ستستبدل وظيفة AJAX الخاصة بك النص `The message will go here` بالإخراج JSON الخام من API.

# --hints--

الكود الخاص بك يجب أن ينشئ `XMLHttpRequest` جديد.

```js
assert(code.match(/new\s+?XMLHttpRequest\(\s*?\)/g));
```

يجب أن يستخدم الكود الخاص بك طريقة `open` لتهيئة طلب `GET` إلى freeCodeCamp Cat Photo API.

```js
assert(
  code.match(
    /\.open\(\s*?('|")GET\1\s*?,\s*?('|")\/json\/cats\.json\2\s*?,\s*?true\s*?\)/g
  )
);
```

يجب أن يستخدم الكود الخاص بك طريقة `send` لإرسال الطلب.

```js
assert(code.match(/\.send\(\s*\)/g));
```

يجب أن يكون الكود الخاص بك عيَّن معالج الحدث `onload` إلى وظيفة.

```js
assert(
  code.match(/\.onload\s*=\s*(function|\(\s*?\))\s*?(\(\s*?\)|\=\>)\s*?{/g)
);
```

يجب أن تستخدم الكود الخاص بك طريقة `JSON.parse` لتحليل `responseText`.

```js
assert(code.match(/JSON\s*\.parse\(\s*.*\.responseText\s*\)/g));
```

يجب أن يحصل الكود على العنصر الذي له فئة `message` وأن تغير inner HTML إلى مقطع نصي من بيانات JSON.

```js
assert(
  code.match(
    /document\s*\.getElementsByClassName\(\s*?('|")message\1\s*?\)\[0\]\s*\.innerHTML\s*?=\s*?JSON\.stringify\(.+?\)/g
  )
);
```

# --seed--

## --seed-contents--

```html
<script>
  document.addEventListener('DOMContentLoaded', function(){
    document.getElementById('getMessage').onclick = function(){
      // Add your code below this line


      // Add your code above this line
    };
  });
</script>

<style>
  body {
    text-align: center;
    font-family: "Helvetica", sans-serif;
  }
  h1 {
    font-size: 2em;
    font-weight: bold;
  }
  .box {
    border-radius: 5px;
    background-color: #eee;
    padding: 20px 5px;
  }
  button {
    color: white;
    background-color: #4791d0;
    border-radius: 5px;
    border: 1px solid #4791d0;
    padding: 5px 10px 8px 10px;
  }
  button:hover {
    background-color: #0F5897;
    border: 1px solid #0F5897;
  }
</style>

<h1>Cat Photo Finder</h1>
<p class="message box">
  The message will go here
</p>
<p>
  <button id="getMessage">
    Get Message
  </button>
</p>
```

# --solutions--

```html
<script>
  document.addEventListener('DOMContentLoaded',function(){
    document.getElementById('getMessage').onclick = function(){
      const req = new XMLHttpRequest();
      req.open('GET', '/json/cats.json', true);
      req.send();
      req.onload = () => {
        const json = JSON.parse(req.responseText);
        document.getElementsByClassName('message')[0].innerHTML = JSON.stringify(json);
      };
    };
  });
</script>

<style>
  body {
    text-align: center;
    font-family: "Helvetica", sans-serif;
  }
  h1 {
    font-size: 2em;
    font-weight: bold;
  }
  .box {
    border-radius: 5px;
    background-color: #eee;
    padding: 20px 5px;
  }
  button {
    color: white;
    background-color: #4791d0;
    border-radius: 5px;
    border: 1px solid #4791d0;
    padding: 5px 10px 8px 10px;
  }
  button:hover {
    background-color: #0F5897;
    border: 1px solid #0F5897;
  }
</style>

<h1>Cat Photo Finder</h1>
<p class="message box">
  The message will go here
</p>
<p>
  <button id="getMessage">
    Get Message
  </button>
</p>
```
