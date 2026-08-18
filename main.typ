#import "template.typ" : *

#include("titlepage.typ")

#show: template.with(standalone: false)

// #title[Thesis draft - version 2]
// Tenatitve title : 
// Nucleation selectivity and the synthesis of metastable phases in solid state reactions


#pagebreak()

#counter(page).update(1)
// #heading("Abstract",numbering: none)
// #heading("Acknowledgements",numbering:none)
// thank ZKS & Haenny. Do not thank Haenny in the version for ZKS.
// 



// #heading("Acknowledgements",numbering: none)


// #pagebreak()


#outline(depth:2)

#pagebreak()
= Introduction
#include("intro.typ")

#pagebreak()
= State of the art
<s_sota>
#include("sota.typ")

#pagebreak()
= Methods
<s_methods> 
#include("methods.typ")

#pagebreak()
= Remnant metastability in traditional solid state synthesis
<s_remnant>
#include("remnant.typ")

// = Categorization of solid state synthesis selectivity regimes and hypotheses for the synthesis of metastable phases
// <s_hypo>
// #include("hypo.typ")

// = Polymorph formation in Ta2CuO6 solid state synthesis
// <s_Ta2CuO6>

#pagebreak()
= Nucleation selectivity and solid state synthesis of metastable phases
<s_nucleation>
#include("nucleation_selectivity.typ")


#pagebreak()
= Conclusion

Solid state synthesis, the main workhorse for inorganic materials synthesis, has historically not been considered as a viable platform for the synthesis of metastable materials, particularly in cases where nucleation plays an important role in phase selectivity. 
Indeed, by considering phases computationally predicted to be metastable, we find that the vast majority of these phases are actually stable at synthesis conditions, either due to computational errors or entropic stabilization.

However, following #textcite(<zeng2024SelectiveFormation>), which sucessfully synthesize a single phase pure metastable polymorph of LiTiOPO4 through nucleation selectivit, we observe through in-situ XRD small amounts of metastable polymorphs in three different solid state reaction systems.
Even though the absolute amount of sucessful reactions is small, our high sucess rate (3/7 reactions) in extremely simple binary to ternary oxide reactions indicates that solid state synthesis is a viable platform for so-called panoramic synthesis@haynes2017PanoramicSynthesis of metastable phases, and that nucleation has an impact on phase selectivity and the reaction pathway.

#pagebreak()

#chem-toggle(false) // otherwise it messes up dois and such
#bibliography("CEDER.bib",style: "american-chemical-society")
#chem-toggle(true) // otherwise it messes up dois and such

#counter(heading).update(0)

#show heading.where(level: 1): set heading(numbering: "A.",supplement: [Appendix])
#set heading(numbering: none)

// #set heading(numbering: "A.1",supplement: [Appendix])

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

=== Al2CuO4
#image("fig/hulls_gasless_50meV/hull_evolution_Al2CuO4_CuO_Al2O3.pdf", width: 80%)
// Referenece : #textcite()

// CeVO4

=== CeVO4
#image("fig/hulls_gasless_50meV/hull_evolution_CeVO4_V2O5_Ce2O3.pdf", width: 80%)

=== CuWO4
#image("fig/hulls_gasless_50meV/hull_evolution_CuWO4_CuO_WO3.pdf", width: 80%)

=== Eu2CuO4
#image("fig/hulls_gasless_50meV/hull_evolution_Eu2CuO4_CuO_Eu2O3.pdf", width: 80%)

=== Eu2Ti2O7
#image("fig/hulls_gasless_50meV/hull_evolution_Eu2Ti2O7_TiO2_Eu2O3.pdf", width: 80%)
// #image("fig/hulls_gasless_50meV/PD_Eu2Ti2O7_TiO2_Eu2O3.jpg", width: 80%)
// Reference : #textcite(<sm1983_pd_Eu2O3_TiO2>) via #textcite(<SM>) 

=== EuAlO3

#image("fig/hulls_gasless_50meV/hull_evolution_EuAlO3_Eu2O3_Al2O3.pdf", width: 80%)

=== EuFeO3
#image("fig/hulls_gasless_50meV/hull_evolution_EuFeO3_Eu2O3_Fe2O3.pdf", width: 80%)

=== Fe12PbO19
#image("fig/hulls_gasless_50meV/hull_evolution_Fe12PbO19_PbO_Fe2O3.pdf", width: 80%)

=== Fe2NiO4
#image("fig/hulls_gasless_50meV/hull_evolution_Fe2NiO4_NiO_Fe2O3.pdf", width: 80%)

=== Gd2Zr2O7
#image("fig/hulls_gasless_50meV/hull_evolution_Gd2Zr2O7_ZrO2_Gd2O3.pdf", width: 80%)

=== Gd3Fe5O12
#image("fig/hulls_gasless_50meV/hull_evolution_Gd3Fe5O12_Gd2O3_Fe2O3.pdf", width: 80%)

=== In2(WO4)3
#image("fig/hulls_gasless_50meV/hull_evolution_In2(WO4)3_WO3_In2O3.pdf", width: 80%)

=== La2Hf2O7
#image("fig/hulls_gasless_50meV/hull_evolution_La2Hf2O7_HfO2_La2O3.pdf", width: 80%)

=== La2PdO4
#image("fig/hulls_gasless_50meV/hull_evolution_La2PdO4_PdO_La2O3.pdf", width: 80%)

=== LaMnO3
#image("fig/hulls_gasless_50meV/hull_evolution_LaMnO3_Mn2O3_La2O3.pdf", width: 80%)

=== Lu3Fe5O12
#image("fig/hulls_gasless_50meV/hull_evolution_Lu3Fe5O12_Lu2O3_Fe2O3.pdf", width: 80%)

=== Mn2NiO4
#image("fig/hulls_gasless_50meV/hull_evolution_Mn2NiO4_NiO_Mn2O3.pdf", width: 80%)

=== Nd2NiO4
#image("fig/hulls_gasless_50meV/hull_evolution_Nd2NiO4_NiO_Nd2O3.pdf", width: 80%)

=== Sc2Cu2O5
#image("fig/hulls_gasless_50meV/hull_evolution_Sc2Cu2O5_Sc2O3_CuO.pdf", width: 80%)

=== SnWO4
#image("fig/hulls_gasless_50meV/hull_evolution_SnWO4_WO3_SnO.pdf", width: 80%)

=== Ta2CuO6
#image("fig/hulls_gasless_50meV/hull_evolution_Ta2CuO6_CuO_Ta2O5.pdf", width: 80%)

=== VCuO3
#image("fig/hulls_gasless_50meV/hull_evolution_VCuO3_V2O5_Cu2O.pdf", width: 80%)

=== Zr(WO4)2
#image("fig/hulls_gasless_50meV/hull_evolution_Zr(WO4)2_WO3_ZrO2.pdf", width: 80%)


= #lit[In-situ] XRD results - full reaction pathways 
<a_XRD>

=== CuWO4
#image("fig/META2_4_1CuO_1WO3_quad_analysis_finalized.png", width: 100%)

=== CuTa2O6
#image("fig/META2_6_1CuO_1Ta2O5_quad_analysis_finalized.png", width: 100%)

=== CuMoO4
#image("fig/META3_10_1MoO3_1CuO_XRD3_710C_quad_analysis_finalized.png", width: 100%)

=== Cu3Mo2O9
#image("fig/META3_11_2MoO3_3CuO_XRD3_730C_quad_analysis_finalized.png", width: 100%)

=== NiMoO4
#image("fig/META3_12_1MoO3_1NiO_XRD3_740C_quad_analysis_finalized.png", width: 100%)