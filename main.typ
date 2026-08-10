#import "template.typ" : *
#show: template.with(standalone: false)

#title[Thesis draft - version 2]
Tenatitve title : 
Solid state reactions of phases metastable at synthesis conditions


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


= Remnant metastability in traditional solid state synthesis
<s_remnant>
#include("remnant.typ")

= Categorization of solid state synthesis selectivity regimes and hypotheses for the synthesis of metastable phases
<s_hypo>
#include("hypo.typ")

= Polymorph formation in Ta2CuO6 solid state synthesis
<s_Ta2CuO6>
// == Reaction pathway from in-situ XRD

// == Implications for nucleation selectivity

= Search for nucleation control in solid state synthesis reactions involving low melting point precursors
// <s_nucleation>
// #include("nucleation_selectivity.typ")

= Conclusion


#chem-toggle(false) // otherwise it messes up dois and such
#bibliography("CEDER.bib",style: "american-chemical-society")
#chem-toggle(true) // otherwise it messes up dois and such

#counter(heading).update(0)
#set heading(numbering: "A.1",supplement: [Appendix])

// = Lab safety : precursor partial pressures and safe maximum temperature for precursors for synthesis without exhaust


= Excluded phases from the #textcite(<kononova2019TextminedDataset>) dataset
<a_excl_phases_50meV>

#table(
  columns:2,
  [Ni(AgO)2], [high pressure synthesis],
  [Cu2GeO4], [high pressure synthesis],
  [SrOsO3], [high pressure synthesis],
  [ZnP2O5], [non-crystalline phase],
  [SnPbO3], [doped SnO2, no bulk SnPbO3],
  [Li4V3O8], [sol-gel synthesis]
)

= Convex hulls
<a_convex_hulls>

// #let names = {
//   let raw = read("fig/hull_index.txt")
//   raw.split("\n").map(s => s.trim()).filter(s => s != "")
// }


// #for f in names {
//   image("fig/hulls_gasless_50meV/" + f, width: 80%)
// }

// Al2CuO4
#image("fig/hulls_gasless_50meV/hull_evolution_Al2CuO4_CuO_Al2O3.pdf", width: 80%)
// CeVO4
#image("fig/hulls_gasless_50meV/hull_evolution_CeVO4_V2O5_Ce2O3.pdf", width: 80%)

#image("fig/hulls_gasless_50meV/hull_evolution_CuWO4_CuO_WO3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Eu2CuO4_CuO_Eu2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Eu2Ti2O7_TiO2_Eu2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_EuAlO3_Eu2O3_Al2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_EuFeO3_Eu2O3_Fe2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Fe12PbO19_PbO_Fe2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Fe2NiO4_NiO_Fe2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Gd2Zr2O7_ZrO2_Gd2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Gd3Fe5O12_Gd2O3_Fe2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_In2(WO4)3_WO3_In2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_La2Hf2O7_HfO2_La2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_La2PdO4_PdO_La2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_LaMnO3_Mn2O3_La2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Lu3Fe5O12_Lu2O3_Fe2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Mn2NiO4_NiO_Mn2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Nd2NiO4_NiO_Nd2O3.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Sc2Cu2O5_Sc2O3_CuO.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_SnWO4_WO3_SnO.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Ta2CuO6_CuO_Ta2O5.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_VCuO3_V2O5_Cu2O.pdf", width: 80%)
#image("fig/hulls_gasless_50meV/hull_evolution_Zr(WO4)2_WO3_ZrO2.pdf", width: 80%)


= #lit[In-situ] XRD analysis details 

== CuWO4 
<a_CuWO4>