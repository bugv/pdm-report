#import "template.typ" : *
#show: template.with(standalone: false)

#title[Thesis draft]
Tenatitve title : 
Conditions for the solid state synthesis of phases metastable at synthesis conditions



#heading("Abstract",numbering: none)
// #heading("Acknowledgements",numbering:none)
// thank ZKS & Haenny. Do not thank Haenny in the version for ZKS.

#outline(depth:2)


= Introduction
#include("intro.typ")

= State of the art
<s_sota>
#include("sota.typ")

= Methods
<s_methods> 
#include("methods.typ")

= Categorization of solid state synthesis selectivity regimes and hypotheses for the synthesis of metastable phases
<s_hypo>
#include("hypo.typ")



= Remnant metastability in traditional solid state synthesis
<s_remnant>
// #include("remnant.typ")


= Reliability of density functional theory data compilation in the materials project for stability prediction
<s_dft>


= Search for nucleation control in solid state synthesis
<s_nucleation>


= Conclusion

// = Lab safety : precursor partial pressures and safe maximum temperature for precursors for synthesis without exhaust

#counter(heading).update(0)
#set heading(numbering: "A.",supplement: [Appendix])

// = Excluded phases
// <a_excl_phases_50meV>

// #table(
//   columns:2,
//   [Ni(AgO)2], [high pressure synthesis],
//   [Cu2GeO4], [high pressure synthesis],
//   [SrOsO3], [high pressure synthesis],
//   [ZnP2O5], [non-crystalline phase],
//   [SnPbO3], [doped SnO2, no bulk SnPbO3],
//   [Li4V3O8], [sol-gel synthesis]
// )

#chem-toggle(false) // otherwise it messes up dois and such
#bibliography("CEDER.bib",style: "american-chemical-society")