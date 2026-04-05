---
id: 695cc8f280fef0cc3bed02cb
title: 프로세스 모듈이란 무엇이며 어떻게 작동하나요?
challengeType: 19
dashedName: what-is-the-process-module-and-how-does-it-work
---

# --description--

`process`는 가장 중요한 Node.js 코어 모듈 중 하나입니다. 현재 Node.js 프로세스에 관한 정보를 접근할 수 있게 해주며, 애플리케이션이 실행되는 동안 이를 제어할 수 있게 합니다.

터미널에서 `node script.js` 같은 명령어를 실행하면, Node.js는 프로세스를 시작하는데, 이 프로세스는 `script.js` 파일을 실행하는 Node 프로그램의 실행 인스턴스입니다. 이 프로세스는 자체 메모리, 환경, 실행 컨텍스트를 가집니다.

현재 프로세스는 `process` 모듈을 통해 전역으로 노출되어 있어서, 가져오지 않아도 됩니다. Node.js가 설치되어 있다면 어디서든 호출할 수 있습니다.

`process` 모듈은 현재 실행 컨텍스트에 관한 특정 정보를 얻을 수 있는 속성과 메서드를 노출합니다.

`process.env`는 Node가 실행 중인 현재 환경에 관한 정보를 제공합니다. 항상 많은 매개변수를 가진 거대한 객체를 반환하므로, 가장 중요한 정보를 직접 접근하는 방법은 다음과 같습니다:

```js
// Gets all environment variables available to the current Node.js process
console.log(process.env);

// Gets the current Node.js environment mode (like 'development' or 'production')
console.log(process.env.NODE_ENV); // development

// Gets the path of the shell program running the Node.js process
console.log(process.env.SHELL); // /bin/bash

// Gets the system PATH variable where executables are searched for
console.log(process.env.PATH); // /usr/local/bin:/usr/bin:/bin

// Gets the present working directory from where the process was started
console.log(process.env.PWD); // /Users/johndoe/projects/myapp

// Gets the username of the user running the current process
console.log(process.env.USER); // johndoe
```

`process.argv`는 명령줄 인수를 읽을 수 있게 해줍니다:

```js
console.log(process.argv);
/*
script.js --watch
Hello world
[
  '/Users/user/.nvm/versions/node/v22.17.0/bin/node',
  '/Users/user/Desktop/fCC/script-code/node/node-process/script.js',
  '--watch'
]
*/
```

`cwd()` 메서드는 현재 작업 디렉터리를 보여줍니다:

```js
console.log(process.cwd());
```

프로세스 이벤트는 Node.js의 핵심 기능으로, 애플리케이션이 종료 직전, 오류 발생 시, 시스템 신호를 받을 때 등 중요한 생명주기 순간에 반응할 수 있게 합니다.

예를 들어 `exit` 이벤트는 Node.js 프로세스가 종료되기 직전에 실행됩니다:

```js
process.on("exit", (code) => {
  console.log(`Process exiting with code: ${code}`);
});

// Process exiting with code: 0
```

`uncaughtException` 이벤트는 코드에서 잡히지 않은 오류가 발생했을 때 트리거되어, 충돌을 방지하는 데 도움을 줍니다:

```js
process.on("uncaughtException", (err) => {
  console.error("Uncaught error:", err.message);
});
```

마지막으로 `warning` 이벤트는 Node.js가 프로세스 경고를 발생시킬 때 트리거됩니다:

```js
process.on("warning", (warning) => {
  console.warn("Warning name:", warning.name);
  console.warn("Warning message:", warning.message);
});
```

그다음 `emitWarning()` 메서드를 사용해 사용자 정의 경고를 발생시킬 수 있습니다:

```js
// Example warning with the emitWarning() method
process.emitWarning('This is a custom warning message', 'CustomWarning');

/*
  Warning name: CustomWarning
  Warning message: This is a custom warning message
*/
```

# --questions--

## --text--

`process.emitWarning()` 메서드는 무엇을 하나요?

## --answers--

사용자 정의 경고가 발생할 때 프로세스를 정지합니다.

### --feedback--

Node.js가 이벤트를 통해 사용자 정의 경고를 어떻게 처리하는지 생각해보세요.

---

사용자 정의 경고 이벤트를 발생시켜 경고 리스너가 처리할 수 있게 합니다.

---

오류를 기록하고 즉시 프로세스를 종료합니다.

### --feedback--

Node.js가 이벤트를 통해 사용자 정의 경고를 어떻게 처리하는지 생각해보세요.

---

경고를 표시한 후 Node.js 프로세스를 재시작합니다.

### --feedback--

Node.js가 이벤트를 통해 사용자 정의 경고를 어떻게 처리하는지 생각해보세요.

## --video-solution--

2

## --text--

프로세스 모듈은 어떻게 사용하나요?

## --answers--

전역 객체이므로 직접 호출해서 사용합니다.

---

Node.js 설정 파일에서 활성화해야 합니다.

### --feedback--

프로세스에 어디서든 설정 없이 접근할 수 있는 이유를 생각해보세요.

---

호출하기 전에 npm으로 수동 설치해야 합니다.

### --feedback--

프로세스에 어디서든 설정 없이 접근할 수 있는 이유를 생각해보세요.

---

사용할 때마다 require('process')로 가져와야 합니다.

### --feedback--

프로세스에 어디서든 설정 없이 접근할 수 있는 이유를 생각해보세요.

## --video-solution--

1

## --text--

프로세스 이벤트는 무엇에 사용되나요?

## --answers--

애플리케이션의 환경 변수를 정의하기 위해서입니다.

### --feedback--

Node.js가 실행 중 생명주기 변화에 어떻게 반응하는지 생각해보세요.

---

병렬 실행을 위해 새 프로세스를 생성하기 위해서입니다.

### --feedback--

Node.js가 실행 중 생명주기 변화에 어떻게 반응하는지 생각해보세요.

---

종료, 오류, 시스템 신호 같은 중요한 생명주기 순간을 듣고 반응하기 위해서입니다.

---

시스템에서 파일 경로와 확장자를 관리하기 위해서입니다.

### --feedback--

Node.js가 실행 중 생명주기 변화에 어떻게 반응하는지 생각해보세요.

## --video-solution--

3
