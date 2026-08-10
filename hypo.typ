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



// @aykol2018ThermodynamicLimit
// Todo : other sources


== Hypotheses for the conditions necessary to access nucleation selectivity in solid state synthesis

// As is the case for soft chemistry routes, achieving nucleation selectivity in solid state synthesis requires bypassing diffusion selectivity.
// In #textcite(<todd2019YttriumManganese>), this is achived by having layered oxide precursors which allow for much faster diffusion than usual.

// In this thesis, we propose, as is the case in Tamman's rule, @merkle2005TammannRule using melting temperature as a heuristic for diffusion. 
// This can be seen in #textcite(<zeng2024SelectiveFormation>), where the two reaction with the largest stability window include P2O5, which has a very low melting point of 340degC as a precursor.

