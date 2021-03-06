import plotly
import random
let
  d = Trace[int](`type`: PlotType.Histogram)

# using ys will make a horizontal bar plot
# using xs will make a vertical.
d.ys = newSeq[int](200)

for i, x in d.ys:
  d.ys[i] = rand(20)

for i in 0..40:
  d.ys[i] = 12

let
  layout = Layout(title: "histogram", width: 1200, height: 400,
                  xaxis: Axis(title:"values"),
                  yaxis: Axis(title: "frequency"),
                  autosize: false)
  p = Plot[int](layout: layout, traces: @[d])
p.show()
