---
id: 657efdcf7fe23b76c0cff9ec
title: 7단계
challengeType: 20
dashedName: step-7
---

# --description--

이미 소문자인 문자를 변환된 문자 목록에 추가해서 처리해야 합니다.

`if` 반복문 내 `for` 문장 바로 뒤에 `else` 절을 추가하고 `.append()` 메서드를 사용해 `char`를 `snake_cased_char_list` 변수에 추가하세요.

# --hints--

`else` 반복문 안에 `for` 절을 추가해야 합니다. 끝에 콜론을 잊지 마세요.

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

`.append()` 메서드를 사용해 `char`를 `snake_cased_char_list` 변수에 추가하세요.

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
