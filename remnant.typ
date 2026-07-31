#import "template.typ" : *

== Text-mined literature dataset of predicted metastable from DFT phases

#let data = csv("table/50mev_summary.csv")

#let cellify(s) = {
  let s = s.trim()
  if s.starts-with("@") {
    cite(label(s.slice(1)))
  } else {
    s
  }
}

#figure(
table(
  columns: (12%,15%,50%,13%),align:(left,right,left,left),
  [Phase],[$E$ above hull], [Conclusion on metastability], [Reference],
  table.hline(start: 0,stroke:0.4pt),
  ..data.map(row => row.map(cellify)).flatten(),

),
caption:[List of product phases from #textcite(<kononova2019TextminedDataset>) solid state synthesis dataset excluding reactions involving gases which are reported >50 meV/at above the hull in the Materials Project, @jain2013CommentaryMaterials and experimental determination of their stability.],
)

== Experimental thermochemical data in literature
// Look closer at the Ln-Fe-O hell


== Experimental synthesis and calorimetry