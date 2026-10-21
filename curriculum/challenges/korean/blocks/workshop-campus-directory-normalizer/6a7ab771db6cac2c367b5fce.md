---
id: 6a7ab771db6cac2c367b5fce
title: 단계 33
challengeType: 1
dashedName: step-33
---

# --description--

일부 `instructors`에는 `officeHours`가 없으며, 다른 필드도 누락되어 있을 가능성이 있습니다. 
`nullish coalescing operator (??)`는 왼쪽 값을 반환하지만, 
그 값이 `null` 또는 `undefined`인 경우에는 
대신 오른쪽 값을 반환합니다.  

`||`와 달리, `0`이나 `""` 같은 다른 거짓 같은 값들은 누락된 것으로 처리하지 않습니다.

```js
const userName = null;
const displayName = userName ?? "Guest";
console.log(displayName); // "Guest"
```

이제 `getInstructorByEmail` 함수에서 세 가지 프로퍼티를 가진 객체를 반환하세요:

`name`: `instructor.name`, 없으면 "Unknown Instructor"를 사용  
`officeHours`: `instructor.officeHours`, 없으면 "Not Available"를 사용  
`department`: `department.name`, 없으면 "Unknown Department"를 사용

객체를 반환하기 전에 이전 단계에서 `console.log(department)`를 삭제하세요.

# --hints--

`console.log(department);`를 삭제하세요.

```js
assert.notMatch(
  __helpers.removeJSComments(code),
  /console\s*\.\s*log\s*\(\s*department\s*\)/,
);
```

`"fatima@example.com"`에 대해 함수는 Fatima의 이름, 근무 시간, 부서 이름을 반환해야 합니다.

```js
assert.deepEqual(getInstructorByEmail('fatima@example.com', normalizedData), {
  name: 'Fatima',
  officeHours: 'Mon-Wed 10AM-2PM',
  department: 'Computer Science',
});
```

`"sofia@example.com"`에 대해 함수는 Sofia의 이름과 부서 이름을 반환하고, 누락된 근무 시간에는 `"Not Available"`을 사용해야 합니다.

```js
assert.deepEqual(getInstructorByEmail('sofia@example.com', normalizedData), {
  name: 'Sofia',
  officeHours: 'Not Available',
  department: 'Business Administration',
});
```

함수는 `null`이나 `undefined` 필드에 대해 대체 텍스트를 사용하고, 다른 거짓 같은 값들은 그대로 유지해야 합니다.

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
