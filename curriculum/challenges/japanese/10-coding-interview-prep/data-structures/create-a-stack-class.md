---
id: 587d8250367417b2b2512c5f
title: スタッククラスを作成する
challengeType: 1
forumTopicId: 301633
dashedName: create-a-stack-class
---

# --description--

In the last section, we talked about what a stack is and how we can use an array to represent a stack. In this section, we will be creating our own stack class. Although you can use arrays to create stacks, sometimes it is best to limit the amount of control we have with our stacks. Apart from the `push` and `pop` method, stacks have other useful methods. Let's add a `peek`, `isEmpty`, and `clear` method to our stack class.

# --instructions--

スタックの一番上に要素をプッシュする `push` メソッド、スタックの一番上の要素を削除して返す `pop` メソッド、スタックの一番上の要素を見る `peek` メソッド、スタックが空かどうかを調べる `isEmpty` メソッド、および、スタックからすべての要素を削除する `clear` メソッドを記述してください。 今回は、コレクションのコンソールログを取得する `print` ヘルパーメソッドを追加しました (通常、スタックにはこれがありませんが)。

# --hints--

`Stack` クラスに `push` メソッドが必要です。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.push === 'function';
  })()
);
```

`Stack` クラスに `pop` メソッドが必要です。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.pop === 'function';
  })()
);
```

`Stack` クラスに `peek` メソッドが必要です。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.peek === 'function';
  })()
);
```

`Stack` クラスに `isEmpty` メソッドが必要です。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.isEmpty === 'function';
  })()
);
```

`Stack` クラスに `clear` メソッドが必要です。

```js
assert(
  (function () {
    var test = new Stack();
    return typeof test.clear === 'function';
  })()
);
```

`peek` メソッドはスタックの一番上の要素を返す必要があります。

```js
assert(
  (function () {
    var test = new Stack();
    test.push('CS61');
    test.push('CS50');
    return test.peek() === 'CS50' && test.peek() === 'CS50';
  })()
);
```

`pop` メソッドはスタックの一番上の要素を削除する必要があります。

```js
assert(
  (function () {
    var test = new Stack();
    test.push('CS61');
    test.push('CS50');
    return test.pop() === 'CS50' && test.pop() === 'CS61';
  })()
);
```

スタックに要素が含まれていない場合、`isEmpty` メソッドは true を返す必要があります。

```js
assert(
  (function () {
    var test = new Stack();
    return test.isEmpty();
  })()
);
```

`clear` メソッドはスタックのすべての要素を削除する必要があります。

```js
assert(
  (function () {
    var test = new Stack();
    test.push('CS61');
    test.push('CS50');
    test.clear();
    return test.isEmpty();
  })()
);
```

# --seed--

## --seed-contents--

```js
function Stack() {
  var collection = [];
  this.print = function() {
    console.log(collection);
  };
  // Only change code below this line

  // Only change code above this line
}
```

# --solutions--

```js
class Stack {
  constructor() {
    this.collection = [];
  }
  print() {
    console.log(this.collection);
  }
  push(val) {
    this.collection.push(val);
  }
  pop() {
    return this.collection.pop();
  }
  peek() {
    return this.collection[this.collection.length - 1];
  }
  isEmpty() {
    return this.collection.length === 0;
  }
  clear() {
    return (this.collection.length = 0);
  }
}
```
