<h3 align="center">
<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
Catppuccin for
<a href="https://github.com/catppuccin/template">ggplot</a>
<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>
<p align="center">
<a href="https://github.com/albert-ying/catppuccin/stargazers"><img src="https://img.shields.io/github/stars/albert-ying/catppuccin?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
<a href="https://github.com/albert-ying/catppuccin/issues"><img src="https://img.shields.io/github/issues/albert-ying/catppuccin?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
<a href="https://github.com/albert-ying/catppuccin/contributors"><img src="https://img.shields.io/github/contributors/albert-ying/catppuccin?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>
<p align="center">
<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/previews/preview.webp"/>
</p>

## Previews

🌻 Latte</su

```
## `geom_smooth()` using formula 'y ~ x'
```

![](README_files/figure-markdown_strict/unnamed-chunk-2-1.png)

🪴 Frappé</su


```
## `geom_smooth()` using formula 'y ~ x'
```

![](README_files/figure-markdown_strict/unnamed-chunk-3-1.png)

🌺 Macchiato</su


```
## `geom_smooth()` using formula 'y ~ x'
```

![](README_files/figure-markdown_strict/unnamed-chunk-4-1.png)

🌿 Mochaary>

    ## `geom_smooth()` using formula 'y ~ x'

![](README_files/figure-markdown_strict/unnamed-chunk-5-1.png)

## Installation


    # install.packages("devtools")
    devtools::install_github("albert-ying/catppuccin")

## Usage

      library(ggplot2)
      library(catppuccin)

      ggplot(mtcars, aes(mpg, wt)) +
        geom_point(aes(colour = factor(cyl))) +
        scale_colour_catppuccin(palette = "latte") +
        theme_bw()

![](README_files/figure-markdown_strict/unnamed-chunk-7-1.png)

      ggplot(mtcars, aes(mpg, wt)) +
        geom_point(aes(colour = hp)) +
        scale_colour_catppuccin(palette = "frappe", discrete = FALSE) +
        theme_bw()

    ## Warning in scale_colour_catppuccin(palette = "frappe", discrete = FALSE): This
    ## palette has not been optimized for linear perception. Use at your own risk.

![](README_files/figure-markdown_strict/unnamed-chunk-8-1.png)

      ggplot(data = mpg) +
        geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
        scale_colour_catppuccin(palette = "macchiato") +
        theme_bw()

![](README_files/figure-markdown_strict/unnamed-chunk-9-1.png)

      ggplot(diamonds) +
        geom_bar(aes(x = cut, fill = clarity)) +
        scale_fill_catppuccin() +
        theme_bw()

![](README_files/figure-markdown_strict/unnamed-chunk-10-1.png)

 

<p align="center">
<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>
<p align="center">
<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
