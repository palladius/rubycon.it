## CSS Errors

Note there are GH issues with an outage caused by LLM removing this file:

* you tend to make errors on CSS, see `doc/CSS_ERRORS.md` rubycon.it/assets/css/variables.scss


## dos and donts

1. do NOT REMOVE this file `rubycon.it/assets/css/style.scss`: it ensures the red background, WE NEED IT!
2. Some syntax highlighter in Riccardo screws up this:

### BAd SCSS 

FROM THIS (correct):
```scss
---
---
@use "variables";
```

TO THIS (bad):
```scss
--- --- @use "variables";
```
