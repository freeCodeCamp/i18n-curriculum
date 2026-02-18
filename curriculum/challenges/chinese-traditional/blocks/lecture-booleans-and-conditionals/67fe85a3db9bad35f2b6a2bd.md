---
id: 67fe85a3db9bad35f2b6a2bd
title: 條件述語和邏輯運算子如何運作？
challengeType: 19
dashedName: how-do-conditional-statements-and-logical-operators-work
---

# --description--

條件述語，或稱條件語句，讓你根據某些條件是真或假來控制你的程式流程。

但在進入這些之前，讓我們先來了解條件述語的基本建造區塊，從比較運算子開始。比較運算子是讓你比較兩個或多個值，並傳回布林值的運算子。

在先前的課程中，你學到布林值是 Python 中的資料型別之一，且只能是 `True` 或 `False`。

以下是 Python 中比較運算子的表格：

| Operator | Name | Description |
| --- | --- | --- |
| `==` | Equal | Checks if two values are equal |
| `!=` | Not equal | Checks if two values are not equal |
| `>` | Greater than | Checks if the value on the left is greater than the value on the right |
| `<` | Less than | Checks if the value on the left is less than the value on the right |
| `>=` | Greater than or equal | Checks if the value on the left is greater than or equal to the value on the right |
| `<=` | Less than or equal | Checks if the value on the left is less than or equal to the value on the right |

以下是一些會評估為 `True` 或 `False` 的表達式：

```python
print(3 > 4) # False
print(3 < 4) # True
print(3 == 4) # False
print(4 == 4) # True
print(3 != 4) # True
print(3 >= 4) # False
print(3 <= 4) # True
```

這些運算子可以用在條件判斷中，比較數值並根據條件判斷是否計算為 `True` 或 `False` 來執行特定的程式碼。

在 Python 中，最基本的條件是 `if` 述語。以下是基本語法：

```python
if condition:
    pass # Code to execute if condition is True
```

* `if` 述語以 `if` 關鍵字開始。
    
* `condition` 是一個會計算結果為 `True` 或 `False` 的運算式，後面接著冒號（`:`）。

* `if` 述語的主體構成一個 <dfn>程式碼區塊</dfn>，該區塊是一組彼此相關的述語。在 Python 中，縮排層次決定了程式碼區塊。
    
在上述範例中，`if` 述語的主體包含一個 `pass` 述語。當執行 `pass` 述語時，不會發生任何事情。這是一個特殊的關鍵字，可用作未來程式碼的佔位符，當不允許空的程式碼區塊時非常有用。

`if` 述語主體內的程式碼僅在條件計算為 `True` 時執行。 例如：

```python
age = 18

if age >= 18:
    print('You are an adult') # You are an adult
```

請注意 `print('You are an adult')` 之前的縮排。雖然其他程式語言使用大括號等字元來定義區塊，並且僅將縮排用於可讀性，但在 Python 中，區塊是由縮排決定的。

以下程式碼會引發 `IndentationError`，這是 Python 用來表示在程式碼某個位置需要縮排的信號：

```py
age = 18

if age >= 18:
print('You are an adult') # IndentationError: expected an indented block after 'if' statement on line 3
```

雖然你可以使用任意數量的空格（只要你保持一致）來決定每個縮排層次，但 Python 風格指南建議使用四個空格。

區塊也出現在迴圈和函式（程式）中，你會在未來的課程中學到這些內容。

回到我們的範例，如果 `age` 小於 `18`，終端機中不會列印任何內容：

```python
age = 12

if age >= 18:
    print('You are an adult') # Nothing shows up in the terminal
```

但是如果你也想在 `age` 小於 `18` 時列印某些東西呢？這時候就會用到 `else` 語句。當 `if` 條件為假時，`else` 語句會被執行。以下是 `if…else` 述語的語法：

```python
if condition:
   pass # Code to execute if condition is True
else:
   pass # Code to execute if condition is False
```

例如：

```python
age = 12

if age >= 18:
    print('You are an adult')
else:
    print('You are not an adult yet') # You are not an adult yet
```

有時你可能想要考慮多個條件。為此，Python 允許你使用 `elif`（else if）關鍵字來擴充你的 if 述語。

語法如下：

```python
if condition1:
   pass # Code to execute if condition1 is True
elif condition2:
   pass # Code to execute if condition1 is False and condition2 is True
else:
   pass # Code to execute if all conditions are False
```

例如：

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') # You are a child
```

請注意，你可以使用任意數量的 `elif` 述語：

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

既然你了解了比較運算子和條件述語在 Python 中的運作方式，你就可以開始撰寫根據邏輯和輸入做出決策的程式。無論你是在比較數值還是透過多重條件分支，這些工具都是撰寫靈活且具回應性的程式碼的基礎。

# --questions--

## --text--

比較運算子做什麼？

## --answers--

對布林值執行數學運算

### --feedback--

這些運算子會檢查像是相等性或哪個值較大，結果要麼是 `True`，要麼是 `False`。

---

將字串轉換為布林值。

### --feedback--

這些運算子會檢查像是相等性或哪個值較大，結果要麼是 `True`，要麼是 `False`。

---

比較兩個值並傳回布林值。

---

創建迴圈和迭代。

### --feedback--

這些運算子會檢查像是相等性或哪個值較大，結果要麼是 `True`，要麼是 `False`。

## --video-solution--

3

## --text--

以下 `code` 的結果會是什麼？

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

`You are an adult` 將會列印到主控台。

### --feedback--

檢查課程的最後零件以取得正確答案。

---

`You are a teenager` 將會列印到主控台。

### --feedback--

檢查課程的最後零件以取得正確答案。

---

`You are a child` 將會列印到主控台。

---

錯誤將會列印到主控台。

### --feedback--

檢查課程的最後零件以取得正確答案。

## --video-solution--

3

## --text--

表達式 `3 >= 4` 會計算出什麼結果？

## --answers--

`True`

### --feedback--

3 不大於或相等於 4。

---

`SyntaxError`

### --feedback--

3 不大於或相等於 4。

---

`None`

### --feedback--

3 不大於或相等於 4。

---

`False`

## --video-solution--

4
