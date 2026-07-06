---
id: 695cc8f280fef0cc3bed02cb
title: ما هي وحدة process وكيف تعمل؟
challengeType: 19
dashedName: what-is-the-process-module-and-how-does-it-work
---

# --description--

`process` هي واحدة من أهم وحدات Node.js الأساسية. تتيح لك الوصول إلى معلومات حول عملية Node.js الحالية، وتسمح لك بالتحكم بها أثناء تشغيل التطبيق.

عندما تنفذ أمرًا مثل `node script.js` في الطرفية، يبدأ Node.js عملية، وهي نسخة تشغيل من برنامج Node تنفذ ملف `script.js`. تحتوي هذه العملية على ذاكرة وبيئة عمل وسياق تنفيذ خاص بها.

تُتاح العملية الحالية عالميًا عبر وحدة `process`، لذلك لا تحتاج حتى إلى استيرادها. طالما أن Node.js مثبت، يمكنك استدعاؤها في أي مكان.

تعرض وحدة `process` خصائص وطرقًا تتيح لك الحصول على معلومات معينة حول سياق التنفيذ الحالي.

`process.env` يوفر لك معلومات عن بيئة العمل التي يعمل عليها Node حاليًا. هذا يعيد دائمًا كائنًا ضخمًا يحتوي على العديد من المعلمات، لذا إليك كيفية الوصول إلى بعض أهم المعلومات مباشرة:

```js
// Gets all environment variables available to the current Node.js process
console.log(process.env);

// Gets the current Node.js environment mode (like 'development' or 'production')
console.log(process.env.NODE_ENV); // development

// Gets the path of the shell program running the Node.js process
console.log(process.env.SHELL); // /bin/bash

// Gets the system PATH variable where executables are searched for
console.log(process.env.PATH); // /usr/local/bin:/usr/bin:/bin

// Gets the present working directory from where the process was started
console.log(process.env.PWD); // /Users/johndoe/projects/myapp

// Gets the username of the user running the current process
console.log(process.env.USER); // johndoe
```

`process.argv` يتيح لك قراءة المعلمات التي تُمرر عبر سطر الأوامر:

```js
console.log(process.argv);
/*
script.js --watch
Hello world
[
  '/Users/user/.nvm/versions/node/v22.17.0/bin/node',
  '/Users/user/Desktop/fCC/script-code/node/node-process/script.js',
  '--watch'
]
*/
```

تُظهر الطريقة `cwd()` دليل العمل الحالي:

```js
console.log(process.cwd());
```

الأحداث في process هي ميزة أساسية في Node.js تتيح لتطبيقك الاستجابة للحظات مهمة في دورة حياته، مثل اقتراب الخروج، أو حدوث خطأ، أو استقبال إشارة من النظام.

على سبيل المثال، حدث `exit` يُنفذ مباشرة قبل انتهاء عملية Node.js:

```js
process.on("exit", (code) => {
  console.log(`Process exiting with code: ${code}`);
});

// Process exiting with code: 0
```

يُطلق حدث `uncaughtException` عندما لا يتم التقاط خطأ في شفرتك، مما يساعدك على منع تعطل التطبيق:

```js
process.on("uncaughtException", (err) => {
  console.error("Uncaught error:", err.message);
});
```

أخيرًا، يُطلق حدث `warning` عندما يصدر Node.js تحذيرًا من العملية:

```js
process.on("warning", (warning) => {
  console.warn("Warning name:", warning.name);
  console.warn("Warning message:", warning.message);
});
```

يمكنك بعد ذلك استخدام الطريقة `emitWarning()` لإطلاق تحذير مخصص:

```js
// Example warning with the emitWarning() method
process.emitWarning('This is a custom warning message', 'CustomWarning');

/*
  Warning name: CustomWarning
  Warning message: This is a custom warning message
*/
```

# --questions--

## --text--

ماذا تفعل الطريقة `process.emitWarning()`؟

## --answers--

توقف العملية عند حدوث تحذير مخصص.

### --feedback--

فكر في كيفية تعامل Node.js مع التحذيرات المخصصة عبر الأحداث.

---

تُطلق حدث تحذير مخصص يمكن معالجته بواسطة مستمع التحذير.

---

تسجل خطأ وتخرج من العملية فورًا.

### --feedback--

فكر في كيفية تعامل Node.js مع التحذيرات المخصصة عبر الأحداث.

---

تعيد تشغيل عملية Node.js بعد عرض التحذير.

### --feedback--

فكر في كيفية تعامل Node.js مع التحذيرات المخصصة عبر الأحداث.

## --video-solution--

2

## --text--

كيف تستخدم وحدة process؟

## --answers--

بالاستدعاء المباشر لأنها كائن عالمي.

---

بتمكينها في ملف إعدادات Node.js.

### --feedback--

فكر لماذا يمكنك الوصول إلى process في أي مكان بدون إعداد.

---

بتثبيتها يدويًا باستخدام npm قبل الاستدعاء.

### --feedback--

فكر لماذا يمكنك الوصول إلى process في أي مكان بدون إعداد.

---

باستيرادها باستخدام require('process') قبل كل استخدام.

### --feedback--

فكر لماذا يمكنك الوصول إلى process في أي مكان بدون إعداد.

## --video-solution--

1

## --text--

ما استخدامات أحداث process؟

## --answers--

لتعريف متغيرات البيئة للتطبيق.

### --feedback--

فكر في كيفية استجابة Node.js لتغيرات دورة الحياة أثناء التنفيذ.

---

لإنشاء عمليات جديدة للتنفيذ المتوازي.

### --feedback--

فكر في كيفية استجابة Node.js لتغيرات دورة الحياة أثناء التنفيذ.

---

للاستماع والاستجابة للحظات مهمة في دورة الحياة مثل الخروج، الأخطاء، أو إشارات النظام.

---

لإدارة مسارات الملفات والامتدادات في النظام.

### --feedback--

فكر في كيفية استجابة Node.js لتغيرات دورة الحياة أثناء التنفيذ.

## --video-solution--

3
