#' Islamic palette with ramped colors
#'
#' @param palette Choose from \code{\link{catppuccin_palettes}} list.
#' @param alpha Transparency.
#' @param reverse If TRUE, the direction of the colors is reversed.
#'
#' @examples
#' library(scales)
#' show_col(catppuccin_pal()(10))
#'
#' filled.contour(volcano, color.palette = catppuccin_pal(), asp = 1)
#' @importFrom grDevices colorRampPalette
#' @export
catppuccin_pal <- function(palette = "mocha", alpha = 1, reverse = FALSE) {
  pal <- catppuccin_palettes[[palette]]
  if (reverse) {
    pal <- rev(pal)
  }
  return(colorRampPalette(pal, alpha))
}

#' Setup color palette for ggplot2
#'
#' @rdname scale_color_catppuccin
#' @param palette Choose from \code{\link{catppuccin_palettes}} list.
#' @param reverse Logical, whether to reverse the order of the colors.
#' @param alpha Transparency.
#' @param discrete Whether to use a discrete color palette.
#' @param ... Additional arguments to pass to \code{\link[ggplot2]{scale_color_gradientn}}.
#' @inheritParams viridis::scale_color_viridis
#' @importFrom ggplot2 scale_color_gradientn discrete_scale
#' @importFrom viridis scale_color_viridis
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = factor(cyl))) +
#'   scale_colour_catppuccin(palette = "latte")
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = hp)) +
#'   scale_colour_catppuccin(palette = "frappe", discrete = FALSE)
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_catppuccin(palette = "macchiato")
#' ggplot(diamonds) +
#'   geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_catppuccin()
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_catppuccin <- function(..., palette = "mocha",
                                   discrete = TRUE, alpha = 1, reverse = FALSE) {
  if (discrete) {
    discrete_scale("color", "catppuccin",
      palette = catppuccin_pal(palette, alpha = alpha, reverse = reverse)
    )
  } else {
    warning("This palette has not been optimized for linear perception. Use at your own risk.")
    scale_color_gradientn(colours = catppuccin_pal(palette,
      alpha = alpha,
      reverse = reverse, ...
    )(256))
  }
}

#' @rdname scale_color_catppuccin
#' @export
scale_colour_catppuccin <- scale_color_catppuccin

#' Setup fill palette for ggplot2
#'
#' @param palette Choose from \code{\link{catppuccin_palettes}} list.
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams catppuccin_pal
#'
#' @param discrete Whether to use a discrete color palette.
#' @param ... Additional arguments to pass to \code{\link[ggplot2]{scale_fill_gradientn}}.
#' @importFrom ggplot2 scale_fill_gradientn
#'
#' @export
scale_fill_catppuccin <- function(..., palette = "mocha",
                                  discrete = TRUE, alpha = 1, reverse = TRUE) {
  if (discrete) {
    discrete_scale("fill", "catppuccin",
      palette = catppuccin_pal(palette, alpha = alpha, reverse = reverse)
    )
  } else {
    warning("This palette has not been optimized for linear perception. Use at your own risk.")
    scale_fill_gradientn(colors = catppuccin_pal(palette,
      alpha = alpha,
      reverse = reverse, ...
    )(256))
  }
}

if (FALSE) {
  library(ggplot2)
  library(catppuccin)
  library(gridExtra)
  ## set ggplo2 theme
data("diamonds")
p1 <- ggplot(
  subset(diamonds, carat >= 2.2),
  aes(x = table, y = price, colour = cut)
) +
  geom_point(alpha = 0.7) +
  geom_smooth(method = "loess", alpha = 0.05, size = 1, span = 1) +
  theme_bw() +
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )
p2 <- ggplot(
  subset(diamonds, carat > 2.2 & depth > 55 & depth < 70),
  aes(x = depth, fill = cut)
) +
  geom_histogram(colour = "black", binwidth = 1, position = "dodge") +
  theme_bw() +
  theme(
    axis.title.x = element_blank(),
    axis.title.y = element_blank()
  )
### NPG

p1_npg <- p1 + scale_color_catppuccin()
p2_npg <- p2 + scale_fill_catppuccin()
grid.arrange(p1_npg, p2_npg, ncol = 2)
}
