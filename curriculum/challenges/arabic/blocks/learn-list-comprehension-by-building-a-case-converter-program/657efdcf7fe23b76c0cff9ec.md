---
id: 657efdcf7fe23b76c0cff9ec
title: الخطوة 7
challengeType: 20
dashedName: step-7
---

# --description--

يجب التعامل مع الأحرف التي هي بالفعل أحرف صغيرة بإضافتها إلى قائمة الأحرف المحوّلة.

بعد جملة `if` مباشرة داخل حلقة `for`، أضف بند `else` واستخدم طريقة `.append()` لإضافة `char` إلى المتغير `snake_cased_char_list`.

# --hints--

يجب إضافة بند `else` داخل حلقة `for`. لا تنسَ النقطتين في النهاية.

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

يجب استخدام طريقة `.append()` لإضافة `char` إلى المتغير `snake_cased_char_list`.

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
