#import "template.typ" : *


In this chapter, we consider the stability of ternary oxides phases predicted to be above the hull at 0 K by DFT, but which are reported in literature to be synthesized via the solid state route.
Barring any topochemical pathway and given the lack of documented impact of nucleation on solid state reaction pathways outside of #textcite(<zeng2024SelectiveFormation>), we would expect all of these phases to be stable at synthesis conditions from the remnant metastability point of view.
In addition to testing this claim, we consider wether the predicted instability is due to 1. the inaccuracy of DFT computed energies, or 2. the fact that the phase is indeed metastable at 0 K, but is entropically stabilized at synthesis conditions.
This lets us guide principles for the screening of metastable phases in computationally driven materials discovery.

== Text-mined literature dataset, Materials Project data, and relation to experimental thermochemical data

// TODO OXIDE TO OXIDE IS BEST CASE
To have a good survey of literature, we consider the text-mineddataset of solid state reactions yielding ternary oxides from #textcite(<kononova2019TextminedDataset>), which contains 3275 unique products. 
This dataset only provides composition, while specifics on polymorphism are not.

As we will be testing the validity of DFT predictions, we will consider them in the best-case senario, which as described in @s_sota_dft, is the case where elements are in similar chemical environments.
To do so, we consider binary to ternary oxide reactions whithout oxygen release or intake, thereby conserving oxidations states and thus the chemical environment.
Of the 3275 unique products, this leaves us with 804 condidate phases. 

Energy above the hull at 0 K of these 804 is taken from the lowest lying experimentally reported phase obtained for the given compositions from  Materials Project database @jain2013CommentaryMaterials, which reports DFT-computed energies at 0 K using a mixed GGA and R2SCAN functional scheme. @kingsbury2022FlexibleScalable

Of these 802 phases, 162 (20%) are reported to be above the hull in the Materials Project database @jain2013CommentaryMaterials, 73 (9%) are reported to be >20 meV/at above the hull, and 27 (3%) are reported to be >50 meV/at above the hull.
Note that this does not include any metastable polymorphs, which cannot be distinguished. 

We will focus on the 27 phases which are reported to be >50 meV/at above the hull, which are reported in @t_50mev_summary.
Associated DFT computed convex hulls are available in @a_convex_hulls[Appendix], obtained from the Materials Project database @jain2013CommentaryMaterials.
Hulls are shown both using the mixed GGA/R2SCAN scheme from @kingsbury2022FlexibleScalable, as well as using only GGA and GGA+U.
Convex hulls at 0 K are extended to higher temperatures using the Gibbs free energy estimator from #textcite(<bartel2018PhysicalDescriptor>).

#let data = csv("table/50mev_summary.csv")

#let cellify(s) = {
  let s = s.trim()
  if s.starts-with("@") {
    cite(label(s.slice(1)))
  } else {
    s
  }
}


#figure(
  table(
    columns: (11%,8%,7%,8%,5%,10%,35%,8%),align:(left,left,left,right,right,right,left,right),

    [],table.vline(),table.cell(colspan: 2,align:center)[Reactants],[$T_"synth"$],[Ref.],table.vline(),[$E_"hull"$], [Conclusion on metastability], [Ref.],
    [],[],[],[K],[],[meV/at],[],[],
    table.hline(start: 0,stroke:0.4pt),

    ..data.map(row => row.map(cellify)).flatten(),

  ),
  caption:[List of product phases from #textcite(<kononova2019TextminedDataset>) solid state  reaction dataset excluding reactions involving gases which are reported >50 meV/at above the hull in the Materials Project, @jain2013CommentaryMaterials and experimental determination of their stability.],
)
<t_50mev_summary>



To separate phases that are stable at 0 K from phases entropically stabilized at synthesis conditions and evaluate the accuracy of the DFT prediction, experimental thermochemical data must be compared with the DFT-predicted values.
However, doing so requires comparing different different thermodynamic quantities. 
Indeed, only standard formation enthalpies from elementary oxides $Delta H^"ox"_298$ at standard conditions (298 K, 1 atm) are can be obtained via experimental thermochemical data, while DFT reports differences in internal energies $Delta E^"ox"_0$ at 0 K and 0 atm.
The impact of atmospheric pressure on the stability of solid phases is negligible, so formation internal energy $E$, given by DFT, and formation enthalpy $H$ are considered equivalent. 
The main difference now remains that experimental enthalpies are reported at 298 K.
@f_deviation shows that, for the three ternary oxide entries of the SGTE dataset@SGTE_LB which report enthalpy both at 0 K and 298 K, the difference between the enthalpy of formation from elementary oxides at 298 K and 0 K is under 10 meV/atom, and therefore small compared to other sources of error.
In the case where formation enthalpies are reported at higher temperatures than 300 K, data from #textcite(<barin2008ThermochemicalData>) shown in @f_barin_deviation shows that deviations remain under 20 meV/at in the vast majority of cases up to synthesis conditions.
This means that it is valid to compare in comparing stardard enthalpies of formation from elementary oxides to DFT-computed internal energy differences.

#figure(
  table(columns:6, 
  align:(right,left,right,right,right),
    [],[],table.vline(),[$Delta H_298^"ox"$], [$Delta H_0^"ox"$],[($Delta H_298^"ox" - Delta H_0^"ox"$)],[$(Delta H_298^"ox" - Delta H_0^"ox")/(Delta H_0^"ox")$],
    [],[],[meV/at],[meV/at],[meV/at],[],
    table.hline(),
    [$1/2$ Li2O + $1/2$ Al2O3],[-> LiAlO2], [-134.45],[-141.59],[7.14],[-5.04%],
    [MgO + TiO2],[-> MgTiO3],[-55.87],[-58.28],[-0.59],[1.06%],
    [$1/2$ Na2O + $1/2$ Al2O3],[-> NaAlO2],[-223.76],[-225.54],[1.78],[-0.79%]
  ),
  caption:[Difference in reaction enthalpy of ternary oxides from elementary oxides at 298 K and 0 K, using experimental data from SGTE @SGTE_LB.],
)
<f_deviation>

#figure(
  image("fig/ternary_oxide_reaction_enthalpies.pdf",width:80%),
  caption:[Deviation enthalpies of 272 reactions yielding ternary oxides from elementary oxides from 300 K, using experimental data from #textcite(<barin2008ThermochemicalData>).],
)
<f_barin_deviation>

== Experimental stability of reactions yielding phases predicted metastable


@t_ox reports the standard binary-to-ternary oxide reaction enthalpies $Delta H_298^"ox"$, entropies $Delta S_298^"ox"$, and Gibbs free energies $Delta G_298^"ox"$ of phases listed @t_50mev_summary, which we consider in detail in this section.
The Gibbs free energy of formation at synthesis temperature (listed in @t_50mev_summary) are also reported.
@t_ox also lists computational reactions, both from 0 K DFT and extended to synthesis temperature using the descriptor from #textcite(<bartel2018PhysicalDescriptor>).

#let data = csv("table/reaction_energies.csv")

#figure(
  table(
    columns: 10,align:(left,right,right,right,right,right,right,right,right,right),
    [], table.vline(), table.cell(colspan: 5,align:center)[Experimental data], table.vline(), table.cell(colspan: 4,align:center)[Theoretical data @jain2013CommentaryMaterials],
    table.hline(start: 1,stroke:0.4pt),
    [], [$Delta H_298^"ox"$], [$Delta S_298^"ox"$], [$Delta G_298^"ox"$], [$Delta G_"synth"^"ox"$], [Ref.],table.cell(colspan: 2,align:center)[$Delta E_"0"^"ox"$],table.cell(colspan: 2,align:center)[$Delta G_"synth"^"ox"$ (est.)],
    [],[],[],[],[],[],[GGA],[Mixed],[GGA],[Mixed],
    [],[meV/at],[meV/(at K)], [meV/at], [meV/at], [] ,[meV/at],[meV/at],[meV/at],[meV/at],
    table.hline(start: 0,stroke:0.4pt),
    ..data.map(row => row.map(cellify)).flatten(),
     ),
  caption:[Experimental and computational reaction energies of the reactions yielding the phases in @t_50mev_summary.
  Values reported with \* are extrapolated outside the range specified in the associated referenece. Theoretical value reported with † are from pure R2SCAN computations, while other mixed values are obtained from the mixed GGA/R2SCAN scheme from @kingsbury2022FlexibleScalable, where the elementary oxide is typically computed using R2SCAN while the ternary phase is computed using GGA.],
)
<t_ox>

In the following sections, we first consider the phases which are stable at 0 K, whic we will assume are also stable at synthesis conditions.
Then, we will consider the phases which are unstable at 0 K and discuss their stability at synthesis conditions. 
Finally, wi will discuss phases for which experimental thermochemical data is not available in literature.

=== Phases stable at 0 K with experimental thermochemical data
Of the phases in @t_ox, only Fe12PbO19, In2(WO4)3, Mn2NiO4, Sc2Cu2O5, and Zr(WO4)2 have a positive reaction enthalpy from elementary oxide reactants $Delta H_298^"ox"$, while Lu3Fe5O12 is within the experimental error margins. @navrotsky2015ThermodynamicsSolid

Considering that $Delta H_298^"ox"$ is also good proxy for enthalpy at 0 K within \~10meV/at, this indicates that all other phases in @t_ox (except Eu2CuO4, which falls under this error margin) are reasonably stable at 0 K with respect to their precursors. 
To determine overall stability, one must also consider potential competing phases. 
Considering the DFT-computed convex hulls at 0 K from @a_convex_hulls[Appendix], the following competing phases with lower energies than the target phase must be considered :

- CeO2 and VO2 for CeVO4
- Eu2TiO5 for EuTi2O7
- Eu4Al2O9 and Eu3Al5O12 for EuAlO3
- Eu3Fe5O12 for EuFeO3
- GdFeO3 for Gd3Fe5O12
- La4PdO7 and La2Pd2O5 for La2PdO4
- LuFeO3 for Lu3Fe5O12

While thermochemical data was not found for EuTi2O7, reaction energies for the other phases involving these competing phases is shown in @t_competing_reactions.
Both Gd3Fe5O12 and La2Pd2O5 have a negative reaction enthalpy, indicating stability at 0 K, while EuAlO3, EuFeO3, Lu3Fe5O12 do not and will be considered in further detail in @s_unstable_at_0.


#figure(
  table(
    columns: 6, align:(right,left,right,right,right,right),
    table.cell(colspan: 2,align:center)[Reaction],table.vline(),[$Delta H_298^r$],[$Delta S_298^r$], [$Delta G_"synth"^r$], [Ref.],
    [],[],[meV/at],[meV/(at K)],[meV/at],[],
    table.hline(),
    [CeO2 + VO2],[-> CeVO4], [-1426.16], [], [], [ @navrotsky2015ThermodynamicsSolid @SGTE_LB],
    [$1/7$ Eu4Al2O9 + $1/7$ Eu3Al5O12],[-> EuAlO3],[6.01],[0.0158],[\*-22.06],[ @wu1992CoupledThermodynamicphase],
    [$1/5$ Eu3Fe5O12 + $1/5$ Eu2O3],[-> EuFeO3], [7.87],[0.0344],[\*-39.42],[@navrotsky2015ThermodynamicsSolid @SGTE_LB],
    [3 GdFeO3 + Fe2O3], [-> Gd3Fe5O12], [-51.35],[],[],[@navrotsky2015ThermodynamicsSolid @SGTE_LB],
    [$1/3$ La4PdO7 + $1/3$ La2Pd5O5], [-> La2Pd2O5], [\*-2.69],[],[-0.04],[  @jacob2002SystemLaPdO],
    [3 LuFeO3 + Fe2O3], [-> Lu3Fe5O12], [25.59],[0.0297],[\*-18.13],[@kanke1998CalorimetricStudy],
  ),
  caption:[Reaction energies of the reactions yielding the phases in @t_50mev_summary with respect to competing phases, using experimental data from literature. Values reported with \* are extrapolated outside the range specified in the associated referenece.],
)
<t_competing_reactions>

For Eu2Ti2O7, we rely on considering both experimental and theoretical data.
The 0 K DFT computed convex TiO2 - Eu2O3 pseudo binary hull is shown in @f_Eu2Ti2O7_hull_with_experimental alongside the experimental formation enthalpy of Eu2Ti2O7.
Aside from the fact that Eu2Ti2O7 is already reported to be stable from pure GGA / GGA+U data (discussed further in @s_dft_err), the experimental formation enthalpy of Eu2Ti2O7 is also below the convex hull, indicating that the phase is reasonably stable at 0 K.

#figure(
  image("fig/Eu2Ti2O7_hull_with_experimental.pdf", width: 80%),
  caption:[Eu2O3 - TiO2 pseudo binary hull, showing (a) GGA and (b) R2SCAN 0 K DFT alongside the standard experimental formation enthalpy $Delta H_298^"ox"$ of Eu2Ti2O7.],
)
<f_Eu2Ti2O7_hull_with_experimental>


To summarize, the following 9 phases are stable presumed to be stable at 0 K, directly contradicting the data from the Materials Project @jain2013CommentaryMaterials : 
Al2CuO4, // no compete
CeVO4, // competes with ox, data ok
Eu2CuO4, // check that it's above error margins
Eu2Ti2O7, // competes, no data
Fe2NiO4, // no compete
Gd2Zr2O7,  // no compete
Gd3Fe5O12, // competes, data
LaHf2O7, // no compete
La2PdO4. // competes, data

=== Phases unstable at 0 K with experimental thermochemical data
<s_unstable_at_0>

We now consider the remaining phases in @t_ox which are not the enthalpically most stable phase, either with respect to elementary oxides (@t_ox) or competing phases (@t_competing_reactions).

From the hulls shown in @a_convex_hulls[Appendix], Fe12PbO19, Mn2NiO4, Sc2Cu2O5, and Zr(WO4)2 do not compete with other phases, meaning that only stability with respect to the elementary oxide precursors has to be considered.
From $Delta G^"ox"$ values at synthesis temperatures in @t_ox, Fe12PbO19, Sc2Cu2O5, and Zr(WO4)2 are reported thermodynamically stable at synthesis conditions (negative $Delta G^"ox"_"synth"$), and are thus entropically stabilized.
Furthermore, Eu2CuO4, which was within the error margin for the use of $Delta H^"ox"_298$ at 0 K, is also reported to be stable at synthesis conditions. 


The remaining phases with competitors shown in @t_competing_reactions (EuAlO3, EuFeO3, and Lu3Fe5O12), are all stable with respect to their competitors at synthesis conditions.

For In2(WO4)3, from the convex hull in @a_convex_hulls[Appendix], competition with In6WO12 must be considered.
No thermodynamic data for In6WO12 was found, however the estimator by #textcite(<bartel2018PhysicalDescriptor>) does show stability at synthesis conditions, and from @t_ox we at least know that the phase is stable with respect to the precursors.
With this information, we will therefore assume that In2(WO4)3 is stable at synthesis conditions.

For Mn2NiO4, data for entropy of formation or Gibbs free was not found. 
However, a thermodynamic assesment of the #lit[Mn-Ni-O] system from om Kjellqvist and Selleby#cite(<kjellqvist2010ThermodynamicAssessment>) does indicate stability of Mn2NiO4 in the 1000degC to 1200degC range.

To summarize, the following 7 phases are unstable at 0 K but are entropically stabilized at synthesis conditions : EuAlO3, EuFeO3, Fe12PbO19, Mn2NiO4, Lu3Fe5O12, Sc2Cu2O5, and Zr(WO4)2.

=== Phases lacking experimental thermochemical data in literature
We now move on to the phases for which experimental thermochemical data could not be obtained in literature : 
CuWO4, Nd2NiO4, SnWO4, Ta2CuO6, and VCuO3.

Synthesis was attempted for CuWO4, Nd2NiO4, and Ta2CuO6 in in-situ XRD up to 1000degC, with a 30 minute hold at 1000degC.
Synthesis of Nd2NiO4 was unsucessful, which is consistent with experimental synthesis temperatures of 1350degC and 1400 degC reported respectively in Castro and Burriel #cite(<castro1995PhaseTransitions>) and #textcite(<murata2015FabricationCharacterization>), which is above the maximum temperature of 1200degC of the in-situ XRD apparatus.

Synthesis of CuWO4 and Ta2CuO6 was successful.
Reaction pathways obtained through in-situ XRD are shown in @f_CuWO4_in_situ and @f_Ta2CuO6_in_situ, respectively.
We interestingly note that from Ta2CuO6 nucleates as two different polymorphs, which we will consider further in @s_nucleation.

#figure(
  image("fig/META2_4_CuWO4.pdf", width: 90%),
  caption:[Reaction pathway from in-situ XRD synthesis of CuWO4 from WO3 and CuO,with associated XRD spectra and identified peaks and fingerprints.],
)
<f_CuWO4_in_situ>

#figure(
  image("fig/META2_6_CuTa2O6.pdf", width: 90%),
  caption:[Reaction pathway from in-situ XRD synthesis of Ta2CuO6 from Ta2O5 and CuO, with associated XRD spectra and identified peaks and fingerprints.],
)
<f_Ta2CuO6_in_situ>

Calorimetry of CuWO4, Nd2NiO4, and Ta2CuO6 was also attempted, however due to strong drift in the measurement system  and the probably low reaction enthalpy the effect of the reaction on heat flow could not be resolved. 

However, in both experimental cases, and as could be expected for all three phases from the convex hulls in @a_convex_hulls[Appendix], these phases have no competitors and nucleate directly from the precursors. 
This nucleation makes instability with respect to the precursors at synthesis conditions completely implausible.
We will therefore assume that these phases are stable at synthesis conditions.

Synthesis of SnWO4 and VCuO3 was not attempted as control of redox conditions would have been required. 
Furthermore, as these phases have competitors on the hull, as shown in @a_convex_hulls, no conclusions can be drawn purely on nucleation from the precursors.

=== Summary

These determinations are summarized in @t_50mev_summary, where we highlight that 
- 9/22 (41%) of phases are presumed to be stable at 0 K from standard experimental enthalpy data.
- 8/22 (36%) are experimentally stable at synthesis conditions, but are experimentally known to be unstable at low temperatures, making the phase entropically stabilized.
- 3/22 phases can be assumed to be stable at synthesis conditions from nucleation considerations, but stability at low temperatures cannot be determined.
- No conclusions could be drawn for the remaining 2/22 phases.


== Sources of error in Materials Project reported energies
<s_dft_err>

From the data in @t_ox, experimental and DFT computed energies are compared in @f_dft_error.

#figure(
  image("fig/dft_error.pdf",width:90%),
  caption:[Experimental standard formation enthalpies from elementary oxides compared to formation energies reported from DFT using (a) GGA / GGA+U functionals and (b) using a mixed GGA / GGA+U / R2SCAN scheme @kingsbury2022FlexibleScalable or pure R2SCAN calculations.]
)
<f_dft_error>

Exculding the errors intinsic to DFT and it's assumptions, we highlight the following related specifically to the materials project database @jain2013CommentaryMaterials and have caused inaccuracies in the following subsections.

=== Issues with Eu2O3 R2SCAN computation
The R2SCAN computation of Eu2O3 seems to cause errors.  This can be seen both in @f_dft_error and the @a_convex_hulls[Appendix], where GGA data yields much more reasonable results. The fact that there seems to be a linear shift in @f_dft_error which is present in all oxides containing Eu, both with the mixed and pure R2SCAN data, suggests that the error is related to Eu2O3 rather than the ternary oxides or the pseudopotential.

=== Cases with a lower lying hypothetical phase in the materials project

In the following cases, the Materials Project database @jain2013CommentaryMaterials reports a lower lying crystal structure which it reports to be hypothetical :
- Fe2NiO4, which is predicted to be on the ground state hull from an R2SCAN computation 
- Gd2Zr2O7, which is predicted to be on the ground state hull from an R2SCAN computation
- La2Hf2O7, which is predicted to be on the ground state hull from an R2SCAN computation
- Mn2NiO4, which is predicted to be 10 meV/atom above the ground state hull from an R2SCAN computation
- Ta2CuO6, which is predicted to be 40 meV/atom above the ground state hull from an GGA/GGA$+U$ computation

In the case of Mn2NiO4 and Fe2NiO4, the lower lying reported crystal structure is an orthorhombic (partially) inverted spinel, which is consistent with experimental reports @kjellqvist2010ThermodynamicAssessment @chen2018EffectFe2NiO4, while the  structures tagged as experimental are cubic direct spinels.
The distortion from cubic to orthorhombic, which probably occurs during DFT relaxation as the inversion no longer symetrically constrains the phase, is probably what causes the phase to be flagged as hypothetical.

I could not identifiy what effect the other lower lying structures have on the other phases encompassed, but similar effects can probably be considered, especially considering the similarity of the Gd2Zr2O7 and La2Hf2O7 formulas (Lanthanide - group 4 pyrochlores).

=== Accuracy in the descriptor from #textcite(<bartel2018PhysicalDescriptor>) in determining entropic stabilization

Of the 5 cases in which experimental data indicates that the phase is entropically stabilized and which do not suffer the issues mentioned above (EuAlO3, EuFeO3, and Mn2NiO4 are excluded), #textcite(<bartel2018PhysicalDescriptor>) is accurate in predicting stability for In2(WO4)3 and Zr(WO4)2, while it still predicts instability for 
- Fe12PbO19 (predicted instability decreases to ~10 meV/atom above the hull)
- Lu3Fe5O12 (remains > 50 meV/atom above the hull)
- Sc2Cu2O5 (predicted instability decreases to ~30 meV/atom above the hull)



// - Lower energy polymorphs / (partial inversion).

== Conclusions

No phases metastable at synthesis conditions were identified. 
It is however likely that, if such a case were to exist, it may be a phase who lies less than 50 meV/atom above the hull.
Nevertheless, our findings for phases predicted to be 50 meV/atom above the hull suggest that at least the vast majority of these phases predicted to be metastable are actually stable at synthesis conditions.
Furthermore, we find a 50/50 split between phases which are actually stable at low temperatures and thus where the predicted instability is due to computational errors, and phases which are entropically stabilized at synthesis conditions.
By considering hypothetical phases, excluding the values obtained using the Eu2O3 R2SCAN computation, and considering the estimator from #textcite(<bartel2018PhysicalDescriptor>) to evaluate stability at synthesis conditions, 8/22 phases are predicted to be stable, greatly improving the accuracy of results.
To conclude, we also note that discarding all phases predicted to be metastable discards a large number of synthesizable candidates (20% of oxide-to-oxide reactions in the text-mined dataset of #textcite(<kononova2019TextminedDataset>)), and that a cutoff of 20 meV/atom still leaves out almost 10% of synthesized phases.



// Look closer at the Ln-Fe-O hell

// === Experimental synthesis of XX and XX


// === Old list



// No competition on the hull + data available
// - Al2CuO4
// - Eu2CuO4
// - Fe12PO19
// - Fe2NiO4
// - Gd2Zr2O7
// - The Hf one ? (run hull)
// - Sc2Cu2O5
// - Zr(WO4)2

// No competition on the hull + data required 
// - CuWO4 (META2_4)
// - Nd2NiO4 (META2_5)
// - Ta2CuO6 (META2_6)

// Phases with competition on the hull

// Thermochemical data available for all competing phases

// All competitors available
// - Gd3Fe5O12
// - La2PdO4
// - Lu3Fe5O12
// - CeVO4 (redox!!!)

// Thermochemical data available partially available for competing phases

// Only one competitor available, manually assess stability with correction
// - Eu2Ti2O7
// - EuAlO3
// - EuFeO3

// No competitors available, manually assess stability with correction
// - In2(WO4)3

// Remaining phases

// We're fucked 
// - VCuO3
// - SnWO4

// No competition on the hull + data required 
// - CuWO4
// - Nd2NiO4
// - Ta2CuO6





// == Extension onto more phases predicted to be metastable