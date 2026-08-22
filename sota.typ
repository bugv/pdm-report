#import "template.typ" : *

== Definitions : stability and equilibrium

We start by defining _(meta)stability_ in the context of this thesis. 
Note that the distinctions made here are not systematic or clear in literature, and the distinctions made here are key in defining the scope of the thesis.

The most thermodynamically stable state of a system minimizes the Gibbs free energy $G$ of the system, given by 
$
  G(T,p) = E - T S + p V
$
where $E$ is the total internal energy.
#footnote[
 More generally, thermodynamic potential obtained by  applying the relevant Legendre transforms to the total internal energy $E$ associated with controlled intensive thermodynamic variables of the system is minimized.
In our case, pressure $p$ and temperature $T$ are controlled, meaning that the Gibbs free energy $G$ is indeed the relevant thermodynamic potential.
]
We note that the Gibbs free energy is always relative, and a reference state must be given for each element.
Typically, the Gibbs free energy is defined relative to the elements in their standard state.
However, one can also define it relative to different reference states as long as they are linearly independent with respect to elements.


// Other variables may be considered, for example chemical potential of gaseous species for reactions in set partial pressures, which would yield a thermodynamic grand potential of the system. 
// However in this thesis we restrict ourselves to reactions which do not involve gases, making this aspect irrelevant. 

For a given chemical space, each phase has an associated (molar) Gibbs free energy $G$.
By drawing the convex hull around these points, as shown in @f_hull_explanation, the phase or mixture of phases minimizing the Gibbs free energy at a given composition can be obtained, with the associated phases being equilibrium phases.

From this convex hull, one can determine the stability of phases.
Phases on the convex hull are _stable_ phases, while phases above the convex hull are _metastable_ phases.
We will _not_ consider metastable phases that are on the convex hull but not equilibrium phases (phases which are thermodynamically accessible by a change in composition). 
We will instead refer to these phases as _out of global equilibrium_ phases.
Note that this distinction is not always made in literature. 
These cases are illustrated in @f_hull_explanation.
Furthermore, as the Gibbs free energy is pressure and temperature dependent, whether a phase is metastable depends on external conditions.
In particular, in this theses, we will distinguish phases which are metastable at synthesis conditions and phases which are on the hull at synthesis conditions but not at room conditions.



#figure(
  image("fig/hull_explanation.pdf", width: 70%),
  caption:[Illustration of a convex hull and the associated stable, metastable, and out of global equilibrium phases.],
)
<f_hull_explanation>


== Pairwise reaction mechanisms in solid state synthesis

We start by surveying the current thermodynamic framework for solid state reactions.
These are based on the understanding that reactions proceed independently at particle-particle interfaces in a pairwise manner. @miura2021ObservingModeling @chen2024NavigatingPhase @mcdermott2023AssessingThermodynamic
Such pairwise behaviour means that local thermodynamics at interfaces may have a higher impact than global thermodynamic equilibrium throughout the reaction.
This can lead to the formation of many out of global equilibrium intermediates, which are locally at equilibrium at the interface.


== Reaction rates and onset in solid state synthesis

In solid state synthesis, the rate limiting kinetic step is diffusion related. @tan2026OriginReaction @kohlmann2019LookingBlack @stein1993TurningHeat @karan2026IonCorrelations
More specifically, we can distinguish short and medium range interdiffusion at particle-particle interfaces, which is required to trigger nucleation, and the long range diffusion required for growth to occur.
In practice, this difference can be observed either in some in-situ experiments where two regimes are observed @kamm2022RelativeKinetics @tan2026OriginReaction or in experiments with varying particle size @kupp2014ParticleSize, where the onset of phase formation is the same regardless of particle size while reaction completion happens at lower temperatures for smaller particles for which less range transport is required.
However, since both of these regimes are closely related and are can be associated to the same energy scale, they do not necessarily need to be distinguished in practice. 

Directly obtaining data on atomic diffusion in materials is complicated, whether it be experimentally or computationally.
Therefore, in order to better explain kinetic factors in solid state synthesis, heuristics and estimations have been proposed to estimate reaction onset.
Tammann's rule states that a precursor is "activated" at 2/3 of its melting temperature, after which they may start reacting.  @merkle2005TammannRule
Merkle and Maier propose that this is related to the thermal generation of point defects, which at higher temperatures would interact, leading to breakdown and melting, but which at lower temperatures would activate diffusion, thus relating diffusion and melting.
We note that, while solid state reactions involve multiple precursors, which precursor to choose for the application of Tammann's rule is not clear.
#textcite(<tan2026OriginReaction>) propose that the "activation" of the precursors may be related to metastable eutectics, which, when reached, allow for fast diffusion at interfaces, causing initial fast progression of the reaction, until imingement at which point long range diffusion becomes required and slows down the reaction. 

// TODO explain rationale

// TODO note that to which precursor this applies is unclear

// While most literature focuses on diffusion when modeling reaction kinetics, nucleation is sometimes considered in models. @aykol2021RationalSolidState @szymanski2024QuantifyingRegime
// However, its impact remains unclear, and most approaches focus on thermodynamic descriptions at interfaces, considering kinetics only within the context of diffusion. @karan2026IonCorrelations @miura2021ObservingModeling

== Classical nucleation theory

Outside diffusion, nucleation is the other key kinetic factor in inorganic synthesis. 
Classical nucleation theory can be used to approximate, from reaction free energy $Delta G_r$ and surface energies $gamma$, the energetic barrier $Delta G^*$ associated with nucleation, or equivalently the critical nucleus size $r^*$ required for growth via @aykol2018ThermodynamicLimit @zeng2024SelectiveFormation
$
  Delta G^* ~ (gamma ^3)/(Delta G_r ^2)
$
One can then estimate the nucleation rate $Q$ via 
$
  Q ~ A exp(- B (Delta G^*) / (k_B T))
$
where the prefactor $A$ depends, among other factors, on diffusion rates, relating to the sort and medium interdiffusion discussed in the previous section, and $B$ is a geometric factor.

This means that a phase with a lower surface energy may have a higher nucleation rate than a phase with a lower reaction free energy, and may form preferentially. 
We do note, however, that the subsequent growth rate will be driven by bulk energy more than surface energy, partially offseting this effect.

Nucleation is not typically considered in the modeling of reaction rates on onset in solid state synthesis, however it is sometimes considered in assessing the selectivity of phases formed. @aykol2021RationalSolidState @szymanski2024QuantifyingRegime

== Synthesis of metastable polymorphs in solid state synthesis

Based on classical nucleation theory, #textcite(<zeng2024SelectiveFormation>) show that the metastable polymorph t-LiTiOPO4, which has a lower nucleation barrier than the stable polymorph o-LiTiOPO4, can be synthesized via solid state synthesis.

Solid state synthesis of low phase fractions of metastable materials has also been reported for B2SiO5 and B2GeO5, both metastable with respect to decomposition but obtained transiently (maximum concentration of 10%) during the synthesis of other compounds. @zhereb2003MetastableStates


These are the only report that we have found which definitely show that nucleation can have an impact on a solid state synthesis reaction synthesis pathway and form metastable polymorphs.


#textcite(<todd2019YttriumManganese>) similarly show selective formation of h-YMnO3 and o-YMnO3 polymorphs in solid state metathesis (double ion exchange).
While o-YMnO3 is sometimes reported to be metastable, @todd2019SelectiveFormation the authors do not make this claim and suggest that the polymorphism may be purely thermodynamic.

== Soft chemistry routes to inorganic synthesis
<s_sota_soft>

// CHECK REFERENCES FOR THIS WHOLE SECTION

Alternatively to solid state synthesis routes, soft chemistry routes, which evolve at lower temperatures and with more parameters, allow for finer control on reaction pathways and design.  @stein1993TurningHeat @gopalakrishnan1995ChimieDouce
We can broadly split these soft chemistry routes into two subcategories :
+ Topochemical routes. In this case the crystal structure of a parent phase is chemically modified while keeping a similar lattice structure, bypassing the need for nucleation. This route includes ion exchange, (de)hydration, (de)intercalation routes where typically small ions (eg. H, Li) are added, removed, or swapped in a crystal structure. @parija2018TraversingEnergy 
  These routes can also be grouped with epitaxial synthesis, where similarly the underlying substrate structure is preserved in atom-by-atom growth.
  These reactions are also kinetically limited by diffusion, and evolve with continuous compositional intermediates rather than well defined phase boundaries.
  However, these small ions have fast diffusion rates, allowing for reactions at much lower temperatures than required for solid state synthesis. @cordova2020SynthesisMetastable // check refernces
  Bai _et al._ @bai2020KineticPathways have also shown that topochemical reaction steps may happen in traditional solid state synthesis with larger ions.
+ Reactions in well mixed or fast diffusion environments, which allows for much lower reaction temperatures. The strategy here is to shift kinetic control from diffusion to nucleation.  @parija2018TraversingEnergy @cordova2020SynthesisMetastable. 
  This can either be achieved by preforming reactions in environments with fast diffusion, either via a molten salt (also called molten flux) which directly participates in the reaction, or in solution as is the case for hydrothermal or precipitation methods. Alternatively, diffusion can be bypassed completely by pre-mixing the precursors on the atomic scale, as is the case in the sol-gel method, in which case nucleation and growth are the only kinetic factors.

Solid state metathesis, or double ion exchange, which is an interesting approach from a reaction design perspective, increasing the precursor design space for a given target. @martinolich2017ReactionbyDesignAchieving @neilson2023ModernistMaterials 
It can, depending on the pathway, either be included in the topochemical route, the fast diffusion route if a molten salt forms, or, barring the previous options the traditional solid state route.

// metastable with respect to decomposition

// == Synthesis of materials metastable with respect to composition

// == Evidence for the solid state synthesis of metastable materials
// <s_sota_ss_meta>

// Recently, and driven by the rise of in-situ experiments,@shoemaker2014SituStudies some metastable phases have been identified as intermediates (or sometimes even isolated products) of traditional solid state reactions. 

// #textcite(<todd2019YttriumManganese>) perform the following ternary metathesis reaction
// $ ce("YOCl + LiMnO2 -> LiCl + YMnO3") $
// which, at a recation temperature below 600degC, forms the metastable orthorhombic polymorph o-YMnO3.
// Both YOCl and LiMnO2 have layered structures with respective, allowing for fast ionic diffusion, particularly of Li and Cl atoms, making synthesis at low temperatures possible.
// However, as there is no topochemical relationship between the precursors and the products and since no LiCl flux forms for this particular synthesis route, we can consider this reaction to be solid state synthesis, and not a soft chemistry route.
// We also note that the reaction energy is much larger than in synthesis of YMnO3 from elementary oxides, driven by the high enthalpy of formation of the LiCl salt.

// #textcite(<zeng2024SelectiveFormation>) form the metastable polytype t-LiTiOPO4 in solid state synthesis by considering different precursor mixes with different associated reaction energies.
// t-LiTiOPO4, which has a lower surface energy to the sable o-LiTiOPO4 polymorph, is therefore stabilized at the nanoscale and thus has a lower nucleation barrier. 
// The barrier difference between the two polymorphs increases with overall reaction energy.
// Therefore, the authors argue that t-LiTiOPO4 can preferentially form when the reaction energy is higher, and observe through in-situ studies that t-LiTiOPO4 is observed over a wider temperature range when the reaction energy increases.
// The authors do not mention the role of diffusion in the reaction pathway, and, considering the pairwise reaction schemes, some intermediate phases in reaction with three reactants are clearly missing from their in-situ XRD study.
// While the precusor P2O5 has a low melting point, no signs of melting are observed in calorimetry studies before the formation of t-LiTiOPO4, excluding the possibility of a molten flux.

== The concept of remnant metastability and accesibility of metastable phases

Whether a computationally predicted metastable phase is experimentally accessible is a key question in the design of new materials.
To comment on this question, #textcite(<sun2016ThermodynamicScale>) introduce the idea of "remnant metastability," and propose that phases observed are often remnants of conditions in which they have the lowest free energy.
This includes phases thermodynamically stable at high temperature, high pressures, in different atmospheres, strain and electromagnetic fields, or other external constraints, and then quenched to room conditions, but is also understood to  phases stable at the nanoscale but not in bulk, i.e. metastable phases formed in a nucleation selective regime.
This argument is used to argue that even hypothetical phases which are low-lying above the hull may not be experimentally accessible if there are no conditions in which they are thermodynamically favored, and propose the following criterion:  @sun2016ThermodynamicScale


#quote(block:true)["Synthesis of novel metastable crystalline phases should target conditions where they are thermodynamically stable, and aim to kinetically retain them to conditions where metastable. If conditions of thermodynamic stability cannot be found, realization of these predicted metastable phases may not be possible."]

We will note that this not concept does not include phases obtained through topochemical routes, which may be metastable at all conditions, but are kinetically stabilized through a continuous transformation which allows them to stay in a local minimum. @parija2018TraversingEnergy
// However, the design space of phases which can be obtained through a topochemical route is limited, and outside these cases, it is reasonable to believe that most phases observed are either complet

// Within the classical nucleation picture of nucleation and growth picture, this thinking is consistent. 
// However, it breaks down in the case of topochemical reactions, where the argument is much less convincing.
// Similarly, the argument for phases stable at the nanoscale is perplexing when considering the fact that there may not be conditions under which they are stable in the bulk, as, unlike other external conditions, the kinetic task is far more camplicated than simpliy "retaining" the metastable phase.

// However, once again splitting discrete nucleation events from the continuous behaviour of diffusion and growth, we can consider that the picture of remnant metastability by #textcite(<sun2016ThermodynamicScale>) is valid in the context of phases that require nucleation, while continuous transformations, including the growth of phases only stable at the nanoscale and ion exchange, can operate fully out of equibirium as long as their associated activation barrier as lower than the one for the nucleation of the most stable phase.


== Accuracy of computational methods in predicting thermodynamic stability
<s_sota_dft>

Accurate computational prediction of is key in correctly predicting the stability of a phase.
#textcite(<bartel2022ReviewComputational>) reviews computational approaches to computational thermodynamic predictions from density functional theory (DFT).
We provide a few figures of merit here and refer to the text for further details.

=== Ground state DFT

We start with errors in ground state (0 K) DFT, without considering errors linked to the evolution of the Gibbs free energy from 0 K to high temperatures.

Formation energies from elements using the generalized gradient approximation (GGA) are quite high due (136 meV/atom) to the vastly different chemical environments between elemental reference states and the target phase.
This can be reduced by considering correcting these values using experimental formation energies in a large dataset (1670 compounds) of phases with different chemical environments, which can reduce this error to 81 meV/atom.

In cases where reactions energies only involve elements in similar chemical environments, the error can be further reduced.
In the case of binary to ternary oxide reactions of the form 
$ ce(A_a O_x + B_b O_y -> A_a B_b O_(x+y))  $
considered by #textcite(<hautier2012AccuracyDensity>) for the GGA functional, the reaction mean absolute error is reduced to 24 meV/atom.
The reported 5th and 95th percentile signed errors $Delta E^"ox"_"GGA" - E^"ox"_"experimental"$ are -30 and 71 meV/atom, respectively, meaning that GGA is more likely to overestimate the stability of a ternary oxide with respect to binary counterparts than to underestimate it.

=== Gibbs free energy at higher temperatures

When considering the evolution from 0 K to higher temperatures, two main contributions to the Gibbs free energy need to be considered : vibrational entropy and, in systems exhibitng disorder, configurational entropy.

The vibrational entropy contribution can be estimated from the lightweight machine learning descriptor by #textcite(<bartel2018PhysicalDescriptor>), with an associated mean absolute error of 53 meV/atom at 1000 K and 92 meV/atom at 2000 K.

For systems exhibiting disorder, configurational entropy can also significantly contribute, with, for comparison, the entropy of mixing of an ideal equimolar binary solution being of 0.06 meV/atom/K. @bartel2022ReviewComputational


// == Open questions