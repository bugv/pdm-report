#import "template.typ" : *

#include("titlepage.typ")

#show: template.with(standalone: false)

// #title[Thesis draft - version 2]
// Tenatitve title : 
// Nucleation selectivity and the synthesis of metastable phases in solid state reactions


#pagebreak()

#counter(page).update(1)


#heading("Abstract",numbering: none)

Solid-state synthesis is a widely used route for the preparation of inorganic materials, but its use for synthesizing metastable phases via nucleation-related kinetic control remains poorly understood, with limited reports in literature. 
More broadly, the impact of nucleation in phase selectivity and reaction pathways in solid state synthesis is unclear, and the synthesis of metastable phases is an ideal platform to study this in more detail.

First, the experimental accessibility of phases predicted from density functional theory (DFT) to be metastable with respect to decomposition at 0 K is investigated using a text-mined dataset of ternary oxides from literature.
Of 34 phases studied for which stability at synthesis conditions could be asserted, no phase was found to be metastable at synthesis conditions.
20 of these phases are experimentally stable at 0 K, indicating errors in the DFT calculations, while 10 are entropically stabilized at synthesis conditions and the remaining 4 cannot be classified.
These results confirm the low prevalence of metastable phases in traditional solid state synthesis.

The possibility of accessing phases that are genuinely metastable at synthesis conditions is then investigated through in-situ #lit[X-ray] diffraction. 
Metastable polymorphs are observed during the solid-state synthesis of CuMoO4, CrVO4, and Ta2CuO6.
In all three systems, the metastable and stable polymorphs appear concurrently, indicating that nucleation enables the formation of the metastable phase despite the thermodynamic preference for the stable polymorph.
Concurrent growth and limited phase fractions (maximum 5%) of the polymorph demonstrates that while nucleation may affect phase selectivity, its impact on the full reaction pathway remains limited.

Together, these results show that genuinely metastable phases are rarely observed in conventional solid-state synthesis products, but can nevertheless be accessed transiently through kinetic phase selection, influencing our understanding of solid-state reaction pathways.

#heading("Acknowledgements",numbering: none)
// thank ZKS & Haenny. Do not thank Haenny in the version for ZKS.

I would first like to thank my supervisors, Prof. Anirudh Natarajan, Prof. Gerbrand Ceder, and Dr. Andrea Guinto, for giving me the opportunity to work on this project and for their guidance throughout my thesis. 

I would also like to thank the Ceder group members their help, discussions, and the many useful conversations throughout this work, in particular Tudor, Jun, and Lauren in the A-lab team at the A-Lab and Sydney, Maciej, Hadley, Tucker, and Shilong in the lab uphill.

Finally, I would like to thank the Zeno Karl Schindler Foundation for their financial support for this thesis, and the Rodolphe and Renée Haenny Foundation for their support throughout my masters at EPFL.

#pagebreak()


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

// Solid state synthesis, the main workhorse for inorganic materials synthesis, has historically not been considered as a viable platform for the synthesis of metastable materials, particularly in cases where nucleation plays an important role in phase selectivity. 
// Indeed, by considering phases computationally predicted to be metastable, we find that the vast majority of these phases are actually stable at synthesis conditions, either due to computational errors or entropic stabilization.

// However, following #textcite(<zeng2024SelectiveFormation>), which successfully synthesize a single phase pure metastable polymorph of LiTiOPO4 through nucleation selectivity, we observe through in-situ XRD small amounts of metastable polymorphs in three different solid state reaction systems.
// Even though the absolute amount of successful reactions is small, the large prevalence of metastable polymorphs in the early stages of reaction progress (3/7 reactions) in extremely simple binary to ternary oxide reactions indicates that solid state synthesis is a viable platform for so-called panoramic synthesis@haynes2017PanoramicSynthesis of metastable phases, and that nucleation has an impact on phase selectivity and the reaction pathway.

Solid-state synthesis, the main workhorse for inorganic materials synthesis, has historically not been considered a viable platform for the synthesis of metastable materials, particularly where nucleation may influence phase selectivity. 

By examining 34 phases predicted to be metastable at 0 K and for which stability at synthesis conditions could be assessed, no phase was found to be metastable at synthesis conditions. Twenty phases are experimentally stable at 0 K, indicating inaccuracies in the DFT predictions, while ten are entropically stabilized at synthesis conditions; the remaining four could not be conclusively classified. These results indicate that genuinely metastable phases are rare among the solid-state synthesis reactions considered.

We then investigate whether phases that are genuinely metastable at synthesis conditions can nevertheless be accessed through kinetic phase selection. Using in-situ XRD, metastable polymorphs are observed during the synthesis of CuMoO4, CrVO4, and Ta2CuO6. In all three systems, the metastable polymorph begins forming concurrently with the stable polymorph, despite the thermodynamic preference for the latter. The metastable phases remain at small phase fractions before transforming into the stable polymorph, indicating that nucleation contributes to phase selectivity while having a limited impact on the overall reaction pathway.

Although metastable polymorphs were observed in only three reactions, their occurrence in 3 of 7 solid-state reactions studied demonstrates that transient metastable phases can arise relatively frequently during the early stages of simple binary-to-ternary oxide reactions. These observations suggest that solid-state synthesis may provide a viable platform for the panoramic synthesis of metastable phases and highlight the need to consider kinetic phase selection, in addition to thermodynamic stability, when designing solid-state synthesis pathways.

Finally, based on these observations, we propose a hypothesis for the conditions favoring nucleation-selective synthesis of metastable phases. In particular, a sufficiently low reaction-onset temperature relative to the metastable-to-stable polymorphic transformation temperature should provide a larger temperature window in which the metastable phase can nucleate and grow before transforming. This suggests that precursor selection and reaction pathways that decouple reaction onset from polymorphic transformation may enable the formation of larger fractions of metastable products. Ball milling and other approaches to enhance precursor activation and diffusion may help achieve this goal by lowering the onset temperature. These hypotheses provide directions for future work aimed at extending nucleation-selective synthesis to new systems and increasing the yield of metastable phases.

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

