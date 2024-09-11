---
id: 6571b2fccc1de61d7b4dd37f
title: Lição A de Introdução ao Flexbox
challengeType: 15
dashedName: introduction-flexbox-lesson-a
---

# --description--

## Before we get started

Flexbox layouts can get a little complicated. Em uma lição anterior, você aprendeu como inspecionar e depurar coisas usando as ferramentas de desenvolvedor do seu navegador. Those tools will be crucial for you in the following lessons. If something isn’t behaving the way you expect, inspecting it in the developer tools should be your first step every time.

Flexbox isn’t necessarily any more difficult than the other concepts that we’ve covered so far, but it does have a few more moving parts. Vai ser um pouco difícil usar qualquer uma das coisas que você está aprendendo nestas primeiras lições até chegar ao fim e conseguir juntar tudo. As we go, do yourself a favor and <strong>play with all of the code examples.</strong>

Você quase definitivamente precisará voltar e se referir a essas lições (ou a alguns dos recursos que compartilhamos com você) quando chegar às atividades no final da seção, mas se você levar seu tempo e experimentar todos os exemplos de código que fornecemos, saberá melhor onde procurar quando esse momento chegar.

## Let’s flex

Flexbox is a way to arrange items into rows or columns. These items will flex (i.e. grow or shrink) based on some simple rules that you can define. To get started, let’s look at a simple demonstration.

> We’ve embedded a lot of interactive examples in these lessons. Take your time to experiment with them as you go to cement the concepts in your mind!

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true"  frameborder="0" height="400" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/QWgNxrp?height=400&amp;default-tab=html%2Cresult&amp;slug-hash=QWgNxrp&amp;editable=true&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="CodePen Embed" loading="lazy"></iframe>

We’ll get into exactly what’s going on here soon enough. But for now, let’s uncomment the two flex related CSS declarations in the above Codepen by removing the `/*` and `*/` tags surrounding them, then check out the result.

> Comments prevent the browser from interpreting lines as code, and are wrapped between specific tags. CSS uses `/*` as an opening comment tag and `*/` as a closing comment tag, while HTML and JavaScript have their own syntax. Commented out lines of code can be re-enabled simply by removing the comment tags surrounding the code.

All 3 divs should now be arranged horizontally. If you resize the results frame with the `1x`, `.5x` and `.25x` buttons you’ll also see that the `div` elements will "flex". They will fill the available area and will each have equal width.

If you add another `div` to the HTML, inside of `.flex-container`, it will show up alongside the others, and everything will flex to fit within the available area.

> If it’s hard to see what's going on in the small embedded CodePen, feel free to click the "Edit on CodePen" or "Fork on CodePen" button. This will bring the example into a full-sized environment. Some of the later examples might especially benefit from doing this.

# --question--

## --text--

What happens when the two flex related CSS declarations in the CodePen are uncommented?

## --answers--

The `div` elements become hidden from view, losing their visibility within the container.

---

All 3 `div` elements are arranged horizontally, and they flex to fill the available area with equal width.

---

Each `div` element enlarges and covers the entire container, overlapping each other.

---

The `div` elements align vertically in a single column, ignoring the flex-related CSS declarations.

## --video-solution--

2
