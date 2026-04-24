---
id: 67fe85a3db9bad35f2b6a2bd
title: 条件文と論理演算子はどのように機能するのか？
challengeType: 19
dashedName: how-do-conditional-statements-and-logical-operators-work
---

# --description--

条件文、または条件分岐は、特定の条件が真か偽かに基づいてプログラムの流れを制御することができます。

しかし、その前に、条件文の基本的な構成要素である比較演算子から説明しましょう。比較演算子は、2つ以上の値を比較し、ブール値を返す演算子です。

前のレッスンで、ブール値はPythonのデータ型の一つであり、`True`か`False`のどちらかしか取れないことを学びました。

以下はPythonの比較演算子の一覧です：

| 演算子 | 名前 | 説明 |
| --- | --- | --- |
| `==` | 等しい | 2つの値が等しいかどうかをチェックします |
| `!=` | 等しくない | 2つの値が等しくないかどうかをチェックします |
| `>` | より大きい | 左側の値が右側の値より大きいかどうかをチェックします |
| `<` | より小さい | 左側の値が右側の値より小さいかどうかをチェックします |
| `>=` | 以上 | 左側の値が右側の値以上かどうかをチェックします |
| `<=` | 以下 | 左側の値が右側の値以下かどうかをチェックします |

以下は、`True`または`False`に評価されるいくつかの式です：

```python
print(3 > 4) # False
print(3 < 4) # True
print(3 == 4) # False
print(4 == 4) # True
print(3 != 4) # True
print(3 >= 4) # False
print(3 <= 4) # True
```

これらの演算子は条件文で使われ、条件が`True`か`False`かに基づいて特定のコードを実行します。

Pythonで最も基本的な条件文は`if`文です。基本的な構文は以下の通りです：

```python
if condition:
    pass # Code to execute if condition is True
```

* `if`文は`if`キーワードで始まります。
    
* `condition`は`True`か`False`に評価される式で、コロン（`:`）が続きます。

* `if`文の本体は<dfn>コードブロック</dfn>で構成されており、一緒に属する文のグループです。Pythonでは、インデントのレベルがコードブロックを定義します。
    
上の例では、`if`文の本体に`pass`文が含まれています。`pass`文が実行されると何も起こりません。これは将来のコードのプレースホルダーとして使える特別なキーワードで、空のコードブロックが許されない場合に便利です。

`if`文の本体内のコードは、条件が`True`に評価された場合のみ実行されます。例えば：

```python
age = 18

if age >= 18:
    print('You are an adult') # You are an adult
```

`print('You are an adult')`の前のインデントに注目してください。他のプログラミング言語では波括弧のような文字でコードブロックを定義し、インデントは可読性のためだけに使われますが、Pythonではインデントによってコードブロックが決まります。

次のコードは`IndentationError`を発生させます。これはPythonがコードの特定の場所でインデントが必要であることを示す方法です：

```py
age = 18

if age >= 18:
print('You are an adult') # IndentationError: expected an indented block after 'if' statement on line 3
```

インデントのレベルを決めるために任意の数のスペースを使うことができます（ただし一貫性が必要です）が、Pythonのスタイルガイドでは4つのスペースを使うことを推奨しています。

コードブロックはループや関数にも存在し、これらは今後のレッスンで学びます。

例に戻ると、`age`が`18`より小さい場合、ターミナルには何も出力されません：

```python
age = 12

if age >= 18:
    print('You are an adult') # Nothing shows up in the terminal
```

しかし、`age`が`18`より小さい場合に何かを出力したい場合はどうでしょうか？その場合は`else`節が使えます。`else`節は`if`条件が偽のときに実行されます。`if…else`文の構文は以下の通りです：

```python
if condition:
   pass # Code to execute if condition is True
else:
   pass # Code to execute if condition is False
```

例えば：

```python
age = 12

if age >= 18:
    print('You are an adult')
else:
    print('You are not an adult yet') # You are not an adult yet
```

`if`ブロックと`else`節の間に文を置くことはできません。次のコードは`SyntaxError`を発生させます：

```python
age = 12

if age >= 18:
    print('You are an adult')
print('Almost there!')
else: # SyntaxError: invalid syntax
    print('You are not an adult yet')
```

複数の条件を考慮したい場合もあります。そのためにPythonはif文を`elif`（else if）キーワードで拡張できます。

構文は以下の通りです：

```python
if condition1:
   pass # Code to execute if condition1 is True
elif condition2:
   pass # Code to execute if condition1 is False and condition2 is True
else:
   pass # Code to execute if all conditions are False
```

例えば：

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') # You are a child
```

`elif`節は好きなだけ使うことができます：

```python
age = 2

if age >= 65:
    print('You are a senior citizen')
elif age >= 30:
    print('You are an adult in your prime')
elif age >= 18:
    print('You are a young adult')
elif age >= 13:
    print('You are a teenager')
elif age >= 3:
    print('You are a young child')
else:
    print('You are a toddler or an infant') # You are a toddler or an infant
```

これでPythonの比較演算子と条件文の仕組みが理解できたので、論理や入力に基づいて判断を行うプログラムを書き始めることができます。値を比較したり複数の条件で分岐したりする場合でも、これらのツールは柔軟でレスポンシブなコードを書くための基礎です。

# --questions--

## --text--

比較演算子は何をしますか？

## --answers--

ブール値を使って数学的計算を行う

### --feedback--

これらの演算子は等しいかどうかやどちらの値が大きいかをチェックし、結果は`True`か`False`のどちらかになります。

---

文字列をブール値に変換する。

### --feedback--

これらの演算子は等しいかどうかやどちらの値が大きいかをチェックし、結果は`True`か`False`のどちらかになります。

---

2つの値を比較してブール値を返す。

---

ループや繰り返しを作成する。

### --feedback--

これらの演算子は等しいかどうかやどちらの値が大きいかをチェックし、結果は`True`か`False`のどちらかになります。

## --video-solution--

3

## --text--

次のコードの結果はどうなりますか？

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') 
```

## --answers--

`You are an adult`がコンソールに出力されます。

### --feedback--

正しい答えはレッスンの最後の部分を確認してください。

---

`You are a teenager`がコンソールに出力されます。

### --feedback--

正しい答えはレッスンの最後の部分を確認してください。

---

`You are a child`がコンソールに出力されます。

---

エラーがコンソールに出力されます。

### --feedback--

正しい答えはレッスンの最後の部分を確認してください。

## --video-solution--

3

## --text--

式`3 >= 4`はどのように評価されますか？

## --answers--

`True`

### --feedback--

3は4以上ではありません。

---

`SyntaxError`

### --feedback--

3は4以上ではありません。

---

`None`

### --feedback--

3は4以上ではありません。

---

`False`

## --video-solution--

4
