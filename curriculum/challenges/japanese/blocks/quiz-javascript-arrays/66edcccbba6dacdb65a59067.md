---
id: 66edcccbba6dacdb65a59067
title: JavaScript 配列クイズ
challengeType: 8
dashedName: quiz-javascript-arrays
---

# --description--

このクイズに合格するには、以下の20問のうち少なくとも18問に正しく答える必要があります。

# --quizzes--

## --quiz--

### --question--

#### --text--

次のコードの出力は何になりますか？

```js
const numbers = [1, 2, 3];
console.log(numbers[10]);
```

#### --distractors--

`[1, 2, 3]`

---

`null`

---

`10`

#### --answer--

`undefined`

### --question--

#### --text--

次のうち、`"Jessica"` 配列から文字列 `developers` にアクセスする正しい方法はどれですか？

#### --distractors--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[1]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[2]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[-1]
```

#### --answer--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[0]
```

### --question--

#### --text--

`index` 変数にはどの値が代入されますか？

```js
const numbers = [10, 20, 30, 40];
const index = numbers.indexOf(20);
console.log(index);
```

#### --distractors--

2

---

3

---

-1

#### --answer--

1

### --question--

#### --text--

rest構文は何をしますか？

#### --distractors--

文字列を部分文字列の配列に分割するために使われます。

---

配列の任意の位置に要素を追加または削除するために使われます。

---

配列の末尾に要素を追加し、新しい長さを返します。

#### --answer--

配列の残りの要素を新しい配列にまとめます。

### --question--

#### --text--

配列の分割代入とは何ですか？

#### --distractors--

配列のすべての要素を連結して1つの文字列にするために使われます。

---

配列に特定の値が含まれているかを確認するために使われます。

---

配列の最後の要素を削除し、その削除した要素を返します。

#### --answer--

配列から値を取り出して、より簡潔で読みやすい方法で変数に代入するために使われます。

### --question--

#### --text--

`arr2` 変数にはどの値が代入されますか？

```js
const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];
console.log(arr2);
```

#### --distractors--

`[4, 5, 1, 2, 3]`

---

`[1, 2, [3, 4, 5]]`

---

`[1, 2, 3]`

#### --answer--

`[1, 2, 3, 4, 5]`

### --question--

#### --text--

このコードはコンソールに何を表示しますか？

```js
const colors = ["red", "blue", "green", "yellow"];
colors.splice(1, 2, "purple");
console.log(colors);
```

#### --distractors--

`["red", "blue", "green", "yellow"]`

---

`["red", "blue", "yellow"]`

---

`["red", "yellow"]`

#### --answer--

`["red", "purple", "yellow"]`

### --question--

#### --text--

`slicedArr` 変数にはどの値が代入されますか？

```js
const arr = ["apple", "banana", "cherry", "date"];
const slicedArr = arr.slice(1, 3);
console.log(slicedArr);
```

#### --distractors--

`["apple", "banana"]`

---

`["cherry", "date"]`

---

`["apple", "cherry"]`

#### --answer--

`["banana", "cherry"]`

### --question--

#### --text--

配列の中で指定した要素の最初のインデックスを返すメソッドはどれですか？

#### --distractors--

`firstIndex()`

---

`lastIndex()`

---

`searchIndex()`

#### --answer--

`indexOf()`

### --question--

#### --text--

配列の最初の要素を削除し、その削除した要素を返すメソッドはどれですか？

#### --distractors--

`pop()`

---

`slice()`

---

`splice()`

#### --answer--

`shift()`

### --question--

#### --text--

`concat()` メソッドは何をしますか？

#### --distractors--

配列の要素を文字列に結合します。

---

配列の先頭に要素を追加します。

---

配列から要素を削除します。

#### --answer--

2つの配列を新しい配列にマージします。

### --question--

#### --text--

このコードの出力は何になりますか？

```js
const fruits = ["apple", "banana", "cherry", "apple", "orange"];

fruits.splice(0, 1);

console.log(fruits);
```

#### --distractors--

`["apple", "banana", "cherry", "apple", "orange"]`

---

`["apple", "banana", "cherry"]`

---

`["cherry", 'apple']`

#### --answer--

`["banana", "cherry", "apple", "orange"]`

### --question--

#### --text--

`includes()` メソッドは何をしますか？

#### --distractors--

文字列を部分文字列の配列に分割するために使われます。

---

配列のすべての要素を連結して1つの文字列にするために使われます。

---

配列の任意の位置に要素を追加または削除するために使われます。

#### --answer--

配列に特定の値が含まれているかを確認するために使われます。

### --question--

#### --text--

配列をその場で反転させるために使われるメソッドはどれですか？

#### --distractors--

`reversed()`

---

`reverseArr()`

---

`reversing()`

#### --answer--

`reverse()`

### --question--

#### --text--

二次元配列とは何ですか？

#### --distractors--

オブジェクトリテラルだけを含む配列。

---

固定長の配列。

---

浮動小数点数の配列。

#### --answer--

配列の配列。

### --question--

#### --text--

配列の `indexOf()` メソッドについて正しいのはどれですか？

#### --distractors--

常に要素の最後の出現位置を返します。

---

要素が見つからない場合はエラーをスローします。

---

配列がソートされている必要があります。

#### --answer--

要素が見つからない場合は `-1` を返します。

### --question--

#### --text--

次のうち配列のメソッドではないものはどれですか？

#### --distractors--

`includes()`

---

`pop()`

---

`push()`

#### --answer--

`trim()`

### --question--

#### --text--

次のコードの出力は何になりますか？

```js
const arr = ["o", "l", "l", "e", "h"];
console.log(arr.join(""));
```

#### --distractors--

`["o", "l", "l", "e", "h"]`

---

`"hello"`

---

`undefined`

#### --answer--

`"olleh"`

### --question--

#### --text--

空の配列に `shift()` メソッドを使うとどうなりますか？

#### --distractors--

`TypeError`

---

`[]`

---

`null`

#### --answer--

`undefined`

### --question--

#### --text--

元の配列を変更せずに新しい配列を返すメソッドはどれですか？

#### --distractors--

`shift()`

---

`pop()`

---

`push()`

#### --answer--

`slice()`
