sci = (x) -> x.toExponential()
commas = (x) -> x.toLocaleString()
log10 = (x) -> log(x)/log(10)

$blab.defs = {sci, commas, log10}
