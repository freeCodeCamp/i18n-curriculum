---
id: 6a7ab771db6cac2c367b5fce
title: 步骤 33
challengeType: 1
dashedName: step-33
---

# --description--

有些 `instructors` 缺少 `officeHours`，其他字段也可能缺失。 
`nullish coalescing operator (??)` 会返回其左侧的值， 
除非该值为 `null` 或 `undefined`， 
在这种情况下则返回右侧的值。  

与 `||` 不同，它不会将其他假值（比如 `0` 或 `""`）视为缺失。

```js
const userName = null;
const displayName = userName ?? "Guest";
console.log(displayName); // "Guest"
```

现在你应该从 `getInstructorByEmail` 函数返回一个包含三个属性的对象：

`name`：`instructor.name`，如果缺失则使用“Unknown Instructor”  
`officeHours`：`instructor.officeHours`，如果缺失则使用“Not Available”  
`department`：`department.name`，如果缺失则使用“Unknown Department”

在返回对象之前，删除上一步中的 `console.log(department)`。

# --hints--

你应该删除 `console.log(department);`。

```js
assert.notMatch(
  __helpers.removeJSComments(code),
  /console\s*\.\s*log\s*\(\s*department\s*\)/,
);
```

对于 `"fatima@example.com"`，你的函数应该返回 Fatima 的名字、办公时间和部门名称。

```js
assert.deepEqual(getInstructorByEmail('fatima@example.com', normalizedData), {
  name: 'Fatima',
  officeHours: 'Mon-Wed 10AM-2PM',
  department: 'Computer Science',
});
```

对于 `"sofia@example.com"`，你的函数应该返回 Sofia 的名字和部门名称，对于缺失的 officeHours 返回 `"Not Available"`。

```js
assert.deepEqual(getInstructorByEmail('sofia@example.com', normalizedData), {
  name: 'Sofia',
  officeHours: 'Not Available',
  department: 'Business Administration',
});
```

你的函数应该对 `null` 或 `undefined` 字段使用备用文本，同时保留其他假值。

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
