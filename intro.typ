#import "template.typ" : *

Metastable phases, which are kinetically trapped above their most stable thermodynamic state, are technologically relevant in many applications, including photocatalysts, photovoltaics, ionic conductors, steels, and more. @sun2016ThermodynamicScale
More generally, metastability greatly expands the space of experimentally accesible materials.
However, unlike their stable counterparts, where traditional solid state synthesis, simply consisting in reactions of precursor powders can be straightforward, synthesis of metastable materials is far more delicate.
To synthesize these metastable materials, generally two approaches are considered: either synthesis in typically extreme conditions which shift thermodynamic equiliblium compared to room conditions, or #lit[so-called] soft chemistry techniques where the role of kinetics can dominate over thermodynamics, including most prevalently hydrothermal, sol-gel, and molten flux methods. @stein1993TurningHeat
// There have also been sparse recent reports of synthesis of metastable materials in solid-state synthesis, generally driven by in-situ methods.

As shown in @f_icsd_titles, the prevalence of these techniques have sharply grown over time in the discovery of novel phases, now totaling at least over 10% of new inorganic oxide entries in the International Crystal Structure Database @zagorac2019RecentDevelopments based on keyword screening in titles. #footnote[Note that this may also reflect a style evolution in titles over the decades, however the global rise in high pressure and soft chemistry sythesis is probably still somewhat reflective of reality.]
In most cases and depending on the techniques, synthesis, particularly solid state synthesis, is mostly exploratory, without necessarily a particular target in mind, or, as #textcite(<stein1993TurningHeat>) describes, "the old fashiond way (by accident)". @stein1993TurningHeat  @chamorro2018ProgressSolid 

#figure(
  image("fig/icsd_statistics.pdf",width:80%),
  caption:[Fraction of new ICSD @zagorac2019RecentDevelopments oxide entries (excluding hydroxides, carbonates, and nitrates) where the reported article title includes (a) the word "pressure" and (b) keywords associated with soft chemistry synthesis routes. Data is smoothed out over 5 year windows to improve legibility.],
) <f_icsd_titles>

With the advent of computationally discovery of materials, however, retrosynthetic and #lit[reaction-by-design] schemes have been proposed for the synthesis of novel materials. @stein1993TurningHeat @sun2025CriticalReflection @martinolich2017ReactionbyDesignAchieving @chamorro2018ProgressSolid
These pose the question of which phases, based on computational data, are accessible experimentally and, if yes, through which technique. 
In the specific context of solid state synthesis which this thesis focuses on, this has, more generally, led a deeper recent intrest in the reaction mechanisms behind solid state synthesis @miura2021ObservingModeling @karan2026IonCorrelations @mcdermott2023AssessingThermodynamic @chen2024NavigatingPhase @kamm2022RelativeKinetics @aykol2021RationalSolidState.
These have been driven both by an the combination of computational data with experimental synthesis outcomes, and in-situ techniques, giving clearer pictures of synthesis pathways.


In this thesis we focus on the accessibility of metastable phases through solid state synthesis and the reliability of computational data in determining the stability, or lack thereof, of metastable phases to begin with.


After the state of the art (@s_sota) and methods (@s_methods), the thesis is structured as follows : 

- @s_hypo defines selectivity regimes of solid state synthesis and hypothesizes the conditions necessary to achieve nucleaction selectivity.
- @s_remnant and @s_dft explore the prevalence of solid state synthesis of metastable phases in existing literature and the reliability of computational methods in the prediction of (meta)stability.
- @s_nucleation explore the conditions for nucleation selectivity in solid state synthesis.

