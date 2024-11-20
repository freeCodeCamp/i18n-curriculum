---
id: 5cddbfd622f1a59093ec611d
title: 모듈 스크립트 만들기
challengeType: 6
forumTopicId: 301198
dashedName: create-a-module-script
---

# --description--

자바스크립트는 주로 HTML 웹에서 작은 역할로 시작되었습니다. 오늘날, 자바스크립트는 대단히 커졌고, 일부 웹사이트는 거의 자바스크립트로만 구축되어 있습니다. 자바스크립트를 더 모듈화하고 깔끔하며 유지보수가 가능하게 만들기 위해 ES6는 자바스크립트 파일 간에 코드를 쉽게 공유할 수 있는 방법을 도입했습니다. 이 기능은 하나 이상의 다른 파일에서 사용할 파일의 일부를 내보내고 필요한 부분을 필요한 곳에서 가져오는 것을 포함합니다. 이 기능을 활용하려면 `type`이 `module`인 스크립트를 HTML 문서에 생성해야 합니다. 예제를 보면:

```html
<script type="module" src="filename.js"></script>
```

이 `module` 타입을 사용하는 스크립트는 이제 앞으로 배울 `import`와 `export` 기능을 사용할 수 있습니다.

# --instructions--

HTML 문서에 `module` 타입의 스크립트를 추가하고, 소스 파일로 `index.js`를 지정하세요.

# --hints--

`script` 태그를 생성해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/<\s*script[^>]*>\s*<\/\s*script\s*>/g));
```

`script` 태그는 `module` 값의 `type` 속성을 가져야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(
    /<\s*script\s+[^t]*type\s*=\s*('|")module\1[^>]*>\s*<\/\s*script\s*>/g
  )
);
```

`script` 태그는 `index.js`의 `src`를 가져야 합니다.

```js
assert(
  __helpers.removeJSComments(code).match(
    /<\s*script\s+[^s]*src\s*=\s*('|")index\.js\1[^>]*>\s*<\/\s*script\s*>/g
  )
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <!-- Only change code below this line -->

    <!-- Only change code above this line -->
  </body>
</html>
```

# --solutions--

```html
<html>
  <body>
    <script type="module" src="index.js"></script>
  </body>
</html>
```
