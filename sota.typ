#import "template.typ" : *

== Definitions : stability and equilibrium

We start by defining _(meta)stability_ in the context of this thesis. 
Note that the distinctions made here are not systematic or clear in literature, and the distinctions made here are key in defining the scope of the thesis.

The most thermodynamically stable state of a system minimizes the thermodynamic potential obtained by  applying the relevant Legendre transforms to the total internal energy $E$ associated with controlled intensive thermodynamic variables of the system.
In our case, we will typically consider pressure $p$ and temperature $T$ to be controlled, meaning that the Gibbs free energy $G$, obtained as
$
  G(T,p) = E - T S + p V
$
// Other variables may be considered, for example chemical potential of gaseous species for reactions in set partial pressures, which would yield a thermodynamic grand potential of the system. 
// However in this thesis we restrict ourselves to reactions which do not involve gases, making this aspect irrelevant. 

For a given chemical space, each phase has an associated (molar) Gibbs free energy $G$.
By drawing the convex hull around these points the phase or mixture of phases minimizing the Gibbs free energy at a given composition can be obtained, with the associated phases being equilibrium phases.

From this convex hull, one can determine the stability of phases.
Phases on the convex hull are _stable_ phases, while phases above the convex hull are _metastable_ phases.
We will _not_ call metastable phases that are on the convex hull but not equilibrium phases (phases which are thermodynamically accesible by a change in composition). 
We will instead refer to these phases as _out of global equilibrium_ phases.
Furthermore, as the Gibbs free energy is pressure and temperature dependent, whether a phase is metastable depends on external conditions.
In particular, in this theses, we will distinguish phases which are metastable at synthesis conditions and phases which are on the hull at synthesis conditions but not at room conditions.



== Current mechanistic knowledge of solid state synthesis

Current understanding of solid state synthesis focuses on reactions at interfaces and subsequent diffusion, considered to be the rate-limiting step.

#textcite(<miura2021ObservingModeling>), #textcite(<chen2024NavigatingPhase>) and #textcite(<mcdermott2023AssessingThermodynamic>)
 develop an understanding based on the fact that reactions proceed independently at interfaces in a pairwise manner. 
Such pairwise behaviour means that, very often, local thermodynamics at interfaces have a higher impact than global thermodynamic equilibrium throughout the reaction.
This leads to the formation of many out of global equiblirium intermediates, which are locally at equilibrium at the interface.
While this understanding of pairwise reactions determines the overall reaction pathway, the rate limiting step in these reactions is considered to be atomic diffusion within the precursors, intermediates, and products. @stein1993TurningHeat
This is supported by modelling and experiments on precursor mixtures with different particle sizes. @kamm2022RelativeKinetics @karan2026IonCorrelations @kupp2014ParticleSize

As the rate limiting step in solid state synthesis is typically diffusion, significant phase formation is only achived at temperatures where diffusion in the precursors is significant. 
As directly obtaining data on atomic diffusion in materials is complicated, the melting temperature is often used as a heuristic to estimate mobility. 
The commonly used Tamman's rule states that a precursor is "activated" at 2/3 of its melting temperature. @merkle2005TammannRule

While most literature focuses on diffusion when modeling reaction kinetics, nucleation is sometimes considered in models. @aykol2021RationalSolidState @szymanski2024QuantifyingRegime
However, its impact remains unclear, and most approaches focus on thermodynamic descriptions at interfaces, considering kinetics only within the context of diffusion. @karan2026IonCorrelations @miura2021ObservingModeling

== Soft chemistry routes
<s_sota_soft>

// CHECK REFERENCES FOR THIS WHOLE SECTION

Altenatively to solid state synthesis routes, soft chemistry routes, which evolve at lower temperatures and with more parameters, allow for finer control on reaction pathways and design.  @stein1993TurningHeat @gopalakrishnan1995ChimieDouce
We can broadly split these soft chemistry routes into two subcategories :
+ Topochemical routes. In this case the crystal structure of a parent phase is chemically modified while keeping a similar lattice structure, bypassing the need for nucleation. This route inclues ion exchange, (de)hydration, (de)intercalation routes where typically small ions (eg. H, Li) are added, removed, or swapped in a crystal structure. @parija2018TraversingEnergy 
  These reactions are also kinetically limited by diffusion, and evolve with continuous compositional intermediates rather than well defined phase boundaries.
  However, the small ions have fast diffusion rates, allowing for reactions at much lower temperatures than @cordova2020SynthesisMetastable // check refernces
  #textcite(<bai2020KineticPathways>) have also shown that topochemical reaction steps may happen in traditional solid state synthesis with larger ions.
+ Reactions in well mixed or fast diffusion environments. The stategy here is to shift the kinetically limiting step away from diffusion and towards either nucleation or growth, which allows for much lower reaction temperatures @parija2018TraversingEnergy @cordova2020SynthesisMetastable. 
  This can either be achived by preforming reactions in environments with fast diffusion, ether via a molten salt (also called molten flux) which directly participates in the reaction, or in solution as is the case for hydrothermal or precipitation methods. Alternatively, diffusion can be bypassed completely by pre-mixing the precursors on the atomic scale, as is the case in the sol-gel method.

Solid state metathesis, or double ion exchange, which is an interesting approach from a reaction design perspective, increasing the precursor design space for a given target, @martinolich2017ReactionbyDesignAchieving @neilson2023ModernistMaterials can, depending on the pathway, either be included in the topochemical route, the fast diffusion route if a molten salt forms, or, barring the previous options the traditional solid state route.



== Evidence for the solid state synthesis of metastable materials
<s_sota_ss_meta>

Recently, and driven by the rise of in-situ experiments,@shoemaker2014SituStudies some metastable phases have been identified as intermediates (or sometimes even isolated products) of traditional solid state reactions. 

#textcite(<todd2019YttriumManganese>) perform the following ternary metathesis reaction
$ ce("YOCl + LiMnO2 -> LiCl + YMnO3") $
which, at a recation temperature below 600degC, forms the metastable orthorhombic polymorph o-YMnO3.
Both YOCl and LiMnO2 have layered structures with respective, allowing for fast ionic diffusion, particularly of Li and Cl atoms, making synthesis at low temperatures possible.
However, as there is no topochemical relationship between the precursors and the products and since no LiCl flux forms for this particular synthesis route, we can consider this reaction to be solid state synthesis, and not a soft chemistry route.
We also note that the reaction energy is much larger than in synthesis of YMnO3 from elementary oxides, driven by the high enthalpy of formation of the LiCl salt.

#textcite(<zeng2024SelectiveFormation>) form the metastable polytype t-LiTiOPO4 in solid state synthesis by considering different precursor mixes with different associated reaction energies.
t-LiTiOPO4, which has a lower surface energy to the sable o-LiTiOPO4 polymorph, is therefore stabilized at the nanoscale and thus has a lower nucleation barrier. 
The barrier difference between the two polymorphs increases with overall reaction energy.
Therefore, the authors argue that t-LiTiOPO4 can preferentially form when the reaction energy is higher, and observe through in-situ studies that t-LiTiOPO4 is observed over a wider temperature range when the reaction energy increases.
The authors do not mention the role of diffusion in the reaction pathway, and, considering the pairwise reaction schemes, some intermediate phases in reaction with three reactants are clearly missing from their in-situ XRD study.
While the precusor P2O5 has a low melting point, no signs of melting are observed in calorimetry studies before the formation of t-LiTiOPO4, excluding the possibility of a molten flux.

== The concept of remnant metastability

To comment on the experimental accesibility of metastable phases, #textcite(<sun2016ThermodynamicScale>) introduce the idea of "remnant metastability," and propose that phases observed are remnants of coniditons in which they have the lowest free energy.
This obviously includes phases thermodynamically stable at high temperature, high pressures, in different atmospheres, strain and electromagnetic fields, or other extrenal constraints, and then quenched to room conditions, but is also understood to included phases stable at the nanoscale but not in bulk, i.e. metastable phases formed in a nucleation selective regime.
This argument is used to argue that even hypothetical phases which are low-lying above the hull may not be experimentally acessible if there are no conditions in which they are thermodynamically favored, and propose the following criterion:  @sun2016ThermodynamicScale


#quote(block:true)["Synthesis of novel metastable crystalline phases should target conditions where they are thermodynamically stable, and aim to kinetically retain them to conditions where metastable. If conditions of thermodynamic stability cannot be found, realization of these predicted metastable phases may not be possible."]

Within the classical nucleation picture of nucleation and growth picture, this thinking is consistent. 
However, it breaks down in the case of topochemical reactions, where the argument is much less convincing.
Similarly, the argument for phases stable at the nanoscale is perplexing when considering the fact that there may not be conditions under which they are stable in the bulk, as, unlike other external conditions, the kinetic task is far more camplicated than simpliy "retaining" the metastable phase.

However, once again splitting discrete nucleation events from the continuous behaviour of diffusion and growth, we can consider that the picture of remnant metastability by #textcite(<sun2016ThermodynamicScale>) is valid in the context of phases that require nucleation, while continuous transformations, including the growth of phases only stable at the nanoscale and ion exchange, can operate fully out of equibirium as long as their associated activation barrier as lower than the one for the nucleation of the most stable phase.

// == Expected errors in DFT

// == Open questions