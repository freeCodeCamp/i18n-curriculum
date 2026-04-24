---
id: cf1111c1c11feddfaeb5bdef
title: JavaScriptのForループで反復する
challengeType: 1
forumTopicId: 18219
dashedName: iterate-with-javascript-for-loops
---

# --description--

ループを使うと、同じコードを複数回実行できます。

JavaScriptで最も一般的なループは`for`ループと呼ばれ、特定の回数だけ実行されます。

Forループは3つの任意の式をセミコロンで区切って宣言します：

`for (a; b; c)`。ここで`a`は初期化文、`b`は条件文、`c`は最終式です。

初期化文はループが始まる前に一度だけ実行されます。通常はループ変数を定義し設定するために使います。

条件文はループの各反復の開始時に評価され、`true`と評価される限りループは続きます。条件が反復の開始時に`false`の場合、ループは実行を停止します。つまり条件が最初からfalseの場合、ループは一度も実行されません。

最終式は各ループ反復の最後に実行され、次の条件チェックの前に行われます。通常はループカウンターを増減させるために使います。

次の例では`i = 0`で初期化し、条件`i < 5`がtrueの間反復します。各ループ反復で`i`を`1`ずつ増やし、`i++`を最終式として使います。

```js
const ourArray = [];

for (let i = 0; i < 5; i++) {
  ourArray.push(i);
}
```

`ourArray`は今、`[0, 1, 2, 3, 4]`の値を持ちます。

# --instructions--

`for`ループを使って、値1から5までを`myArray`に追加してください。

# --hints--

ここでは`for`ループを使うべきです。

```js
assert(/for\s*\([^)]+?\)/.test(__helpers.removeJSComments(code)));
```

`myArray`は`[1, 2, 3, 4, 5]`と等しくなるはずです。

```js
assert.deepEqual(myArray, [1, 2, 3, 4, 5]);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [];

// Only change code below this line

```

# --solutions--

```js
const myArray = [];
for (let i = 1; i < 6; i++) {
  myArray.push(i);
}
```
