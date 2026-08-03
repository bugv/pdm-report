#import "template.typ" : *

== Experimental
Samples are prepared in the A-lab at LBL @szymanski2023AutonomousLaboratory. 
Precursor powders (Sigma-Aldrich, >99% purity) are mixed via centrifuge in ethanol and subsequently dried before solid state synthesis.

In situ XRD is preformed in a XXX diffractometer using Cu K$alpha$ radiaton. 
Scans are taken during heating with a scan rate of XXX, with rapid heating in between.
Riedvelt refinment and phase identification are done using DARA @fei2026DaraAutomated, which was further extended at LBL for #lit[in-situ] experiments (manuscript in preparation).

Energy dispersive #lit[X-ray] spectrometry measurements are preformed in a XXX electron microscope, using AutoEMX @giunto2026AccurateSEMEDS for acquisition and analysis.

Calorimetry measurements are performed in a Mettler-Toledo TGA/DSC 3+ differential scanning calorimeter (DSC), which also preforms thermogravimetric analysis (TGA). 
We note that at high temperatures, the main heat transfer mechanism is radiation, limiting the reliability of DSC, in particular pertaining to heat capacity. @matthiaswagner2017ThermalAnalysis
However, sharp enough transitions can be acurately quantified, and the setup is calibrated on the metling enthalpies of indium (157 degC), zinc (420 degC), aluminium (660 degC), gold (1064 degC), and palladium (1554 degC), which covers the full synthesis range.

Phases and transformations are identified by corroberating all three characterization methods.


== Databases and computational methods

=== Experimental thermochemical databases

The workflow used for obtaining experimental reaction energies from elementary oxides in literature is the following, using the first available datapoint in this list
1. #textcite(<barin2008ThermochemicalData>) and #textcite(<SGTE_LB>) databases are used if the phase of interest is available. Note that the SGTE's data is the standard for thermochemical data and is used in  commercial software (ThermoCalc @GeneralAlloys, FactSage @FactSageFAQ), and can thus be considered to be reliable. The data used in this thesis comes from a 1999 physical publication, and is therefore not completely up to date. 
  These record formation energies from elementary consituents in their reference state, which are then converted into reaction energies by considering the elementary oxide formation energies contained in the same datasets.  For both databases, the data is digitalized using LBL's in-house OCR AI model, based on Gemma 31B. @team2026Gemma4 For values reported in tables in this thesis, accuracy of this digitalization was checked manually and no mistakes were found. 
2. For the specific case of rare earth oxides, #textcite(<navrotsky2015ThermodynamicsSolid>) is used, once again providing elementary formation energies. To compute reaction energies, the formation energy of the elementary rare earth oxide is taken from the same source, while for other elementary oxides the SGTE database is used. This dataset reports uncertainty in formation energies. When converting to oxide to oxide reaction energies, only the error in the product is considered, and reported errors in reactants are not propagated. Indeed, in the vast majority of cases, the formation energies are computed from the elementary oxide reactions, and therefore propagating the error would lead to double counting. 
  #footnote[We also note that there seems to be some errors, in particular the zirconate formation energies are wrongly converted from the oxide to oxide reaction energies. TODO add appendix // wrong. For example, the formation energy of Gd2Zr2O7 (#textcite(<helean2000EnthalpiesFormation>) report $Delta H_f^"el" = -4072.9 "kJ/mol"$ and $Delta H_f^"ox" = -52.2 "kJ/mol"$ while #textcite(<navrotsky2015ThermodynamicsSolid>) report -2402.8 kJ/mol). The reference of #textcite(<navrotsky2015ThermodynamicsSolid>) is #textcite(<navrotsky2005ThermodynamicsOxide>) and reports $Delta H_f^("ox") = -57 "kJ/mol"$, which converts to  TODO blablabla zirconates are all messed up.
  ]
3. References are searched up from the SGTE's ThermoDoc 2025b, @boichot2026RaphaelBoichotSGTEThermDocdatabase the basis for the SGTE's database, which aggregates thermochemical literature in an element-searchable format. The 2025b database version is used.
4. Regular keyword search using Google Scholar.

=== Computational databases and methods
Computed energies via density functional theory are obtained from the Materials Project database, @jain2013CommentaryMaterials which reports both GGA and, when available, R2SCAN computed energies. 
When comparing energies of GGA and R2SCAN structures, the mixing scheme from #textcite(<kingsbury2022FlexibleScalable>) is used.
Gibbs free energies at non-zero temperatures are estimated using the descriptor from #textcite(<bartel2018PhysicalDescriptor>). 