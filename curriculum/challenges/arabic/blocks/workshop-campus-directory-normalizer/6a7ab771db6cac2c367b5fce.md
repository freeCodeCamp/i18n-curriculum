---
id: 6a7ab771db6cac2c367b5fce
title: الخطوة 33
challengeType: 1
dashedName: step-33
---

# --description--

بعض `instructors` يفتقدون `officeHours`، ومن الممكن أن تكون حقول أخرى مفقودة أيضًا.
يرجع `nullish coalescing operator (??)` القيمة الموجودة على اليسار
إلا إذا كانت تلك القيمة `null` أو `undefined`، ففي هذه الحالة يرجع القيمة على اليمين
بدلاً من ذلك.

على عكس `||`، لا يعامل القيم الأخرى الخاطئة مثل `0` أو `""` على أنها مفقودة.

```js
const userName = null;
const displayName = userName ?? "Guest";
console.log(displayName); // "Guest"
```

الآن يجب أن تُرجع كائنًا من دالة `getInstructorByEmail` بثلاث خصائص:

`name`: `instructor.name`، مع النظام البديل "Unknown Instructor"  
`officeHours`: `instructor.officeHours`، مع النظام البديل "Not Available"  
`department`: `department.name`، مع النظام البديل "Unknown Department"

قبل إرجاع الكائن، احذف `console.log(department)` من الخطوة السابقة.

# --hints--

يجب حذف `console.log(department);`.

```js
assert.notMatch(
  __helpers.removeJSComments(code),
  /console\s*\.\s*log\s*\(\s*department\s*\)/,
);
```

بالنسبة لـ `"fatima@example.com"`، يجب أن تُرجع دالتك اسم فاطمة، وساعات المكتب، واسم القسم.

```js
assert.deepEqual(getInstructorByEmail('fatima@example.com', normalizedData), {
  name: 'Fatima',
  officeHours: 'Mon-Wed 10AM-2PM',
  department: 'Computer Science',
});
```

بالنسبة إلى `"sofia@example.com"`، يجب أن تُرجع الدالة اسم Sofia واسم القسم، مع `"Not Available"` لساعات المكتب المفقودة.

```js
assert.deepEqual(getInstructorByEmail('sofia@example.com', normalizedData), {
  name: 'Sofia',
  officeHours: 'Not Available',
  department: 'Business Administration',
});
```

يجب أن تستخدم دالتك نص النظام البديل للحقول التي قيمتها `null` أو `undefined` وتحافظ على القيم الخاطئة الأخرى.

```js
for (const value of [null, undefined, '', 0, false]) {
  const fixture = {
    instructorsByEmail: { 'test@example.com': 'I' },
    instructorsById: {
      I: { name: value, officeHours: value, departmentId: 'D' },
    },
    departmentsById: { D: { name: value } },
  };
  assert.deepEqual(getInstructorByEmail('test@example.com', fixture), {
    name: value ?? 'Unknown Instructor',
    officeHours: value ?? 'Not Available',
    department: value ?? 'Unknown Department',
  });
}
```

# --seed--

## --seed-contents--

```js
const rawData = {
  "Computer Science": {
    Dept_code: "CSE",
    programs: [
      {
        id: "CSE101",
        name: "Database Management System",
        room: "405",
        instructors: [
          { id: "INS001", name: "Alejandro", email: "alejandro@example.com", officeHours: "Sun-Tue 10AM-12PM" },
          { id: "INS002", name: "Kenji", officeHours: null },
        ],
      },
      {
        id: "CSE102",
        name: "Data Structures",
        room: null,
        instructors: [
          { id: "INS003", name: "Fatima", email: "fatima@example.com", officeHours: "Mon-Wed 10AM-2PM" },
        ],
      },
      {
        id: "CSE103",
        name: "Operating Systems",
        room: "401",
        instructors: [
          { id: "INS005", name: "Wei", email: "wei@example.com", officeHours: "Thu 1PM-3PM" },
        ],
      },
    ],
  },
  "Business Administration": {
    Dept_code: "BBA",
    programs: [
      {
        id: "BBA101",
        name: "Financial Accounting",
        room: "201",
        instructors: [{ id: "INS004", name: "Sofia", email: "sofia@example.com" }],
      },
      {
        id: "BBA102",
        name: "Marketing Management",
        room: "204",
        instructors: [
          { id: "INS006", name: "Robin", email: "robin@example.com", officeHours: "Tue-Thu 9AM-11AM" },
        ],
      },
      {
        id: "BBA103",
        name: "Business Law",
        room: "203",
        instructors: [
          { id: "INS007", name: "Priya", email: "priya@example.com", officeHours: "Mon 2PM-4PM" },
        ],
      },
    ],
  },
};


function normalizeDirectory(rawData) {
  const departmentsById = {};
  const programsById = {};
  const instructorsById = {};
  const instructorsByEmail = {};

  const departmentEntries = Object.entries(rawData);

  for (let i = 0; i < departmentEntries.length; i++) {

    const [departmentName, departmentData] = departmentEntries[i];

    const departmentId = departmentData.Dept_code || `dept-${i + 1}`;

    departmentsById[departmentId] = {
      id: departmentId,
      code: departmentData.Dept_code,
      name: departmentName,
      programIds: [],
    };

    for (let j = 0; j < departmentData.programs.length; j++) {
      const program = departmentData.programs[j];

      programsById[program.id] = {
        ...program,
        departmentId,
      };

      departmentsById[departmentId].programIds.push(program.id);
      for (let k = 0; k < program.instructors.length; k++) {
        const instructor = program.instructors[k];

        instructorsById[instructor.id] = {
          ...instructor,
          programId: program.id,
          departmentId,
        };

        if (instructor.email) {
          instructorsByEmail[instructor.email] = instructor.id;
        }
      }
    }
  }

  return {
    departmentsById,
    programsById,
    instructorsById,
    instructorsByEmail,
  };
}

const normalizedData = normalizeDirectory(rawData);


function getInstructorByEmail(email, normalizedData) {
  const instructorId = normalizedData.instructorsByEmail[email];

  if (!instructorId) {
    return "Instructor not found";
  }

  const instructor = normalizedData.instructorsById[instructorId];
  const department = normalizedData.departmentsById[instructor.departmentId];

--fcc-editable-region--
  console.log(department);
  return null;
--fcc-editable-region--
}

console.log(getInstructorByEmail("fatima@example.com", normalizedData));
```
