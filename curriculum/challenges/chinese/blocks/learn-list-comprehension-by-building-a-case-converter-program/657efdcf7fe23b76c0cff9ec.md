---
id: 657efdcf7fe23b76c0cff9ec
title: 步骤7
challengeType: 20
dashedName: step-7
---

# --description--

你需要通过将已经是小写的字符添加到转换字符列表中来处理它们。

在 `for` 循环中的 `if` 语句之后，添加 `else` 子句并使用 `.append()` 方法将 `char` 添加到 `snake_cased_char_list` 变量中。

# --hints--

你应该在 `for` 循环内添加 `else` 子句。 不要忘记最后的冒号。

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

你应该使用 `.append()` 方法将 `char` 添加到 `snake_cased_char_list` 变量。

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
