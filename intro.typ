#import "template.typ" : *

Computational methods have the potential to greatly accelerate materials discover, algoritms now being able to propose a large amount of novel crystal structures and evaluate stability metrics. @merchant2023ScalingDeep
However, whether a proposed phase is actually experimentally accessible is not trivial to determine computationally.
To evaluate the synthesizability of the large volume of proposed structures and the time-consuming nature of experimental synthesis, autonomous laboratories, which can attempt different synthesis recipes at a large scale, have been developed, including the A-lab at LBNL for inorganic solid state synthesis. @szymanski2023AutonomousLaboratory,
For the case of inorganic synthesis, solid state synthesis, i.e. the synthesis of materials through reactions between solid precursor powders at elevated temperatures, is, thanks to its relative simplicity, prevalence, and industry use, is a natural candidate for automated synthesis and is thus platform A-lab is built on.

For long, solid state synthesis was mostly exploratory, with new phases discovered from precursors "the old fashioned way (by accident)," as #textcite(<stein1993TurningHeat>) describes. 
However, this method is at odds with the retrosynthetic approach required from computational materials discovery, which starts from a proposed product.
This had led, recently, to a rise in interest in the reaction mechanisms behind solid state synthesis, building a picture on reaction pathways, phase selectivity, and the relative impact of theromdynamics and kintetics. @chamorro2018ProgressSolid @miura2021ObservingModeling @karan2026IonCorrelations @mcdermott2023AssessingThermodynamic @chen2024NavigatingPhase @kamm2022RelativeKinetics @aykol2021RationalSolidState

The thermodynamic approaches build up upon reaction free energies and relative stabilities, @miura2021ObservingModeling  @mcdermott2023AssessingThermodynamic @chen2024NavigatingPhase which, in the context of computational materials discovery, would be estimated via theoretical methods such as ground state density functional theory (DFT). 
In this context, the translation from computational prediction to experimental synthesis is hindered by two factors : (1) the inheirent inaccuracy of DFT in predicting the ground state and (2) deviations from the 0 K conditions given by DFT and real synthesis conditions. @bartel2022ReviewComputational
This second point can be addressed either through molecular dynamics type simulations, at a very large computational cost which may not be compatible with the scale of computational materials discovery, or, at the cost of accuracy, esimators such as the one developed by #textcite(<bartel2018PhysicalDescriptor>).

In addition to these thermodynamic considerations, kinetic factors such as nucleation rate are sometimes considered. @aykol2021RationalSolidState @zeng2024SelectiveFormation
These kinetic factors are of particular interest in the case of phases metastable at synthesis conditions, where a purely thermodynamic approach based on stability in inadequate.
This makes the synthesis of metastable materials an ideal platform to study the validitiy of purely thermodynamic approaches.
In addition to the fact that metastable phases expand the possible design space of materials and are technologically relevant in many applications including photocatalysts, photovoltaics, ionic conductors, steels, and more. @sun2016ThermodynamicScale

From a computational materials discovery perspective, the question of phases predicted to be metastable by ground state DFT is also of interest. 
Indeed, for such a phase three cases can be considered : 

1. The phase is experimentally accessible and is stable in the ground state; the DFT prediction is inaccurate. 
2. The phase is experimentally accessible and metastable at 0 K, but is entropically stabilized at synthesis conditions. 
3. The phase is experimentally accessible and metastable at synthesis conditions, and synthesis is driven by kinetic factors. 
4. The phase is not experimentally accessible.
Discarding all phases predicted to be metastable by DFT in computational materials discovery would discard all phases in case 1-3, which may lead to a significant gap in potential discoveries. 
On the other hand, if synthesis is attempted for all phases predicted to be metastable, a large amount of time and resources may be wasted on phases in case 4.

In this thesis, we focus on phases predicted to be metastable by ground state DFT but sucessfully synthesized in solid state synthesis.
- @s_remnant considers the relative prevalence in literature of cases 1-3.
- In @s_nucleation, we ask and hypothesize in which conditions the synthesis of metastable polymorphs driven purley by kinetic factors is possible (case 3). We rely on in-situ XRD experiments to identify metastable polymorphs during the synthesis process.

// Furthermore, the question of computational accuracy and reliability in stability determination is also key in sucessful synthesis of novel materials. @bartel2022ReviewComputational


// In this more general context of synthesis from computationally driven materials discovery, the synthesis of metastable phases, i.e. phases which are not thermodynamically stable at room conditions, is of particular interest.
// This is furthermore related to the challenge of stable phases which are predicted to be metastable, which may be discarded in screening processes within computational discovery.

// Historically, the synthesis of metastable phases has taken two forms : 

// - Synthesis in typically extreme conditions, e.g. high pressures or temperatures, which shift thermodynamic equiliblium compared to room conditions. @sun2016ThermodynamicScale The phase, which is stable at synthesis conditions, is then quenched to room conditions, where it is metastable.
// - Soft chemistry techniques where the role of kinetics can dominate over thermodynamics, including most prevalently hydrothermal, sol-gel, and molten flux methods. @stein1993TurningHeat
// The increased prevalence in both approaches can be seen in the rise of entries in the International Crystal Structure Database (ICSD) with titles including keywords associated with these techniques, as shown in @f_icsd_titles. #footnote[Note that this may also reflect a style evolution in titles over the decades, however the global rise in high pressure and soft chemistry sythesis is probably still somewhat reflective of reality.]
// In addition to these more advanced approaches, recent reports have shown that metastable phases can be accesible through traditional solid state synthesis approaches, even when the phase is not stable at synthesis conditions. @todd2019SelectiveFormation @bai2020KineticPathways @zeng2024SelectiveFormation
// However, no framework has been proposed to determine the conditions such syntheses, where phase selectivity is determined by kinetics rather than thermodynamics.

// #figure(
//   image("fig/icsd_statistics.pdf",width:80%),
//   caption:[Fraction of new ICSD @zagorac2019RecentDevelopments oxide entries (excluding hydroxides, carbonates, and nitrates) where the reported article title includes (a) the word "pressure" and (b) keywords associated with soft chemistry synthesis routes. Data is smoothed out over 5 year windows to improve legibility.],
// ) <f_icsd_titles>

// This thesis approaches this question from two angles :
// + The nature of solid state synthesis reactions which yield products predicted to be metastable at synthesis conditions, guiding computationally driven synthesis of phases predicted to be metastable and their screening process, and 
// + The conditions for nucleation selectivity in solid state synthesis, specifically in the context of reactions involving low melting point precursors, and determining whether solid state synthesis is an appropriate platform for the synthesis of metastable phases.

// These questions are approached experimentally, either through surveys of literature or in-situ XRD experiments which allow for a detailed understanding of reaction pathways. @shoemaker2014SituStudies