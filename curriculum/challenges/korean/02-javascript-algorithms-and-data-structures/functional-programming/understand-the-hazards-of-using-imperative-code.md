---
id: 587d7b8e367417b2b2512b5d
title: 명령형 코드 사용의 위험 이해하기
challengeType: 1
forumTopicId: 301241
dashedName: understand-the-hazards-of-using-imperative-code
---

# --description--

Functional programming is a good habit. It keeps your code easy to manage, and saves you from sneaky bugs. But before we get there, let's look at an imperative approach to programming to highlight where you may have issues.

영어(그리고 다른 많은 언어들)에서 명령문은 명령을 하기 위해 사용됩니다. 유사하게 프로그래밍에서 명령형은 작업을 수행하도록 컴퓨터에게 문장 집합을 주는 형식입니다.

이 문장들은 종종 전역 변수 수정과 같이 프로그램의 상태를 변화시킵니다. 전형적인 예시로는 배열의 인덱스를 순회하기 위한 정확한 지침을 제공하는 `for` 루프를 작성하는 것입니다.

이와 반대로 함수형 프로그래밍은 선언형 프로그래밍의 형태입니다. 함수나 메소드를 호출하여 컴퓨터에게 원하는 것을 실행하도록 지시합니다.

자바스크립트는 일반적인 작업을 처리하는 미리 정의된 많은 메소드를 제공하기 때문에 컴퓨터가 어떻게 그 작업을 실행하는지 작성할 필요가 없습니다. 예를 들면 위에서 언급한 `for` 루프를 사용하는 대신 배열을 순회하여 세부 사항을 처리하는 `map` 메소드를 호출할 수 있습니다. 이렇게 하면 디버깅 섹션에서 다루었던 "Off By One Errors"와 같은 의미적 오류를 피할 수 있습니다.

한 시나리오를 고려해보겠습니다: 브라우저로 웹을 찾으며 열었던 탭을 추적하기를 원한다고 하겠습니다. 간단한 객체 지향 코드로 이를 모델링해보겠습니다.

창(window) 객체는 탭으로 만들어지며 사용자는 보통 하나 이상의 창을 열게 됩니다. 각 창 객체에 사이트의 제목은 배열로 담겨 있습니다. 브라우저에서 작업을 마치고(새로운 탭 열기, 창 합치기 그리고 탭 닫기) 여전히 열린 탭을 출력하기 원합니다. 닫힌 탭은 해당 배열로부터 삭제되고 새로운 탭(간단하게 말해서) 배열의 끝에 추가됩니다.

코드 편집기는 `tabOpen()`, `tabClose()` 그리고 `join()`에 대한 함수와 함께 이 기능의 사용을 보여줍니다. 배열 `tabs`은 열어본 페이지의 이름을 저장한 창 객체의 부분입니다.

# --instructions--

편집기에서 코드를 시험해보시오. It's using a method that has side effects in the program, causing incorrect behavior. `finalTabs.tabs`에 저장된 열린 탭의 마지막 목록은 `['FB', 'Gitter', 'Reddit', 'Twitter', 'Medium', 'new tab', 'Netflix', 'YouTube', 'Vine', 'GMail', 'Work mail', 'Docs', 'freeCodeCamp', 'new tab']`이어야 하지만 코드에 의해 생성된 목록은 조금 다릅니다.

`Window.prototype.tabClose`를 변화시켜 올바른 탭을 삭제할 수 있도록 만드시오.

# --hints--

`finalTabs.tabs`은 `['FB', 'Gitter', 'Reddit', 'Twitter', 'Medium', 'new tab', 'Netflix', 'YouTube', 'Vine', 'GMail', 'Work mail', 'Docs', 'freeCodeCamp', 'new tab']`이어야 합니다.

```js
assert.deepEqual(finalTabs.tabs, [
  'FB',
  'Gitter',
  'Reddit',
  'Twitter',
  'Medium',
  'new tab',
  'Netflix',
  'YouTube',
  'Vine',
  'GMail',
  'Work mail',
  'Docs',
  'freeCodeCamp',
  'new tab'
]);
```

# --seed--

## --seed-contents--

```js
// tabs is an array of titles of each site open within the window
const Window = function(tabs) {
  this.tabs = tabs; // We keep a record of the array inside the object
};

// When you join two windows into one window
Window.prototype.join = function(otherWindow) {
  this.tabs = this.tabs.concat(otherWindow.tabs);
  return this;
};

// When you open a new tab at the end
Window.prototype.tabOpen = function(tab) {
  this.tabs.push('new tab'); // Let's open a new tab for now
  return this;
};

// When you close a tab
Window.prototype.tabClose = function(index) {

  // Only change code below this line

  const tabsBeforeIndex = this.tabs.splice(0, index); // Get the tabs before the tab
  const tabsAfterIndex = this.tabs.splice(index + 1); // Get the tabs after the tab

  this.tabs = tabsBeforeIndex.concat(tabsAfterIndex); // Join them together

  // Only change code above this line

  return this;
 };

// Let's create three browser windows
const workWindow = new Window(['GMail', 'Inbox', 'Work mail', 'Docs', 'freeCodeCamp']); // Your mailbox, drive, and other work sites
const socialWindow = new Window(['FB', 'Gitter', 'Reddit', 'Twitter', 'Medium']); // Social sites
const videoWindow = new Window(['Netflix', 'YouTube', 'Vimeo', 'Vine']); // Entertainment sites

// Now perform the tab opening, closing, and other operations
const finalTabs = socialWindow
  .tabOpen() // Open a new tab for cat memes
  .join(videoWindow.tabClose(2)) // Close third tab in video window, and join
  .join(workWindow.tabClose(1).tabOpen());
console.log(finalTabs.tabs);
```

# --solutions--

```js
const Window = function(tabs) {
  this.tabs = tabs;
};

Window.prototype.join = function(otherWindow) {
  this.tabs = this.tabs.concat(otherWindow.tabs);
  return this;
};

Window.prototype.tabOpen = function(tab) {
  this.tabs.push('new tab');
  return this;
};

Window.prototype.tabClose = function(index) {
  const tabsBeforeIndex = this.tabs.slice(0, index);
  const tabsAfterIndex = this.tabs.slice(index + 1);

  this.tabs = tabsBeforeIndex.concat(tabsAfterIndex);
  return this;
 };

const workWindow = new Window(['GMail', 'Inbox', 'Work mail', 'Docs', 'freeCodeCamp']);
const socialWindow = new Window(['FB', 'Gitter', 'Reddit', 'Twitter', 'Medium']);
const videoWindow = new Window(['Netflix', 'YouTube', 'Vimeo', 'Vine']);

const finalTabs = socialWindow
  .tabOpen()
  .join(videoWindow.tabClose(2))
  .join(workWindow.tabClose(1).tabOpen());
```
