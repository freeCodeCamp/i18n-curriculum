---
id: 67fe85a3db9bad35f2b6a2bd
title: كيف تعمل جمل الشرط والمعاملات المنطقية؟
challengeType: 19
dashedName: how-do-conditional-statements-and-logical-operators-work
---

# --description--

تتيح لك جمل الشرط، أو الشروط، التحكم في تدفق برنامجك بناءً على ما إذا كانت شروط معينة صحيحة أو خاطئة.

لكن قبل أن ندخل في التفاصيل، دعنا نستعرض اللبنات الأساسية لجمل الشرط، بدءًا من معاملات المقارنة. معاملات المقارنة هي معاملات تتيح لك مقارنة قيمتين أو أكثر، وتُرجع قيمة منطقية.

في درس سابق، تعلمت أن القيم المنطقية هي أحد أنواع البيانات في Python، ويمكن أن تكون فقط `True` أو `False`.

إليك جدولًا يحتوي على معاملات المقارنة في Python:

| المعامل | الاسم | الوصف |
| --- | --- | --- |
| `==` | يساوي | يتحقق مما إذا كانت قيمتان متساويتين |
| `!=` | لا يساوي | يتحقق مما إذا كانت قيمتان غير متساويتين |
| `>` | أكبر من | يتحقق مما إذا كانت القيمة على اليسار أكبر من القيمة على اليمين |
| `<` | أصغر من | يتحقق مما إذا كانت القيمة على اليسار أصغر من القيمة على اليمين |
| `>=` | أكبر من أو يساوي | يتحقق مما إذا كانت القيمة على اليسار أكبر من أو تساوي القيمة على اليمين |
| `<=` | أصغر من أو يساوي | يتحقق مما إذا كانت القيمة على اليسار أصغر من أو تساوي القيمة على اليمين |

إليك بعض التعبيرات التي تُقيّم إلى `True` أو `False`:

```python
print(3 > 4) # False
print(3 < 4) # True
print(3 == 4) # False
print(4 == 4) # True
print(3 != 4) # True
print(3 >= 4) # False
print(3 <= 4) # True
```

يمكن استخدام هذه المشغلات في العبارات الشرطية لمقارنة القيم وتنفيذ كود معين بناءً على ما إذا كانت العبارة الشرطية تُقيّم إلى `True` أو `False`.

في Python، أبسط جملة شرطية هي جملة `if`. إليك الصيغة النحوية الأساسية:

```python
if condition:
    pass # Code to execute if condition is True
```

* تبدأ جمل `if` بالكلمة المفتاحية `if`.
    
* `condition` هو تعبير يُقيّم إلى `True` أو `False`، يتبعه نقطتان رأسيتان (`:`).

* يحتوي جسم جملة `if` على <dfn>كتلة كود</dfn>، وهي مجموعة من العبارات التي تنتمي معًا. المسافات في بداية السطر تُسمى المسافة البادئة. في بايثون، تحدد المسافة البادئة العبارات التي تنتمي إلى كتلة الكود.
    
في المثال أعلاه، يحتوي جسم جملة `if` على عبارة `pass`. عند تنفيذ عبارة `pass`، لا يحدث شيء. هذه كلمة مفتاحية خاصة يمكن استخدامها كعنصر نائب للكود المستقبلي، وهي مفيدة عندما لا يُسمح بكتل كود فارغة.

الكود داخل جسم جملة `if` يُنفذ فقط عندما تُقيّم الحالة إلى `True`. على سبيل المثال:

```python
age = 18

if age >= 18:
    print('You are an adult') # You are an adult
```

المسافات الأربع قبل `print('You are an adult')` تُرجع هذا السطر وتضعه داخل كتلة `if`.

الكود التالي سيرجع خطأ `IndentationError`، وهو طريقة بايثون للإشارة إلى أن المسافة البادئة مطلوبة في نقطة معينة من الكود:

```py
age = 18

if age >= 18:
print('You are an adult') # IndentationError: expected an indented block after 'if' statement on line 3
```

على الرغم من أنه يمكنك استخدام أي عدد من الفراغات (طالما كنت متسقًا) لتحديد كل مستوى من مستويات المسافة البادئة، توصي إرشادات نمط Python باستخدام أربع فراغات.

توجد الكتل أيضًا في الحلقات والدوال، والتي ستتعلم عنها في دروس لاحقة.

بالعودة إلى مثالنا، إذا كانت قيمة `age` أقل من `18`، فلن يتم طباعة أي شيء في الطرفية:

```python
age = 12

if age >= 18:
    print('You are an adult') # Nothing shows up in the terminal
```

لكن ماذا لو أردت أيضًا طباعة شيء ما إذا كانت قيمة `age` أقل من `18`؟ هنا يأتي دور بند `else`. بند `else` يُنفذ عندما يكون شرط `if` خاطئًا. إليك الصيغة النحوية لجملة `if…else`:

```python
if condition:
   pass # Code to execute if condition is True
else:
   pass # Code to execute if condition is False
```

على سبيل المثال:

```python
age = 12

if age >= 18:
    print('You are an adult')
else:
    print('You are not an adult yet') # You are not an adult yet
```

لاحظ أنه لا يمكنك وضع أي عبارات بين كتلة `if` وبند `else`. الكود التالي سيرجع خطأ `SyntaxError`:

```python
age = 12

if age >= 18:
    print('You are an adult')
print('Almost there!')
else: # SyntaxError: invalid syntax
    print('You are not an adult yet')
```

قد تكون هناك حالات تريد فيها التعامل مع شروط متعددة. للقيام بذلك، تتيح لك Python توسيع جملة if باستخدام الكلمة المفتاحية `elif` (else if).

إليك الصيغة النحوية:

```python
if condition1:
   pass # Code to execute if condition1 is True
elif condition2:
   pass # Code to execute if condition1 is False and condition2 is True
else:
   pass # Code to execute if all conditions are False
```

على سبيل المثال:

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') # You are a child
```

لاحظ أنه يمكنك استخدام عدد غير محدود من بنود `elif` كما تريد:

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

الآن بعد أن فهمت كيف تعمل مشغلات المقارنة والعبارات الشرطية في بايثون، يمكنك البدء في كتابة برامج تتخذ قرارات بناءً على المنطق والمُدخَل. سواء كنت تقارن القيم أو تتفرع عبر شروط متعددة، هذه الأدوات هي الأساس لكتابة كود مرن ومتجاوب.

# --questions--

## --text--

ماذا تفعل معاملات المقارنة؟

## --answers--

تنفيذ عمليات حسابية رياضية باستخدام القيم المنطقية

### --feedback--

تتحقق هذه المعاملات من أشياء مثل التساوي أو أي قيمة أكبر، والنتيجة تكون إما `True` أو `False`.

---

تحويل السلاسل النصية إلى قيم منطقية.

### --feedback--

تتحقق هذه المعاملات من أشياء مثل التساوي أو أي قيمة أكبر، والنتيجة تكون إما `True` أو `False`.

---

مقارنة قيمتين وإرجاع قيمة منطقية.

---

إنشاء الحلقات والتكرارات.

### --feedback--

تتحقق هذه المعاملات من أشياء مثل التساوي أو أي قيمة أكبر، والنتيجة تكون إما `True` أو `False`.

## --video-solution--

3

## --text--

ما النتيجة للكود التالي؟

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

سيتم طباعة `You are an adult` في الطرفية.

### --feedback--

راجع الجزء الأخير من الدرس للحصول على الإجابة الصحيحة.

---

سيتم طباعة `You are a teenager` في الطرفية.

### --feedback--

راجع الجزء الأخير من الدرس للحصول على الإجابة الصحيحة.

---

سيتم طباعة `You are a child` في الطرفية.

---

سيتم طباعة خطأ في الطرفية.

### --feedback--

راجع الجزء الأخير من الدرس للحصول على الإجابة الصحيحة.

## --video-solution--

3

## --text--

ما القيمة التي سيُقيّم إليها التعبير `3 >= 4`؟

## --answers--

`True`

### --feedback--

3 ليست أكبر من أو تساوي 4.

---

`SyntaxError`

### --feedback--

3 ليست أكبر من أو تساوي 4.

---

`None`

### --feedback--

3 ليست أكبر من أو تساوي 4.

---

`False`

## --video-solution--

4
