---
id: 657efdcf7fe23b76c0cff9ec
title: ステップ 7
challengeType: 20
dashedName: step-7
---

# --description--

すでに小文字になっている文字は、変換済みの文字のリストに追加して処理する必要があります。

`if` ループ内の `for` 文の直後に `else` 節を追加し、`.append()` メソッドを使って `char` を `snake_cased_char_list` 変数に追加してください。

# --hints--

`else` ループの中に `for` 節を追加してください。最後のコロンを忘れないでください。

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

`.append()` メソッドを使って `char` を `snake_cased_char_list` 変数に追加してください。

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
