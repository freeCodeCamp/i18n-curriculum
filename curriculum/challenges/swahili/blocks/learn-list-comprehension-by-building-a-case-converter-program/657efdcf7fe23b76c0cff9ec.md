---
id: 657efdcf7fe23b76c0cff9ec
title: Hatua 7
challengeType: 20
dashedName: step-7
---

# --description--

Unahitaji kushughulikia herufi ndogo ambazo tayari zipo kwa kuziongeza kwenye orodha ya herufi zilizobadilishwa.

Mara moja baada ya tamko la `if` ndani ya mzunguko wa `for`, ongeza kifungu cha `else` na tumia njia ya `.append()` kuongeza `char` kwenye kigezo cha `snake_cased_char_list`.

# --hints--

Unapaswa kuongeza kifungu cha `else` ndani ya mzunguko wa `for`. Usisahau alama ya nukta mwishoni.

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

Unapaswa kutumia njia ya `.append()` kuongeza `char` kwenye kigezo cha `snake_cased_char_list`.

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
