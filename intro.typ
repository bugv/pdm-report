#import "template.typ" : *

Solid state synthesis, i.e. the synthesis of materials through reactions of solid precursor powders at elevated temperatures, is the simplest and most prevalent technique for the synthesis of inorganic materials.
For long, solid state synthesis was mostly exploratory, with new phases discovered from precursors "the old fashioned way (by accident)". @stein1993TurningHeat
With the advent of computationally discovery of materials, algoritms can now propose novel crystal structures and evaluate stability metrics. @merchant2023ScalingDeep
Considering the large amount of structures which may be proposed by computational methods, the ease and scalability of solid state synthesis is a natural first platform to explore the synthesis of these novel phases. @szymanski2023AutonomousLaboratory
However, whether a phase is experimentally accessible through solid state synthesis is not trivial to determine, and the conditions necessary to achieve the synthesis of a target phase are not well understood.
This had led, in the past few years, to a rise in interest in the reaction mechanisms behind solid state synthesis, building a picture on reaction pathways, phase selectivity, and the relative impact of theromdynamics and kintetics. @chamorro2018ProgressSolid @miura2021ObservingModeling @karan2026IonCorrelations @mcdermott2023AssessingThermodynamic @chen2024NavigatingPhase @kamm2022RelativeKinetics @aykol2021RationalSolidState
Furthermore, the question of computational accuracy and reliability in stability determination is also key in sucessful synthesis of novel materials. @bartel2022ReviewComputational

In this more general context of synthesis from computationally driven materials discovery, the synthesis of metastable phases, i.e. phases which are not thermodynamically stable at room conditions, is of particular interest.
In addition to the fact that these phases expand the possible design space of materials and are technologically relevant in many applications including photocatalysts, photovoltaics, ionic conductors, steels, and more, @sun2016ThermodynamicScale the comuptational determinatation of the accesibility of metastable phases is far less straightforward than for their stable counterparts.
This is furthermore related to the challenge of stable phases which are predicted to be metastable, which may be discarded in screening processes within computational discovery.

Historically, the synthesis of metastable phases has taken two forms : 

- Synthesis in typically extreme conditions, e.g. high pressures or temperatures, which shift thermodynamic equiliblium compared to room conditions. @sun2016ThermodynamicScale The phase, which is stable at synthesis conditions, is then quenched to room conditions, where it is metastable.
- Soft chemistry techniques where the role of kinetics can dominate over thermodynamics, including most prevalently hydrothermal, sol-gel, and molten flux methods. @stein1993TurningHeat
The increased prevalence in both approaches can be seen in the rise of entries in the International Crystal Structure Database (ICSD) with titles including keywords associated with these techniques, as shown in @f_icsd_titles. #footnote[Note that this may also reflect a style evolution in titles over the decades, however the global rise in high pressure and soft chemistry sythesis is probably still somewhat reflective of reality.]
In addition to these more advanced approaches, recent reports have shown that metastable phases can be accesible through traditional solid state synthesis approaches, even when the phase is not stable at synthesis conditions. @todd2019SelectiveFormation @bai2020KineticPathways @zeng2024SelectiveFormation
However, no framework has been proposed to determine the conditions such syntheses, where phase selectivity is determined by kinetics rather than thermodynamics.

#figure(
  image("fig/icsd_statistics.pdf",width:80%),
  caption:[Fraction of new ICSD @zagorac2019RecentDevelopments oxide entries (excluding hydroxides, carbonates, and nitrates) where the reported article title includes (a) the word "pressure" and (b) keywords associated with soft chemistry synthesis routes. Data is smoothed out over 5 year windows to improve legibility.],
) <f_icsd_titles>

This thesis approaches this question from two angles :
+ The nature of solid state synthesis reactions which yield products predicted to be metastable at synthesis conditions, guiding computationally driven synthesis of phases predicted to be metastable and their screening process, and 
+ The conditions for nucleation selectivity in solid state synthesis, specifically in the context of reactions involving low melting point precursors, and determining whether solid state synthesis is an appropriate platform for the synthesis of metastable phases.

These questions are approached experimentally, either through surveys of literature or in-situ XRD experiments which allow for a detailed understanding of reaction pathways. @shoemaker2014SituStudies