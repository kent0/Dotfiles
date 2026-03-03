using DelimitedFiles
using Plots
using LaTeXStrings

plot_font = "Computer Modern"
default(
    fontfamily=plot_font,
    linewidth=2,
    framestyle=:box,
    label=nothing,
    grid=false
)
