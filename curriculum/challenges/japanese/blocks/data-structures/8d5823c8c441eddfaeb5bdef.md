---
id: 8d5823c8c441eddfaeb5bdef
title: マップデータ構造を作成する
challengeType: 1
forumTopicId: 301629
dashedName: create-a-map-data-structure
---

# --description--

次のいくつかのチャレンジでは、マップとハッシュテーブルについて学びます。マップはキーと値のペアをストアするデータ構造です。JavaScriptでは、これらはオブジェクトとして利用できます。マップはキーの値に基づいて格納されたアイテムを素早く検索できるため、とても一般的で便利なデータ構造です。

# --instructions--

自分でマップを作成する練習をしましょう。JavaScriptのオブジェクトはここで書けるものよりもはるかに効率的なマップ構造を提供するため、これは主に学習用の演習です。しかし、JavaScriptのオブジェクトは特定の操作しか提供しません。もしカスタムの操作を定義したい場合はどうでしょう？ここで提供される`Map`オブジェクトをJavaScriptの`object`のラッパーとして使ってください。Mapオブジェクトに以下のメソッドと操作を作成してください。

<ul>
<li><code>add</code>は<code>key, value</code>のペアを受け取り、マップに追加します。</li>
<li><code>remove</code>はキーを受け取り、関連する<code>key, value</code>のペアを削除します。</li>
<li><code>get</code>は<code>key</code>を受け取り、格納された<code>value</code>を返します。</li>
<li><code>has</code>は<code>key</code>を受け取り、そのキーが存在すれば<dfn>true</dfn>、存在しなければ<dfn>false</dfn>を返します。</li>
<li><code>values</code>はマップ内のすべての値を配列で返します。</li>
<li><code>size</code>はマップ内のアイテム数を返します。</li>
<li><code>clear</code>はマップを空にします。</li>
</ul>

# --hints--

`Map`データ構造が存在しているはずです。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    return typeof test == 'object';
  })()
);
```

`Map`オブジェクトは次のメソッドを持つべきです：`add`、`remove`、`get`、`has`、`values`、`clear`、および`size`。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    return (
      typeof test.add == 'function' &&
      typeof test.remove == 'function' &&
      typeof test.get == 'function' &&
      typeof test.has == 'function' &&
      typeof test.values == 'function' &&
      typeof test.clear == 'function' &&
      typeof test.size == 'function'
    );
  })()
);
```

`add`メソッドはマップにアイテムを追加するべきです。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add(5, 6);
    test.add(2, 3);
    test.add(2, 5);
    return test.size() == 2;
  })()
);
```

`has`メソッドは追加されたアイテムに対して`true`を返し、存在しないアイテムに対して`false`を返すべきです。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('test', 'value');
    return test.has('test') && !test.has('false');
  })()
);
```

`get`メソッドはキーを入力として受け取り、関連する値を返すべきです。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('abc', 'def');
    return test.get('abc') == 'def';
  })()
);
```

`values`メソッドはマップに格納されたすべての値を文字列の配列として返すべきです。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('a', 'b');
    test.add('c', 'd');
    test.add('e', 'f');
    var vals = test.values();
    return (
      vals.indexOf('b') != -1 &&
      vals.indexOf('d') != -1 &&
      vals.indexOf('f') != -1
    );
  })()
);
```

`clear`メソッドはマップを空にし、`size`メソッドはマップに存在するアイテム数を返すべきです。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('b', 'b');
    test.add('c', 'd');
    test.remove('asdfas');
    var init = test.size();
    test.clear();
    return init == 2 && test.size() == 0;
  })()
);
```

# --seed--

## --seed-contents--

```js
var Map = function() {
  this.collection = {};
  // Only change code below this line
  
  // Only change code above this line
};
```

# --solutions--

```js
var Map = function() {
    this.collection = {};
    // Only change code below this line

    this.add = function(key,value) {
      this.collection[key] = value;
    }

    this.remove = function(key) {
      delete this.collection[key];
    }

    this.get = function(key) {
      return this.collection[key];
    }

    this.has = function(key) {
      return this.collection.hasOwnProperty(key)
    }

    this.values = function() {
      return Object.values(this.collection);
    }

    this.size = function() {
      return Object.keys(this.collection).length;
    }

    this.clear = function() {
      for(let item of Object.keys(this.collection)) {
        delete this.collection[item];
      }
    }
    // Only change code above this line
};
```
