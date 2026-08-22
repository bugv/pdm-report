
#import "template.typ" : *

== Thermodynamic, diffusion, and nucleation selectivity

Building up on @s_sota, we attempt here to classify phase selection regimes, i.e. what determines which phases are observed in non-negligible amounts (practically, detectable through XRD).

Excluding a purely thermodynamic selectivity, in which the temperature is high enough that the system converges quickly to global equilibrium, without major kinetic considerations, we must split topochemical from nucleation and growth transformations. 

+ Topochemical reactions are characterized by a continuous evolution in site occupancies, without lattice reconstruction. In the case where the formed phase is metastable, the temperature must be low enough to hinder nucleation of the ground state phase.
+ In a more traditional classical nucleation theory picture of nucleation and growth picture, we can distinguish 
  - _Diffusion (or growth) selectivity_ : local equilibrium is reached, so all phases are on the hull, but some are out of global equilibrium. The limiting process is diffusion of species towards the reaction interface, and therefore growth is kinetically limiting. In this regime, metastable phases are inaccessible.
  - _Nucleation selectivity_ : phase formation is dictated by the phase with the lowest nucleation barrier, regardless of other thermodynamic considerations. Kinetically, nucleation is limiting, and the formation of metastable phases is possible if the associated barrier is lower than the stable phase.

For the following, we will only consider phase transformations including nucleation and will not consider topochemical routes.


Note that this classification is also valid for the soft chemistry routes described in @s_sota_soft. 
In particular, the techniques where diffusion is bypassed typically enter the nucleation selectivity regime, including hydrothermal and sol-gel synthesis.


Since diffusion is typically the kinetically limiting step in solid state synthesis, this led to a long held belief that nucleation selectivity is not possible (or at least prevalent), limiting its use to the synthesis of stable products, as opposed to soft chemistry routes where synthesis of metastable phases is prevalent. @stein1993TurningHeat
However, this is inconsistent with the recent discoveries of metastable phases in solid state synthesis by #textcite(<zeng2024SelectiveFormation>).
In the following, we attempt to identify through in-situ measurements reaction pathways in which metastable polymorphs form as intermediates through nucleation control.


// Furthermore, the observation by #textcite(<bai2020KineticPathways>) of low temperature metastable topochemical intermediates in solid state reactions before any stable phase nucleation, indicates that, in such cases, the activation of diffusion in at least some species is lower than the nucleation barrier.

// This framework leads us to ask the following questions, about which we will emit hypothesize in the next sections
// + Which metastable phases are experimentally accessible ?
// + What are the conditions for nucleation selectivity in solid state synthesis ?


== Candidate selection for synthesis attempts
<s_candidates>

In order to find candidates where nucleation control may be possible, we follow the following approach.

Inspired by soft chemistry, which is successful at creating metastable phases through nucleation selectivity, we choose reactions where at least one precursor has a low melting point.
Considering Tammann's rule, we can expect these reactions to occur at lower temperatures.
We importantly note here that energy and temperature scales are relative, meaning that if all melting points are scaled we would expect changes in nucleation selectivity to be minimal.
We will discuss this further in @s_hypo.
Furthermore and for practical reasons, we only consider precursors expected to have minimal redox activity in air.
Using these criteria, we screen for phases in the materials project with reported polymorphs including the following elements : 

- Mo (MoO3 has a melting point of 801degC)  @CRC2016
- Te (TeO2 has a melting point of 730degC)  @CRC2016
- V (V2O5 has a melting point of 670degC) @CRC2016

To obtain a list of candidates, we preform the following screening process :
+ Phases including elements H,C,N,P,S,F,I,U,Hg are excluded for practical reasons including precursor availability and potential interaction with atmosphere or degassing.
+ Using the structure matcher from pymatgen@pymatgen, all phases with a root mean square displacement of less than $1 angstrom$ are excluded to avoid displacive polymorphic transformations. Indeed, these probably have a lower barrier than reconstructive transformations, making the temperature window in which the metastable phase can be trapped smaller.
+ Candidate reactions are once again screened to be redox inactive, and reactions for which a precursor was not available were excluded. 
+ Phases obtained through soft chemistry routes which are nucleation selective (in particular, hydrothermal synthesis) are selected. In particular, high pressure phases, high/low temperature, and phases obtained through dehydration are excluded.

Finally, the following reactions were selected : 
$ ce("MoO3 + CuO -> CuMoO4") $
$ ce("MoO3 + NiO -> NiMoO4") $
// $ ce("MoO3 + ZnO -> ZnMoO4") $
$ ce("V2O5 + La2O3 -> LaVO4") $
$ ce("V2O5 + Cr2O3 -> CrVO4") $
$ ce("V2O5 + Fe2O3 -> FeVO4") $
$ ce("V2O5 + Ag2O -> AgVO3") $
$ ce("TeO2 + CuO -> CuTeO3") $

== Synthesis of metastable phasesand #lit[in-situ] XRD results

Solid state reactions of the candidates in @s_candidates was attempted in #lit[in-situ] XRD experiments, with the goal of identifying metastable polymorphs during the reaction process.
The reaction mixtures for AgVO3, and CuTeO3 partially melted before the target phase was synthesized, excluding them from the scope of this thesis which restricts itself to solid state synthesis.
For the other reactions, the target stable polymorph was successfully synthesized.
Temperatures associated with the progression of the reaction are shown in @t_reaction_onset, including the two reactions from @s_remnant.
Full reaction pathways and calculated phase fractions are shown in @a_XRD.
The specifics of each transformation is detailed below.

In the case of CuMoO4 and CrVO4, a metastable polymorph was also observed during the reaction.
These reactions are detailed in the following subsections.

The XRD patterns during transformations, alongside calculated phase fractions and Rietveld refinements residuals are shown in @f_META3_12_NiMoO4 for NiMoO4, @f_META3_17_FeVO4 for FeVO4, @f_META3_15_LaVO4 for LaVO4, for which no metastable polymorphs were observed.

In the case of NiMoO4, beta-NiMoO4 (isotopic with alpha-MnMoO4) @sleight1968TransitionMetal forms directly.
Upon cooldown, shown in @f_META3_12_NiMoO4_cool, beta-NiMoO4 transforms to alpha-NiMoO4 (isotopic with alpha-CoMoO4).
This is a known transition, reported to be reversible with a transition upon heating, meaning that beta-NiMoO4 is probably stable at synthesis conditions @sleight1968TransitionMetal.
No other phases were observed. 

For the case of FeVO4, shown in @f_META3_17_FeVO4, no intermediates are observed either, but the signal to noise ratio is lower than for the other reactions, reasonably due to Fe fluorescence under Cu K$alpha$ radiation, making it difficult to identify small amounts of intermediates, meaning that a potential metastable phase may have been missed. 
Using another #lit[X-ray] source may alleviate this problem and allow for a more precise identification of the reaction pathway.

For the case of LaVO4, shown in @f_META3_15_LaVO4, the hyrdoscopic nature of the precursor La2O3 leads to LaOOH being the main precursor phase for La. 
Furthermore, La2O2CO3 is observed during the reaction process, indicating CO2 intake.
The target phase LaVO4 forms otherwise without intermediates, but the more complicated nature of the reaction due to the presence of the dehydration step may hinder the detection of low concentration intermediates. 
A now experiment using previously calcinated La2O3 would avoid this issue and can be considered.

#let data = csv("table/reaction_onset.csv")

#let cellify(s) = {
  let s = s.trim()
  let out = []
  let last = 0
  for m in s.matches(regex("@[\w-]+(?:[.:][\w-]+)*")) {
    out += s.slice(last, m.start)          // plain text before the key
    out += cite(label(m.text.slice(1)))    // the citation itself
    last = m.end
  }
  out += s.slice(last)                     // trailing text
  out
}

#figure(
  table(
    columns : 12,align:(left,right,left,right,left,right,right,right,right), 
    table.cell(colspan: 2,align:center)[Reactant 1],table.vline(),table.cell(colspan: 2,align:center)[Reactant 2], table.vline(),table.cell(colspan: 2,align:center)[Product],table.vline(),table.cell(colspan: 3,align:center)[$T$ at phase fraction],table.vline(),[],[Meta.],table.vline(),[],
    [],[$T_f$], [],[$T_f$], [],[$T_f$],[5%],[50%],[90%],[$T_"eutectic"$],table.vline(),[Poly.],[Ref.],
    [],[(K)],[],[(K)],[],[(K)],[(K)],[(K)],[(K)],[(K)],[],[],
    table.hline(),
    ..data.map(row => row.map(cellify)).flatten()
  ),
  caption:[Reaction temperatures at which the product phase reaches a given phase fraction, and melting and phase diagram temperatures for each reaction considered in this thesis, in addition to whether a metastable polymorph was observed. Melting temperatures with a \* are incongruent, metastable polymorph determinations with a \* are inconclusive due to low signal to noise ratio or complex reaction pathways.],
)
<t_reaction_onset>


#figure(
  image("fig/META3_12_NiMoO4.pdf", width: 90%),
  caption:[XRD spectra, associated calculated phase fractions and Rietveld refinement residuals for the transformation period of the NiMoO4 reaction. Peaks and fingerprints are identified to their corresponding phase.]
)
<f_META3_12_NiMoO4>

#figure(
  image("fig/META3_12_NiMoO4_cooldown.pdf", width: 70%),
  caption:[XRD spectra and associated fits from Rietveld refinement for the cooldown period of the NiMoO4 reaction. ]
)
<f_META3_12_NiMoO4_cool>

#figure(
  image("fig/META3_17_FeVO4.pdf", width: 90%),
  caption:[XRD spectra, associated calculated phase fractions and Rietveld refinement residuals for the transformation period of the FeVO4 reaction.]
)
<f_META3_17_FeVO4>

#figure(
  image("fig/META3_15_LaVO4.pdf", width: 100%),
  caption:[XRD spectra and associated calculated phase fractions for the transformation period of the LaVO4 reaction. Peaks and fingerprints are identified to their corresponding phase.]
)
<f_META3_15_LaVO4>

=== Metastable CuMoO4 polymorph synthesis

The CuMoO4 reaction is shown in @f_META3_10_CuMoO4.
A peak clearly appears at 24.1º between 390degC and 460degC, and must therefore be associated to an intermediate phase.
This peak corresponds to the main peak in the diffraction pattern of epsilon-CuMoO4 (space group 14, $P 2_1  \/ n$), which was synthesized by #textcite(<baek2008NewMagnetically>) through a hydrothermal route.
Other major peaks overlap with MoO3 and the stable polymorph alpha-CuMoO4 (triclinic, space group 2, $P overline(1)$).
However, a peak at 31º, expected from the epsilon-CuMoO4 crystal structure at 50% of the main peak intensity from the crystal structure, is not observed, meaning that the observed phase may be a modification of the crystal structure or another phase altogether.
This discrepancy causes the Rietveld refinement to be underfit the peak and therefore underestimates the phase fraction and results in a slight increase in the residual $R_(w p)$.
A search in the ICSD, COD, and Materials Project databases for phases in the #lit[Cu-Mo-O] system did not yield any other candidate phases.
We can also rule out creation of Cu3Mo2O9 as it appears later with distinct peaks.
We note that, assuming this is a CuMoO4 polymorph and not another off-equilibrium compound, for which no other stoichiometries are known, that the simultaneous onset of both polymorphs means that, by construction, at least one must be metastable at synthesis conditions.

#figure(
  image("fig/META3_10_CuMoO4.pdf", width: 90%),
  caption:[XRD spectra, associated calculated phase fractions and Rietveld refinement residuals for the transformation period of the CuMoO4 reaction. Peaks and fingerprints are identified to their corresponding phase.]
)
<f_META3_10_CuMoO4>

=== Metastable CrVO4 polymorph synthesis

The CrVO4 reaction pathway is shown in @f_META3_16_CrVO4.
Both the stable CrVO4 #lit[-I]I polymorph (orthorhombic, space group 63) and the metastable CrVO4 #lit[-I] polymorph (monoclinic, space group 12)
CrVO4 #lit[-I] was first synthesized by #textcite(<touboul1995SynthesisChimie>) using a soft chemistry route involving precursor dehydration and subsequent recrystallization, with a CrVO4 #lit[-I] to CrVO4 #lit[-I]I transformation observed at 660degC, which is consistent with the complete disappearance of CrVO4 #lit[-I] we observe at 650degC.
Furthermore, calorimetry data indicates the CrVO4 #lit[-I] to CrVO4 #lit[-I]I transformation is exothermic, indicating CrVO4 #lit[-I] metastability, both at 0 K and synthesis conditions. @touboul1995SynthesisChimie.
// correct II to III
// Once again, simultaneous onset of both polymorphs is observed, meaning that at least one must be metastable at synthesis conditions.
The CrVO4 #lit[-I] polymorph reaches a phase fraction of 5%.

#figure(
  image("fig/META3_16_CrVO4.pdf", width: 90%),
  caption:[Calculated phase fractions and Rietveld refinement residuals for the transformation period of the CrVO4 reaction. ]
)
<f_META3_16_CrVO4>

=== Metastable Ta2CuO6 polymorph synthesis

We also observe a metastable polymorph form in the Ta2CuO6 reaction, shown in @f_Ta2CuO6_in_situ, even though it was not part of the phases reactions for this purpose.
Both stable perovskite-like Ta2CuO6 and metastable trirutile-type Ta2CuO6 (space group 136, $P 4_2 \/ m n m$) are observed @golubev2017StructuralMagnetic, with the metastable polymorph reaching a peak phase fraction of 5%. 
Trirutile Ta2CuO6 is typically synthesized from a freeze-dried #lit[Cu-Ta-oxalate] precursor at 700degC. @golubev2017StructuralMagnetic
This is consistent with our observation, where both polymorphs start forming at 710degC.


== Summary of results and discussion

To summarize, small phase fractions of metastable polymorphs were observed in the CuMoO4, CrVO4, and Ta2CuO6 reactions.
All of these phases are otherwise reported in literature to be synthesized through soft chemistry routes where nucleation plays an important role, suggesting that nucleation selectivity had an impact in their synthesis. 
Furthermore, all of the metastable phases appear simultaneously with the stable polymorph, meaning that by construction at least one of the two must be metastable at synthesis conditions.
This suggests that these reactions fall in the traditional picture of precursor "activation," where reaction onset is determined by precursor interdiffusion.

The low observed phase fractions can be explained by two factors : 
+ The metastable phase forms close to the temperature at which it transforms to the stable polymorph, meaning that the temperature window in which it can be observed is small. Furthermore, the transformation occurs before there is even a significant fraction of the metastable polymorph.
+ The metastable phases do not form alone, i.e. the process is not fully selective. This can be explained by small differences in nucleation barriers but can also be tuned via the reaction energy. Indeed, #textcite(<zeng2024SelectiveFormation>) shows that, as the nucleation barrier difference and thus the ratio in reaction rates between the metastable and stable polymorphs increases with increasing reaction energy, the metastable polymorph can be formed in larger phase fractions by tuning the precursors. They observe phase pure formation of the metastable polymorph only in cases with large reaction energies, which is not the case with our reactions. In addition, achieving large reaction energies usually involves using less stable precursors which therefore have lower melting points, and, thus, through a Tammann's rule argument, will lower synthesis temperatures, increasing the window for the polymorph to grow without transforming.

Given the lack of holds long enough at metastable phase saturation, we also note that we cannot fully determine whether concurrent nucleation of the stable and metastable phase occurs, or whether the metastable phase nucleates first and subsequently transforms to the stable polymorph.

== Validity of Tammann's rule

The observed onset temperatures for the reactions are shown in @t_reaction_onset, plotted against the melting points of the precursors in @f_onset_plot.
We can see that, while neither the smaller or larger melting point of the precursors is a perfect predictor of the onset temperature, the reaction onset seems to correlate with the average melting point. 
We will note, however, this this observation is based on a very small dataset and may not be generalizable.

#figure(
  image("fig/onset_plot.pdf", width: 90%),
  caption:[Temperature at which a 5% phase fraction of the target phase is observed in the in-situ XRD experiments, plotted against precursor melting temperatures $T_f$.],
)
<f_onset_plot>


== Hypotheses on conditions for nucleation selectivity in solid state synthesis
<s_hypo>

The main concern for solid state synthesis of metastable phases is that the higher temperatures required for fast diffusion will be higher than the transformation temperature of the metastable phase to the stable polymorph, meaning that the metastable phase will not be observed.
In this chapter, we attempt to bypass this by considering reactions with a low melting point precursor, which, following Tammann's rule, should result in a lower reaction temperature.
However, considering that the polymorphic transformation temperature, which is also broadly related to atomic mobility, may also be scaled, the benefits to this approach may be low.
Furthermore, #textcite(<tan2026OriginReaction>), which we did not consider in our candidate selection, shows that the reaction onset may be better described by metastable eutectics, which requires other considerations. 

To obtain larger phase fractions of metastable product, we should consider cases where the polymorphic transformation temperature is even more elevated than the reaction onset. 
Indeed, in these cases, the metastable phase will have a larger window to grow before transforming to the stable polymorph.
On the flip side, it is possible that, for precursors with activation at high temperatures, nucleation only occurs above the polymorphic transformation temperature, meaning that the metastable phase cannot be observed at sizes larger than its nanoscale stabilization.
Inspired by Tammann's rule, we can use the melting point of the target phase as a heuristic for the polymorphic transformation temperature, and using the approach from #textcite(<tan2026OriginReaction>)

This hypothesis is summarized in @f_hypo_drawing.

#figure(
  image("fig/hypo_drawing.pdf", width: 100%),
  caption:[Schematic illustration of the hypothesis.]
)
<f_hypo_drawing>

In practice, we can use this approach to attempt to identify, based on phase diagrams, for which systems the nucleation of a metastable polymorph may be possible at all.
@f_cute_phase_diagrams shows three schematic cases.

- Case (a) is the worst case scenario. Both based on Tammann's rule and the metastable eutectic approach, the reaction onset is very close to the target melting point. 
- Case (b) is the case we considered here, where one low melting point precursor is used.
  In the case where Tammann's rule applies to the lower melting point precursor, this is a good approach.
  If this applies, this also has the advantage of requiring less explicit knowledge of the phase diagram, the target melting point, and the polymorphic transformation temperature, as the target melting point can easily estimated to be in between the melting points of the precursors.
  However, this approach may fail if using an average of the melting points of the precursors is a better predictor of the reaction onset using Tammann's rule, which is what we seem to observe in @f_onset_plot, or, depending on the specifics of the phase diagram or the stoichiometry of the target phase, if the metastable eutectic approach by #textcite(<tan2026OriginReaction>) is a better predictor of the reaction onset.
- Case (c) is another good case, considering this time precursors with similar melting points and the metastable eutectic approach by #textcite(<tan2026OriginReaction>). In this case, where the melting temperatures of the precursors and the target are similar, the reaction onset may happen, depending on the specifics of the phase diagram, at a temperature much lower than the target melting point, and thus, heuristically, much lower than the polymorphic transformation temperature.

#figure(
  image("fig/cute_phase_diagrams.pdf", width: 100%),
  caption:[Schematic phase diagrams and whether metastable materials at target composition can form according to our hypothesis.]
)
<f_cute_phase_diagrams>

To test these hypotheses and build up on our results, the following approaches can be taken to synthesis metastable phases in larger phase fractions and in new systems : 
- New systems can be considered, for which the phase diagram follows the behaviors described above.
- Ball milling of precursors can decrease reaction onset and enhance diffusion, increasing the window for growth before the polymorphic transformation.
- Building up on the knowledge of #textcite(<zeng2024SelectiveFormation>), solid state metathesis reactions for which reaction energies are higher can be considered. This could result in a higher nucleation rate difference and thus a more selective formation of the metastable polymorph.