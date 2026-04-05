---
id: 6143a83fcc32c26bcfae3efa
title: 18단계
challengeType: 0
dashedName: step-18
---

# --description--

`.text` 요소 아래에 새로운 `section` 요소를 만들고 `class`의 `text text-with-images`를 지정하세요. 그 안에 `article`로 설정된 `class`를 가진 `brief-history` 요소와 `aside`로 설정된 `class`를 가진 `image-wrapper` 요소를 만드세요.

# --hints--

새로운 `section` 요소를 만들어야 합니다.

```js
assert(document.querySelectorAll('section')?.length === 3)
```

새로운 `section` 요소는 `.text` 요소 뒤에 와야 합니다.

```js
assert(document.querySelectorAll('section')?.[2]?.previousElementSibling?.className === 'text')
```

새로운 `section` 요소는 `class`로 설정된 `text text-with-images`를 가져야 합니다.

```js
assert(document.querySelectorAll('section')?.[2]?.className === 'text text-with-images')
```

새로운 `section` 요소는 `article` 요소를 가져야 합니다.

```js
assert.exists(document.querySelector('.text-with-images article'));
```

새로운 `section` 요소는 `aside` 요소를 가져야 합니다.

```js
assert.exists(document.querySelector('.text-with-images aside'));
```

`article` 요소는 `aside` 요소 앞에 와야 합니다.

```js
assert(document.querySelector('.text-with-images article')?.nextElementSibling?.localName === 'aside');
```

`article` 요소는 `class`로 설정된 `brief-history`를 가져야 합니다.

```js
assert(document.querySelector('.text-with-images article')?.className === 'brief-history');
```

`aside` 요소는 `class`로 설정된 `image-wrapper`를 가져야 합니다.

```js
assert(document.querySelector('.text-with-images aside')?.className === 'image-wrapper');
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Magazine</title>
    <link
      href="https://fonts.googleapis.com/css?family=Anton%7CBaskervville%7CRaleway&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
    />
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <main>
      <section class="heading">
        <header class="hero">
          <img
            src="https://cdn.freecodecamp.org/platform/universal/fcc_meta_1920X1080-indigo.png"
            alt="freecodecamp logo"
            loading="lazy"
            class="hero-img"
            width="400"
          />
          <h1 class="hero-title">OUR NEW CURRICULUM</h1>
          <p class="hero-subtitle">
            Our efforts to restructure our curriculum with a more project-based
            focus
          </p>
        </header>
        <div class="author">
          <p class="author-name">
            By
            <a href="https://freecodecamp.org" target="_blank" rel="noreferrer"
              >freeCodeCamp</a
            >
          </p>
          <p class="publish-date">March 7, 2019</p>
        </div>
        <div class="social-icons">
          <a href="https://www.facebook.com/freecodecamp/">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="https://twitter.com/freecodecamp/">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="https://instagram.com/freecodecamp">
            <i class="fab fa-instagram"></i>
          </a>
          <a href="https://www.linkedin.com/school/free-code-camp/">
            <i class="fab fa-linkedin-in"></i>
          </a>
          <a href="https://www.youtube.com/freecodecamp">
            <i class="fab fa-youtube"></i>
          </a>
        </div>
      </section>
      <section class="text">
        <p class="first-paragraph">
          Soon the freeCodeCamp curriculum will be 100% project-driven learning. Instead of a series of coding challenges, you'll learn through building projects - step by step. Before we get into the details, let me emphasize: we are not changing the certifications. All 6 certifications will still have the same 5 required projects. We are only changing the optional coding challenges.
        </p>
        <p>
          After years - years - of pondering these two problems and how to solve them, I slipped, hit my head on the sink, and when I came to I had a revelation! A vision! A picture in my head! A picture of this! This is what makes time travel possible: the flux capacitor!
        </p>
        <p>
          It wasn't as dramatic as Doc's revelation in Back to the Future. It
          just occurred to me while I was going for a run. The revelation: the entire curriculum should be a series of projects. Instead of individual coding challenges, we'll just have projects, each with their own seamless series of tests. Each test gives you just enough information to figure out how to get it to pass. (And you can view hints if that isn't enough.)
        </p>
        <blockquote>
          <hr />
          <p class="quote">
            The entire curriculum should be a series of projects
          </p>
          <hr />
        </blockquote>
        <p>
          No more walls of explanatory text. No more walls of tests. Just one
          test at a time, as you build up a working project. Over the course of passing thousands of tests, you build up projects and your own understanding of coding fundamentals. There is no transition between lessons and projects, because the lessons themselves are baked into projects. And there's plenty of repetition to help you retain everything because - hey - building projects in real life has plenty of repetition.
        </p>
        <p>
          The main design challenge is taking what is currently paragraphs of explanation and instructions and packing them into a single test description text. Each project will involve dozens of tests like this. People will be coding the entire time, rather than switching back and forth from "reading mode" to "coding mode".
        </p>
        <p>
          Instead of a series of coding challenges, people will be in their code editor passing one test after another, quickly building up a project. People will get into a real flow state, similar to what they experience when they build the required projects at the end of each certification. They'll get that sense of forward progress right from the beginning. And freeCodeCamp will be a much smoother experience.
        </p>
      </section>
--fcc-editable-region--

--fcc-editable-region--
    </main>
  </body>
</html>
```

```css

```
