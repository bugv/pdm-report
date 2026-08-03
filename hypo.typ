#import "template.typ" : *

== Thermodynamic, diffusion, and nucleation selectivity

Building up on @s_sota, we attempt here to classify phase selection regimes, i.e. what determines which phases are observed in non-negligible amounts (practically, dectable through XRD).

Excluding a purely thermodynamic selectivity, in which the temperature is high enough that the system converges quickly to golbal equilibrium, without major kinetic considerations, we must split topochemical from nuleaction and growth transformations. 

+ Topochemical reactions are characterized by a continuous evolution in site occpuancies, without lattice reconstruction. In the case where the formed phase is metastable, the temperature must be low enough to hinder nucleation of the ground state phase.
+ In a more traditional classical nucleation theory picture of nucleation and growth picture, we can distinguish 
  - _Diffusion (or growth) selectivity_ : local equilibrium is reached, so all phases are on the hull, but some are out of global equilibrium. The limiting process is diffusion of species towards the reaction interface, and therefore growth is kinetically limiting. In this regime, metastable phases are inaccesible.
  - _Nucleation selectivity_ : phase formation is dictated by the phase with the lowest nucleation barrier, regarless of other thermodynamic considerations. Kinetically, nucleation is limiting, and the formation of metestable phases is possible if the associated barrier is lower than the stable phase.

Note that this classification is also valid for the soft chemistry routes described in @s_sota_soft. 
In particular, the techniques where diffusion is bypassed typically enter the nucleation selectivity regime.

For the following, we will mainly consider nucleation and growth transformations and will not considre topochemical reactions.

Sinec diffusion is typically the kinetically limiting step in solid state synthesis, this led to a long held belief that nucleation selectivity is not possible (or at least prevalent), limiting its use to the synthesis of stable products. @stein1993TurningHeat
Generally, this would mean that the thermal energy at temperatures required for fast diffusion is higher than the nucleation barrier from a metastable to the stable phases.
However, this is inconsistent with the recent discoveries of metastable phases in solid state synthesis, detailed in @s_sota_ss_meta.

Furthermore, the observation by #textcite(<bai2020KineticPathways>) of low temperature metastable topochemical intermediates in solid state reactions before any stable phase nucleation, indicates that, in such cases, the activation of diffusion in at least some species is lower than the nucleation barrier.

This framework leads us to ask the following questions, about which we will emit hypothesize in the next sections
+ Which metastable phases are experimentally accessible ?
+ What are the conditions for nucleation selectivity in solid state synthesis ?

== The concept of remnant metastability

To comment on the experimental accesibility of metastable phases, #textcite(<sun2016ThermodynamicScale>) introduce the idea of "remnant metastability," and propose that phases observed are remnants of coniditons in which they have the lowest free energy.
This obviously includes phases thermodynamically stable at high temperature, high pressures, in different atmospheres, strain and electromagnetic fields, or other extrenal constraints, and then quenched to room conditions, but is also understood to included phases stable at the nanoscale but not in bulk, i.e. metastable phases formed in a nucleation selective regime.
This argument is used to argue that even hypothetical phases which are low-lying above the hull may not be experimentally acessible if there are no conditions in which they are thermodynamically favored, and propose the following criterion:  @sun2016ThermodynamicScale


#quote(block:true)["Synthesis of novel metastable crystalline phases should target conditions where they are thermodynamically stable, and aim to kinetically retain them to conditions where metastable. If conditions of thermodynamic stability cannot be found, realization of these predicted metastable phases may not be possible."]

Within the classical nucleation picture of nucleation and growth picture, this thinking is consistent. 
However, it breaks down in the case of topochemical reactions, where the argument is much less convincing.
Similarly, the argument for phases stable at the nanoscale is perplexing when considering the fact that there may not be conditions under which they are stable in the bulk, as, unlike other external conditions, the kinetic task is far more camplicated than simpliy "retaining" the metastable phase.

However, once again splitting discrete nucleation events from the continuous behaviour of diffusion and growth, we can consider that the picture of remnant metastability by #textcite(<sun2016ThermodynamicScale>) is valid in the context of phases that require nucleation, while continuous transformations, including the growth of phases only stable at the nanoscale and ion exchange, can operate fully out of equibirium as long as their associated activation barrier as lower than the one for the nucleation of the most stable phase.


// @aykol2018ThermodynamicLimit
// Todo : other sources


== Hypotheses for the conditions necessary to access nucleation selectivity in solid state synthesis

// As is the case for soft chemistry routes, achieving nucleation selectivity in solid state synthesis requires bypassing diffusion selectivity.
// In #textcite(<todd2019YttriumManganese>), this is achived by having layered oxide precursors which allow for much faster diffusion than usual.

// In this thesis, we propose, as is the case in Tamman's rule, @merkle2005TammannRule using melting temperature as a heuristic for diffusion. 
// This can be seen in #textcite(<zeng2024SelectiveFormation>), where the two reaction with the largest stability window include P2O5, which has a very low melting point of 340degC as a precursor.

