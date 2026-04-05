---
id: 67d301cc87b84eaa42bdcdbe
title: tsconfig 파일이란 무엇이며 TypeScript 프로젝트에 포함하는 것이 왜 중요한가요?
challengeType: 19
dashedName: what-is-a-tsconfig-file-and-why-is-it-important-to-include-in-your-typescript-projects
---

# --description--

TypeScript 컴파일러 설정은 프로젝트 요구에 맞게 구성할 수 있습니다. 이 구성은 프로젝트 루트 디렉터리에 있는 `tsconfig.json` 파일에 저장됩니다. 사실, 이 파일이 없으면 컴파일러는 명령어 플래그를 직접 전달하지 않는 한 실행되지 않습니다. 그렇다면 이 파일은 정확히 무엇을 할까요? 예시 파일을 살펴보겠습니다:

```json
{
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./prod",
    "lib": ["ES2023"],
    "target": "ES2023",
    "module": "ES2022",
    "moduleResolution": "Node",
    "esModuleInterop": true,
    "skipLibCheck": true,
    "strict": true
  },
  "exclude": ["test/"]
}
```

내용이 꽤 많아 보이네요! 하나씩 살펴보겠습니다. `compilerOptions` 속성은 구성의 핵심 부분을 담고 있습니다 - 여기서 TypeScript 컴파일러의 동작 방식을 제어합니다. 중첩된 객체를 보면…

`rootDir`와 `outDir`는 TypeScript에 소스 파일이 있는 디렉터리와 트랜스파일된 JavaScript 코드가 들어갈 디렉터리를 알려줍니다.

`lib` 속성은 컴파일러가 사용할 타입 정의를 결정하며, 특정 ES 버전, DOM 등 지원을 포함할 수 있게 합니다.

`module`와 `moduleResolution`는 모듈 사용 방식을 관리하는 데 함께 작동합니다 - CommonJS 또는 ECMAScript 중 하나를 선택합니다.

`esModuleInterop`은 CommonJS와 ES 모듈 간의 원활한 상호 운용성을 지원하는데, import에 대해 네임스페이스 객체를 자동 생성하여 서로 다른 시스템의 모듈을 TypeScript 프로젝트에서 쉽게 사용할 수 있게 합니다. `skipLibCheck` 옵션은 코드에서 import로 참조되지 않는 `.d.ts` 파일의 검증을 건너뜁니다.

마지막으로 `strict` 모드에 도달합니다. 이 플래그가 활성화되지 않으면 TypeScript가 진정으로 유용하지 않다고 주장할 수 있는데, nullable 타입을 제대로 처리하도록 요구하거나 TypeScript가 타입을 추론하지 못해 any로 대체할 때 경고하는 등 여러 검사를 켭니다.

마지막으로 최상위 `exclude` 속성에 대해 간단히 언급하겠습니다 - 소스 디렉터리를 정의했을 때, 그 디렉터리 밖에 있지만 프로덕션 코드로 컴파일하고 싶지 않은 TypeScript 코드가 있을 수 있습니다. 예를 들어 테스트 코드가 그렇습니다. `exclude` 배열은 컴파일러가 이 TypeScript 파일들을 컴파일에서 무시하도록 지시하지만, Intellisense 같은 도구가 잠재적 문제를 노출하는 것은 허용합니다.

탐색할 수 있는 컴파일러 옵션이 50개 이상이나 많습니다! 문서를 참고하고 실험해 보면서 프로젝트 요구에 맞는 구성을 찾아보세요.

# --questions--

## --text--

`tsconfig.json` 파일에서 컴파일러 동작에 영향을 주는 속성은 무엇인가요?

## --answers--

`rootDir`

### --feedback--

이 속성은 컴파일러 옵션을 담은 객체입니다.

---

`compilerOptions`

---

`exclude`

### --feedback--

이 속성은 컴파일러 옵션을 담은 객체입니다.

---

`lib`

### --feedback--

이 속성은 컴파일러 옵션을 담은 객체입니다.

## --video-solution--

2

## --text--

`strict` 옵션이 `tsconfig.json` 파일에서 하는 역할은 무엇인가요?

## --answers--

nullable 타입만 검사합니다.

### --feedback--

이 옵션은 nullable 타입 처리 등 다양한 검사를 활성화합니다.

---

CommonJS 모듈 사용을 강제합니다.

### --feedback--

이 옵션은 nullable 타입 처리 등 다양한 검사를 활성화합니다.

---

여러 타입 검사 옵션을 전환합니다.

---

테스트 파일을 컴파일에서 제외합니다.

### --feedback--

이 옵션은 nullable 타입 처리 등 다양한 검사를 활성화합니다.

## --video-solution--

3

## --text--

`exclude` 배열이 `tsconfig.json` 파일에서 하는 목적은 무엇인가요?

## --answers--

컴파일할 파일을 지정합니다.

### --feedback--

테스트 코드를 컴파일에서 제외할 때 사용할 수 있습니다.

---

추가로 포함할 라이브러리를 나열합니다.

### --feedback--

테스트 코드를 컴파일에서 제외할 때 사용할 수 있습니다.

---

컴파일 중 특정 파일을 무시합니다.

---

컴파일된 파일의 출력 디렉터리를 정의합니다.

### --feedback--

테스트 코드를 컴파일에서 제외할 때 사용할 수 있습니다.

## --video-solution--

3
