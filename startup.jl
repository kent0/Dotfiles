using DelimitedFiles
using Plots
using LaTeXStrings

plot_font = "Computer Modern"
default(
    fontfamily=plot_font,
    linewidth=1.5,
    framestyle=:box,
    label=nothing,
    grid=false
)
