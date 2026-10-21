---
id: 6a7ab7ad10d6afbff4dfb799
title: Schritt 34
challengeType: 1
dashedName: step-34
---

# --description--

Testen Sie Ihre Funktion mit zwei Aufrufen von `getInstructorByEmail`: einmal mit der E-Mail `"alejandro@example.com"` und `normalizedData`, 
und einmal mit der E-Mail `"not_found@example.com"` und `normalizedData`.

Protokollieren Sie beide Ergebnisse, um zu bestätigen, dass die Funktion für eine bekannte E-Mail ein Objekt mit den erwarteten Eigenschaften zurückgibt und für eine unbekannte E-Mail `Instructor not found`.

# --before-each--

```js
globalThis.spy = __helpers.spyOn(console, 'log');
```

# --after-each--

```js
globalThis.spy.restore();
delete globalThis.spy;
```

# --hints--

Sie sollten `getInstructorByEmail` mit `"alejandro@example.com"` und `normalizedData` als Argumente aufrufen.

```js
assert.match(
  __helpers.removeJSComments(code),
  /getInstructorByEmail\s*\(\s*["']alejandro@example\.com["']\s*,\s*normalizedData\s*\)/,
);
```

Sie sollten `console.log()` mit dem Ergebnis dieses Aufrufs als Argument aufrufen.

```js
assert.deepInclude(
  spy.calls.flat(),
  getInstructorByEmail('alejandro@example.com', normalizedData),
);
```

Sie sollten `getInstructorByEmail` mit `"not_found@example.com"` und `normalizedData` als Argumente aufrufen.

```js
assert.match(
  __helpers.removeJSComments(code),
  /getInstructorByEmail\s*\(\s*["']not_found@example\.com["']\s*,\s*normalizedData\s*\)/,
);
```

Sie sollten `console.log()` mit dem Ergebnis dieses Aufrufs als Argument aufrufen.

```js
assert.deepInclude(
  spy.calls.flat(),
  getInstructorByEmail('not_found@example.com', normalizedData),
);
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

  return {
    name: instructor.name ?? "Unknown Instructor",
    officeHours: instructor.officeHours ?? "Not Available",
    department: department.name ?? "Unknown Department",
  };
}

console.log(getInstructorByEmail("fatima@example.com", normalizedData));
--fcc-editable-region--

--fcc-editable-region--
```
