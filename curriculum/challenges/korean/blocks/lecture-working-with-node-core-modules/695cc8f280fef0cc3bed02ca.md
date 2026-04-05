---
id: 695cc8f280fef0cc3bed02ca
title: 경로 모듈이란 무엇이며 어떻게 작동하나요?
challengeType: 19
dashedName: what-is-the-path-module-and-how-does-it-work
---

# --description--

Node.js `path` 모듈은 파일과 디렉터리 경로를 다룰 수 있게 해줍니다. 이 모듈은 서로 다른 플랫폼과 운영체제에서 디렉터리를 연결, 표준화, 해결하는 등 디렉터리를 처리하고 변환하는 데 유용한 여러 메서드를 제공합니다.

`path` 모듈을 사용하려면 다음과 같이 가져오세요:

```js
const path = require("path");
```

`path` 모듈이 제공하는 몇 가지 메서드와 그 작동 방식을 살펴보겠습니다.

먼저, Node.js 전역 변수인 `__filename`와 `__dirname`, 즉 "common JS" 변수를 알아두세요. 이 변수들은 `path` 모듈 없이 접근할 수 있어서 전역 변수라고 부릅니다.

`__filename`는 현재 파일의 절대 경로이고 `__dirname`는 현재 파일이 포함된 디렉터리의 절대 경로입니다.

예를 들어, 제가 작업 중인 `script.js` 파일이 있습니다. 두 메서드가 반환하는 값은 다음과 같습니다:

```js
console.log(__filename);
// /Users/user/Desktop/fCC/script-code/node/node-path/script.js

console.log(__dirname);
// /Users/user/Desktop/fCC/script-code/node/node-path
```

상대 경로와 절대 경로도 알아두세요.

상대 경로는 현재 작업 디렉터리를 기준으로 파일이나 폴더를 가리킵니다. 예를 들어, `./assets/src/text-files`입니다.

반면 절대 경로는 시스템의 루트부터 시작하는 파일이나 폴더의 전체 주소를 제공합니다. 예를 들어 `/Users/johndoe/projects/app/assets/src/text-files.`입니다.

`basename()` 메서드는 파일의 마지막 부분, 즉 파일 이름을 보여줍니다:

```js
console.log(path.basename(__filename)); // script.js
```

`dirname()`는 경로의 디렉터리 이름을 반환합니다:

```js
console.log(path.dirname(__dirname)); // node-path
```

`extname()`는 현재 파일의 확장자를 반환합니다:

```js
console.log(path.extname(__filename)); // .js
```

다른 파일의 확장자를 반환하도록 지정할 수도 있습니다:

```js
console.log(path.extname('text-files/text1.txt')); // .txt
```

`join()` 메서드는 전달한 모든 경로 세그먼트를 하나의 깔끔하고 표준화된 경로로 연결합니다.

이것은 서로 다른 폴더에 있는 관련 파일들을 병합하여 함께 작업할 때 유용할 수 있습니다:

```js
const joinedPath = path.join("src", "assets", "text-files");
console.log(joinedPath); // src/assets/text-files
```

Windows는 디렉터리를 구분할 때 역슬래시를 사용하므로 결과는 `src\assets\text-files`가 됩니다.

또한 `join()` 메서드는 잘못된 슬래시를 자동으로 고치고 불필요한 슬래시를 제거합니다:

```js
const wrongPath = path.join("/src//", "assets", "text-files");
console.log(wrongPath); // /src/assets/text-files
```

`resolve()` 메서드는 경로 세그먼트 수열을 절대 경로로 변환합니다. 현재 작업 디렉터리에서 시작해 장치 내 정확한 위치를 가리키는 전체 경로를 만듭니다:

```js
const absolutePath = path.resolve("assets", "src", "text-files");
console.log(absolutePath);
// /Users/user/Desktop/fCC/script-code/node/node-path/assets/src/text-files
```

`join()`와 `resolve()`의 차이는 `join()`이 상대 경로를 만들고 `resolve()`이 절대 경로를 반환한다는 점입니다.

마지막으로 `parse()`와 `format()` 메서드가 있습니다.

`parse()`는 디렉터리나 파일을 받아 시스템 루트, 디렉터리, 확장자, 파일 이름 등 그 구성 요소를 포함하는 객체를 반환합니다:

```js
const parsedFile = path.parse(__filename);

console.log(parsedFile);
/*
{
 root: '/',
 dir: '/Users/user/Desktop/fCC/script-code/node/node-path',
 base: 'script.js',
 ext: '.js',
 name: 'script'
}
*/
```

반면 `format()`는 디렉터리, 이름, 확장자를 포함하는 객체에서 경로를 만듭니다:

```js
const formattedDirectory = path.format({
  dir: "/users/johndoe/docs",
  name: "file",
  ext: ".txt",
});

console.log(formattedDirectory); // /users/johndoe/docs/file.txt
```

# --questions--

## --text--

Node.js에서 `path.dirname()`와 `path.extname()`의 차이는 무엇인가요?

## --answers--

`dirname()`는 파일 확장자를 제거하고 `extname()`는 디렉터리 이름을 제거합니다.

### --feedback--

어떤 메서드가 디렉터리를 다루고 어떤 메서드가 파일 확장자를 다루는지 집중하세요.

---

`dirname()`는 전체 파일 경로를 반환하고 `extname()`는 디렉터리 이름을 반환합니다.

### --feedback--

어떤 메서드가 디렉터리를 다루고 어떤 메서드가 파일 확장자를 다루는지 집중하세요.

---

`dirname()`는 경로의 디렉터리 이름을 반환하고 `extname()`는 파일 확장자를 반환합니다.

---

`dirname()`와 `extname()`는 모두 같은 값을 반환하지만 서로 다른 형식입니다.

### --feedback--

어떤 메서드가 디렉터리를 다루고 어떤 메서드가 파일 확장자를 다루는지 집중하세요.

## --video-solution--

3

## --text--

디렉터리, 이름, 확장자 프로퍼티를 포함하는 객체에서 완전한 파일 경로를 만드는 `path` 메서드는 무엇인가요?

## --answers--

`path.parse()`

### --feedback--

`parse()`의 반대 기능이 무엇인지 생각하세요.

---

`path.format()`

---

`path.resolve()`

### --feedback--

`parse()`의 반대 기능이 무엇인지 생각하세요.

---

`path.join()`

### --feedback--

`parse()`의 반대 기능이 무엇인지 생각하세요.

## --video-solution--

2

## --text--

Node.js 전역 변수 `__filename`와 `__dirname`는 무엇에 접근할 수 있게 해주나요?

## --answers--

현재 파일의 절대 경로와 그 파일이 포함된 디렉터리입니다.

---

현재 모듈 이름과 그 의존성입니다.

### --feedback--

path 모듈을 사용하지 않고도 전체 파일과 폴더 경로를 자동으로 제공하는 변수가 무엇인지 생각하세요.

---

Node.js 설치 디렉터리의 상대 경로입니다.

### --feedback--

path 모듈을 사용하지 않고도 전체 파일과 폴더 경로를 자동으로 제공하는 변수가 무엇인지 생각하세요.

---

실행 중인 웹 서버의 URL과 호스트 이름입니다.

### --feedback--

path 모듈을 사용하지 않고도 전체 파일과 폴더 경로를 자동으로 제공하는 변수가 무엇인지 생각하세요.

## --video-solution--

1
