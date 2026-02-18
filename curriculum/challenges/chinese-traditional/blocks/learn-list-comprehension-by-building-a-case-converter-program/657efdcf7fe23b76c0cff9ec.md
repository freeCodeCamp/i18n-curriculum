---
id: 657efdcf7fe23b76c0cff9ec
title: 第 7 步
challengeType: 20
dashedName: step-7
---

# --description--

你需要處理已經是小寫的字元，將它們添加到已轉換字元的列表中。

在 `for` 迴圈中緊接著 `if` 述語後，為你的程式碼添加一個 `else` 語句，並使用 `.append()` 方法將 `char` 添加到 `snake_cased_char_list` 變數。

# --hints--

你應該在 `for` 迴圈內添加一個 `else` 語句。別忘了在結尾加上冒號。

```js
({
    test: () => {
        const transformedCode = code.replace(/\r/g, "");
        const convert_to_snake_case = __helpers.python.getDef("\n" + transformedCode, "convert_to_snake_case");
        const { function_body } = convert_to_snake_case;

        assert.match(function_body, / +else:/);
    }
})
```

你應該使用 `.append()` 方法，為你的 `snake_cased_char_list` 變數添加 `char`。

```js
({
    test: () => {
        const transformedCode = code.replace(/\r/g, "");
        const convert_to_snake_case = __helpers.python.getDef("\n" + transformedCode, "convert_to_snake_case");
        const { function_body } = convert_to_snake_case;

        assert.match(function_body, / +snake_cased_char_list.append\(\s*char\s*\)/);
    }
})
```

# --seed--

## --seed-contents--

```py
def convert_to_snake_case(pascal_or_camel_cased_string):
    snake_cased_char_list = []
    for char in pascal_or_camel_cased_string:
--fcc-editable-region--
        if char.isupper():
            converted_character = '_' + char.lower()
            snake_cased_char_list.append(converted_character)
--fcc-editable-region--
```
