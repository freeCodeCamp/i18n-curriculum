---
id: 66f1adcf97e3e4c1bd89ebf5
title: 웹 성능 퀴즈
challengeType: 8
dashedName: quiz-web-performance
---

# --description--

퀴즈를 통과하려면 아래 20문제 중 최소 18문제를 올바르게 답해야 합니다.

# --quizzes--

## --quiz--

### --question--

#### --text--

웹 개발에서 실제 성능과 인지된 성능의 주요 차이점은 무엇인가요?

#### --distractors--

실제 성능은 브라우저가 수행하는 HTTP 요청 수에 집중하고, 인지된 성능은 CSS 렌더링 속도에 기반합니다.

---

실제 성능은 로드 시간만을 의미하고, 인지된 성능은 애니메이션과 로딩 표시 같은 시각적 요소와 관련됩니다.

---

실제 성능은 서버 측 처리 시간만 포함하고, 인지된 성능은 전적으로 클라이언트 측에 해당합니다.

#### --answer--

실제 성능은 콘텐츠가 얼마나 빨리 로드되는지이고, 인지된 성능은 사용자가 페이지가 얼마나 빨리 로드된다고 느끼는지입니다.

### --question--

#### --text--

웹 페이지에서 콘텐츠가 얼마나 빨리 나타나는지를 가장 잘 나타내는 지표는 무엇인가요?

#### --distractors--

Time to Interactive (TTI)

---

Page Load Time (PLT)

---

Last Contentful Paint (LCP)

#### --answer--

First Contentful Paint (FCP)

### --question--

#### --text--

다음 중 페이지 로딩 시간을 줄이는 방법이 아닌 것은 무엇인가요?

#### --distractors--

미디어 자산 최적화.

---

브라우저 캐싱 활용.

---

파일 압축 및 최소화.

#### --answer--

JPEG 파일만 사용하는 것.

### --question--

#### --text--

"time to usable"이란 무엇인가요?

#### --distractors--

사용자가 페이지를 요청한 시점부터 페이지 내 폼과 상호작용할 수 있을 때까지의 간격입니다.

---

모든 이미지와 애니메이션이 사용 가능해지는 데 걸리는 시간입니다.

---

모든 CSS와 JavaScript 애니메이션이 화면에 로드되는 데 걸리는 시간입니다.

#### --answer--

사용자가 페이지를 요청한 시점부터 의미 있게 상호작용할 수 있을 때까지의 간격입니다.

### --question--

#### --text--

First Contentful Paint (FCP)는 무엇을 측정하나요?

#### --distractors--

페이지 내 모든 JavaScript 파일의 전체 로드 시간.

---

사용자가 페이지 내 어떤 요소와도 상호작용할 수 있기 전까지의 지연 시간.

---

모든 스타일시트가 완전히 로드되고 적용되는 데 걸리는 시간.

#### --answer--

첫 번째 텍스트나 이미지가 렌더링되는 데 걸리는 시간.

### --question--

#### --text--

다음 중 일반적으로 사용되지 않는 성능 측정 도구는 무엇인가요?

#### --distractors--

Chrome DevTools

---

Lighthouse

---

WebPageTest

#### --answer--

WebMeasure

### --question--

#### --text--

Performance Web API는 무엇에 사용되나요?

#### --distractors--

CSS 애니메이션 성능만 측정하는 데 사용됩니다.

---

웹 페이지 성능을 자동으로 향상시키는 데 사용됩니다.

---

사용자에게 성능 지표를 상세한 표로 제공합니다.

#### --answer--

개발자가 코드에서 직접 웹페이지가 얼마나 효율적으로 로드되고 반응하는지 추적할 수 있게 합니다.

### --question--

#### --text--

인지된 성능을 효과적으로 향상시키는 전략은 무엇인가요?

#### --distractors--

전체적인 시각 품질 향상을 위해 큰 이미지를 사용하는 것.

---

콘텐츠 렌더링 우선순위를 위해 CSS 스타일을 마지막에 로드하는 것.

---

필요할 때 바로 사용할 수 있도록 모든 스크립트를 미리 로드하는 것.

#### --answer--

콘텐츠를 가져오는 동안 로딩 스켈레톤을 표시하는 것.

### --question--

#### --text--

다음 중 브라우저와 서버 간 요청이 이동하는 데 걸리는 시간을 의미하는 것은 무엇인가요?

#### --distractors--

렌더링

---

INP

---

CDN

#### --answer--

지연 시간

### --question--

#### --text--

CSS 최적화가 페이지 성능에 미치는 영향은 무엇인가요?

#### --distractors--

브라우저가 불필요한 JavaScript를 실행하지 못하게 합니다.

---

이미지 파일 크기를 줄입니다.

---

이미지의 지연 로딩 필요성을 없앱니다.

#### --answer--

HTML 파싱 속도를 높입니다.

### --question--

#### --text--

다음 중 무거운 JavaScript 작업으로 인해 메인 스레드가 차단된 시간을 보여주는 것은 무엇인가요?

#### --distractors--

소스 순서

---

이탈률

---

WebPageTest

#### --answer--

총 차단 시간

### --question--

#### --text--

Interaction to Next Paint (INP)를 측정할 때 평가하는 것은 무엇인가요?

#### --distractors--

사용자 상호작용 후 페이지가 모든 스타일과 이미지를 완전히 로드하는 데 걸리는 시간.

---

사용자 상호작용과 브라우저가 다음 사용자 입력을 등록하는 능력 사이의 지연 시간.

---

JavaScript 실행과 브라우저가 페이지 콘텐츠를 새로 고침하는 간격.

#### --answer--

사용자 상호작용과 브라우저가 다음 프레임을 렌더링하며 반응하는 시간 사이의 간격.

### --question--

#### --text--

다음 중 사이트의 각 부분이 로드되는 데 걸리는 시간을 측정하기 위해 밀리초 단위의 고정밀 타임스탬프를 제공하는 API는 무엇인가요?

#### --distractors--

`performance.delay()`

---

`performance.previous()`

---

`performance.next()`

#### --answer--

`performance.now()`

### --question--

#### --text--

다음 중 DNS 조회부터 `DOMContentLoaded`까지 페이지 로딩의 모든 단계를 세분화해서 알려주는 API는 무엇인가요?

#### --distractors--

Permit Timing API

---

Performance Text API

---

Perform Timing API

#### --answer--

Performance Timing API

### --question--

#### --text--

다음 중 레이아웃 이동, 긴 작업, 사용자 상호작용 같은 성능 이벤트를 감지하는 API는 무엇인가요?

#### --distractors--

```js
const observer = new PermitObserve((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PerformObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PermitObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

#### --answer--

```js
const observer = new PerformanceObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

### --question--

#### --text--

이미지 지연 로딩이 페이지 성능을 어떻게 향상시키나요?

#### --distractors--

모든 이미지를 즉시 로드하여 더 나은 사용자 경험을 보장합니다.

---

이미지 파일 크기를 줄여 로딩 속도를 높입니다.

---

이미지를 미리 로드하여 로딩 지연을 방지합니다.

#### --answer--

필수적이지 않은 이미지는 화면에 보일 때까지 로딩을 지연시킵니다.

### --question--

#### --text--

코드 스플리팅이란 무엇인가요?

#### --distractors--

React 코드를 중요한 작업만 수행하는 모듈로 분할하는 것입니다.

---

HTML 코드를 중요하지 않은 작업만 수행하는 모듈로 분할하는 것입니다.

---

CSS 코드를 중요 작업과 중요하지 않은 작업을 수행하는 모듈로 분할하는 것입니다.

#### --answer--

JavaScript 코드를 중요 작업과 중요하지 않은 작업을 수행하는 모듈로 분할하는 것입니다.

### --question--

#### --text--

다음 중 이미지를 지연 로드하는 올바른 방법은 무엇인가요?

#### --distractors--

```html
<img src="placeholder.jpg" lazy="loading">
```

---

```html
<img src="placeholder.jpg" load="lazy">
```

---

```html
<img src="placeholder.jpg" lazy="load">
```

#### --answer--

```html
<img src="placeholder.jpg" loading="lazy">
```

### --question--

#### --text--

다음 중 INP를 개선하는 방법이 아닌 것은 무엇인가요?

#### --distractors--

긴 JavaScript 작업을 나누어 메인 스레드 작업을 줄이는 것.

---

이벤트 핸들러 최적화.

---

무거운 자산을 지연 로드하거나 미루는 것.

#### --answer--

PNG와 JPEG 이미지만 사용하는 것.

### --question--

#### --text--

왜 에너지 효율성이 웹 성능에서 중요한 측면인가요?

#### --distractors--

웹페이지의 전체적인 시각적 매력을 향상시킵니다.

---

웹페이지에서 사용하는 JavaScript 양을 최소화합니다.

---

필요한 CSS 파일 수를 줄이고 CSS 실행 속도를 높입니다.

#### --answer--

하드웨어 부하를 줄여 에너지를 절약하고 지속 가능성을 높입니다.
