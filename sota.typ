#import "template.typ" : *

== Definitions : stability and equilibrium

The most thermodynamically stable state of a system minimizes the thermodynamic potential obtainde by  applying the relevant Legendre transforms to the controlled intensive thermodynamic variables of the system on the total energy $U$. 
In our case, we will typically consider pressure $p$ and temperature $T$ to be controlled, meaning that the Gibbs free energy $G$, obtained as
$
  G(T,p) = U - T S + p V
$
Other variables may be considered, in particular oxygen chemical potential which would yield a thermodynamic grand potential of the system, however in this thesis we restrict ourselves to reactions without redox activity, making this aspect irrelevant. 

For a given chemical space, each phase has an associated (molar) Gibbs free energy. 
By drawing the convex hull around these points the phase or mixture of phases minimizing the Gibbs free energy at a given composition can be obtained, with the associated phases being equilibrium phases.

We will call any phase not on the convex hull _metastable_ phase. 
We will _not_ call metastable phases that are on the convex hull but not equilibrium phases (phases which are thermodynamically accesible by a change in composition). 
We will instead refer to these phases as _out of global equilibrium_ phases.
Furthermore, as the Gibbs free energy is pressure and temperature dependent, whether a phase is metastable depends on external conditions.
In particular, we will distinguish phases which are metastable at synthesis conditions, the focus of this thesis, and phases which are on the hull at synthesis conditions but not at room conditions.

Note that these distinctions are not systematic or clear in literature, and the distinctions made here are key in defining the scope of the thesis.


== Current mechanistic knowledge of solid state synthesis

#textcite(<miura2021ObservingModeling>), #textcite(<chen2024NavigatingPhase>) and #textcite(<mcdermott2023AssessingThermodynamic>)
 develop an understanding based on the fact that reactions proceed independently at interfaces in a pairwise manner. 
Such pairwise behaviour means that, very often, local thermodynamics at interfaces have a higher impact than global thermodynamic equilibrium throughout the reaction.
This leads to the formation of many out of global equiblirium intermediates, which are locally at equilibrium at the interface.
While this understanding of pairwise reactions determines the overall reaction pathway, the rate limiting step in these reactions is considered to be atomic diffusion within the precursors, intermediates, and products. @stein1993TurningHeat
This is supported by modelling and experiments on precursor mixtures with different particle sizes. @kamm2022RelativeKinetics @karan2026IonCorrelations @kupp2014ParticleSize

As the rate limiting step in solid state synthesis is typically diffusion, significant phase formation is only achived at temperatures where diffusion in the precursors is significant. 
As directly obtaining data on atomic diffusion in materials is complicated, the melting temperature is often used as a heuristic to estimate mobility. 
The commonly used Tamman's rule states that a precursor is "activated" at 2/3 of its melting temperature. @merkle2005TammannRule

While most literature focuses on diffusion in modeling reaction kinetics, nucleation is sometimes considered in models. @aykol2021RationalSolidState @szymanski2024QuantifyingRegime
However, its impact remains unclear. 

== Soft chemistry routes
<s_sota_soft>

// CHECK REFERENCES FOR THIS WHOLE SECTION

Altenatively to solid state synthesis routes, soft chemistry routes, which evolve at lower temperatures and with more parameters, allow for finer control on reaction pathways and design.  @stein1993TurningHeat @gopalakrishnan1995ChimieDouce
We can broadly split these soft chemistry routes into two subcategories :
+ Topochemical routes. In this case the crystal structure of a parent phase is chemically modified while keeping a similar lattice structure, bypassing the need for nucleation. This route inclues ion exchange, (de)hydration, (de)intercalation routes where typically small ions (eg. H, Li) are added, removed, or swapped in a crystal structure. @parija2018TraversingEnergy These reactions are also kinetically limited by diffusion, and evolve with continuous compositional intermediates rather than well defined phase boundaries.
  However, the small ions have fast diffusion rates, allowing for reactions at much lower temperatures than @cordova2020SynthesisMetastable // check refernces
  #textcite(<bai2020KineticPathways>) have also shown that topochemical reaction steps may happen in traditional solid state synthesis.
+ Reactions in well mixed or fast diffusion environments. The stategy here is to shift the kinetically limiting step away from diffusion and towards either nucleation or growth, which allows for much lower reaction temperatures @parija2018TraversingEnergy @cordova2020SynthesisMetastable. This can either be achived by preforming reactions in environments with fast diffusion, ether via a molten salt (also called molten flux) which directly participates in the reaction, or in solution as is the case for hydrothermal or precipitation methods. Alternatively, diffusion can be bypassed completely by pre-mixing the precursors on the atomic scale, as is the case in the sol-gel method.

Solid state metathesis, @martinolich2017ReactionbyDesignAchieving or double ion exchange, can, depending on the pathway, either be included in the topochemical route, the fast diffusion route if a molten salt forms, or, barring the previous options the traditional solid state route.



== Evidence for the solid state synthesis of metastable materials
<s_sota_ss_meta>

Recently, and driven by the rise of in-situ experiments,@shoemaker2014SituStudies some metastable phases have been identified as intermediates (or sometimes even isolated products) of traditional solid state reactions. 

#textcite(<todd2019YttriumManganese>) perform the following ternary metathesis reaction
$ ce("YOCl + LiMnO2 -> LiCl + YMnO3") $
which, at a recation temperature below 600 degC, forms the metastable orthorhombic polymorph o-YMnO3.
Both YOCl and LiMnO2 have layered structures with respective, allowing for fast ionic diffusion, particularly of Li and Cl atoms. 
This makes synthesis at low temperatures possible.
However, as there is no topochemical relationship between the precursors and the products and since no LiCl flux forms for this particular synthesis route, we can consider this reaction to be solid state synthesis, and not a soft chemistry route.
We also note that the reaction energy is far more significant than in synthesis of YMnO3 from elementary oxides, driven by the high enthalpy of formation of the LiCl salt.

#textcite(<zeng2024SelectiveFormation>) form the metastable polytype t-LiTiOPO4 in solid state synthesis by considering different precursor mixes with different associated reaction energies.
t-LiTiOPO4, which has a lower surface energy to the sable o-LiTiOPO4 polymorph, is therefore stabilized at the nanoscale and thus has a lower nucleation barrier. 
The barrier difference between the two polymorphs increases with overall reaction energy.
Therefore, the authors argue that t-LiTiOPO4 can preferentially form when the reaction energy is higher, and observe through in-situ studies that t-LiTiOPO4 is observed over a wider temperature range when the reaction energy increases.
The authors do not mention the role of diffusion in the reaction pathway, and, considering the pairwise reaction schemes, some intermediate phases in reaction with three reactants are clearly missing from their in-situ XRD study.
While the precusor P2O5 has a low melting point, no signs of melting are observed in calorimetry studies before the formation of t-LiTiOPO4, excluding the possibility of a molten flux.