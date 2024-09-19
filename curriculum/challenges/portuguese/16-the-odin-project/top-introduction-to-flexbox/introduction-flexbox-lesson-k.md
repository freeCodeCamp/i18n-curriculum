---
id: 6597b43d854b3fa8e35d66d7
title: Lição K de Introdução ao Flexbox
challengeType: 15
dashedName: introduction-flexbox-lesson-k
---

# --description--

<iframe allowfullscreen="true" allowpaymentrequest="true"
style="width: 100%; overflow:hidden; display:block;"
allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="400" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/MWoyBzR?height=400&amp;default-tab=html%2Cresult&amp;slug-hash=MWoyBzR&amp;editable=true&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" title="CodePen incorporado" loading="lazy" id="cp_embed_MWoyBzR"></iframe>

Para mudar o posicionamento dos itens ao longo do eixo transversal, use `align-items`. Tente colocar as caixas no centro do contêiner adicionando `align-items: center` ao `.container`. O resultado desejado tem esta aparência:

<img src="https://cdn.freecodecamp.org/curriculum/odin-project/flex-box/flexbox-06.png" alt="três quadrados azuis centralizados no meio do contêiner flexível" style="margin: 15px 0" />

Como `justify-content` e `align-items` são baseados no eixo principal e no eixo transversal do seu contêiner, o comportamento muda quando você muda a flex-direction de um contêiner flexível. Por exemplo, quando você altera `flex-direction` para `column`, `justify-content` alinha verticalmente e `align-items` alinha horizontalmente. O comportamento mais comum, no entanto, é o padrão, ou seja, `justify-content` alinha os itens na horizontal (pois o eixo principal é o horizontal por padrão) e `align-items` os alinha na vertical. Um dos maiores pontos de confusão para iniciantes com flexbox é quando esse comportamento muda.

# --assignment--

Antes de passar para a próxima lição, veja se você consegue entender como `align-items` se comporta quando você muda a propriedade `flex-direction` para `column`.

# --questions--

## --text--

Ao mudar a propriedade `flex-direction` para `column` em um contêiner flexível, como `align-items` se comporta em relação aos itens flexíveis?

## --answers--

Ele distribui espaço entre os itens uniformemente.

---

Ele alinha os itens horizontalmente ao longo do eixo principal.

---

Ele centraliza os itens verticalmente ao longo do eixo transversal.

---

Ele alinha os itens ao início do contêiner ao longo do eixo transversal.

## --video-solution--

3
