% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/options.R
\name{setAes}
\alias{setAes}
\title{Set Aesthetics (color, background, animation, border effects) of Echarts}
\usage{
setAes(chart, palette = "asis", bgColor = NULL, renderAsImage = FALSE,
  calculable = TRUE, calculableColor = NULL, calculableHolderColor = NULL,
  animation = TRUE, animationEasing = NULL, animationDuration = NULL,
  width = NULL, height = NULL, ...)
}
\arguments{
\item{chart}{\code{echarts} object generated by \code{\link{echart}} or \code{\link{echartR}}}

\item{palette}{name of the palette or a color vector. Default NULL to get echarts default.
It could be:
\itemize{
 \item \code{asis}: keep the color palette applied in current echarts object
 \item \link{RColorBrewer} palettes: Including 'BrBG', 'PiYG', 'PRGn', 'PuOr', 'RdBu',
 'RdGy', 'RdYlBu', 'RdYlGn', 'Spectral', 'Accent', 'Dark2', 'Paired', 'Pastel1',
 'Pastel2', 'Set1', 'Set2', 'Set3', 'Blues', 'BuGn', 'BuPu', 'GnBu', 'Greens',
 'Greys', 'Oranges', 'OrRd', 'PuBu', 'PuBuGn', 'PuRd', 'Purples', 'RdPu', 'Reds',
 'YlGn', 'YlGnBu', 'YlOrBr', 'YlOrRd' \cr
 \item \link{ggthemes} palettes: 'calc', 'economist', 'economist_white', 'economist_stata',
 'excel', 'exel_fill', 'excel_line', 'excel_new', 'few', 'fivethirtyeight', '538', 'manyeyes',
 'gdocs', 'pander', 'tableau', 'stata', 'stata1','stata1r','statamono', 'ptol',
 'tableau20', 'tableau10medium', 'tableaugray', 'tableauprgy', 'tableaublrd',
 'tableaugnor', 'tableaucyclic', 'tableau10light', 'tableaublrd12', 'tableauprgy12',
 'tableaugnor12','hc','darkunica', 'solarized','solarized_red', 'solarized_yellow',
 'solarized_orange','solarized_magenta','solarized_violet', 'solarized_blue',
 'solarized_cyan', 'solarized_green', 'wsj', 'wsj_rgby', 'wsj_red_green',
 'wsj_black_green', 'wsj_dem_rep', 'colorblind', 'trafficlight' \cr
 \item Aetna official palettes: Including 'aetnagreen', 'aetnablue', 'aetnaviolet',
 'aetnaorange', 'aetnateal', 'aetnacranberry' \cr
 \item Other palettes: 'rainbow', 'terrain', 'topo', 'heat', 'cm'
}
Usage: \cr
\itemize{
 \item Do not set the value and function defaults will be loaded \cr
 \item Set palette=NULL to use Echarts defaults \cr
 \item Set palette=palette name to assign any palette listed above \cr
 \item Set palette=\code{palette name(number)} to restrict number of colors within the
 palette (e.g., \code{palette='calc(3)'} picks 3 colors out of 'calc' \strong{RANDOMLY}) \cr
 \item Set palette=\code{c(color1, color2, color3, ...)} to define a palette vector,
 made of which either color names or Hex expressions. Use \code{\link{colors}()} to check
 available color names and check the effects using \code{demo(colors)}.
}}

\item{bgColor}{Color name/value of the background. Default is transparent
(\code{'rgba(0,0,0,0)'})}

\item{renderAsImage}{Logical. If FALSE, the interactive effects are disabled. Default TRUE.}

\item{calculable}{Logical. If TRUE, the chart is re-calculated after drag. Default TRUE.}

\item{calculableColor}{The border color of the tooltip during \code{calculable} effect.
Default 'rgba(255,165,0,0.6)'.}

\item{calculableHolderColor}{The color of \code{calculableHolder}. Default '#ccc'.}

\item{animation}{Logical. If TRUE, the animation is on at initiation. Default TRUE.
For IE8, it is recommended to set FALSE.}

\item{animationEasing}{The slight moving effect of major elements. Default 'ExponentialOut'.
Other choices: 'Linear', 'QuadraticIn', 'QuadraticOut', 'QuadraticInOut', 'CubicIn',
'CubicOut', 'CubicInOut', 'QuarticIn', 'QuarticOut', 'QuarticInOut', 'QuinticIn',
'QuinticOut', 'QuinticInOut', 'SinusoidalIn', 'SinusoidalOut', 'SinusoidalInOut',
'ExponentialIn', 'ExponentialInOut', 'CircularIn', 'CircularOut', 'CircularInOut',
'ElasticIn', 'ElasticOut', 'ElasticInOut', 'BackIn', 'BackOut', 'BackInOut',
'BounceIn', 'BounceOut', 'BounceInOut'}

\item{animationDuration}{The duration into animation. Default 2000 (ms).}

\item{width}{Width (px) of the whole chart.}

\item{height}{Height (px) of the whole chart.}

\item{...}{Elipsis}
}
\value{
A modified echarts object
}
\description{
Set aesthetics of Echarts, including \code{color, bgColor, animation, calculable,
borderColor, borderWidth}.
When an echart object is generated, you can modify it by setting toolbox using
\code{\link{\%>\%}}.
}
\examples{
\dontrun{
g <- echartR(iris, x=Sepal.Width, y=Petal.Width, series=Species, type='scatter')
g \%>\% setAes('hc')
g \%>\% setAes(c('red', 'gold', 'deepskyblue'), 'gray95',
        animationHoldColor='red', animationEasing='CircularOut',
        animationDuration=10000)
}
}
\references{
\code{backgroundColor}
\url{http://echarts.baidu.com/echarts2/doc/option.html#title~backgroundColor}
\code{colors}
\url{http://echarts.baidu.com/echarts2/doc/option.html#title~color}
\url{http://colorbrewer2.org}
\code{other features}
\url{http://echarts.baidu.com/echarts2/doc/option.html#title~renderAsImage}
\url{http://echarts.baidu.com/echarts2/doc/option.html#title~calculable}
\url{http://echarts.baidu.com/echarts2/doc/option.html#title~animation}
\url{http://echarts.baidu.com/echarts2/doc/option.html#title~calculableColor}
\url{http://echarts.baidu.com/echarts2/doc/option.html#title~calculableHolderColor}
}
\seealso{
\code{\link{brewer.pal}}, \code{\link{colors}}
}

