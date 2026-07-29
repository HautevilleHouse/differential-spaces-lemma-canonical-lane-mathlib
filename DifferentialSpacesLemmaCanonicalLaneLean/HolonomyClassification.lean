import DifferentialSpacesLemmaCanonicalLaneLean.IndexTheorem

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure HolonomyClassificationPackage {D : DifferentialSpace} {C : CurvatureInvariantsPackage D}
    {T : ConnectionTheoryPackage C} (I : IndexTheoremPackage T) where
  holonomyRepresentation : Type
  reducedHolonomy : Type
  localHolonomy : Prop
  restrictedHolonomy : Prop
  classificationTheorem : Prop

structure HolonomyClassificationEvidence {D : DifferentialSpace} {C : CurvatureInvariantsPackage D}
    {T : ConnectionTheoryPackage C} {I : IndexTheoremPackage T}
    (H : HolonomyClassificationPackage I) where
  localHolonomyClosed : H.localHolonomy
  restrictedHolonomyClosed : H.restrictedHolonomy
  classificationTheoremClosed : H.classificationTheorem

def HolonomyClassificationClosed {D : DifferentialSpace} {C : CurvatureInvariantsPackage D}
    {T : ConnectionTheoryPackage C} {I : IndexTheoremPackage T}
    (H : HolonomyClassificationPackage I) : Prop :=
  H.localHolonomy ∧ H.restrictedHolonomy ∧ H.classificationTheorem

theorem holonomy_classification_closed_from_evidence
    {D : DifferentialSpace} {C : CurvatureInvariantsPackage D}
    {T : ConnectionTheoryPackage C} {I : IndexTheoremPackage T}
    (H : HolonomyClassificationPackage I) (E : HolonomyClassificationEvidence H) :
    HolonomyClassificationClosed H := by
  exact And.intro E.localHolonomyClosed
    (And.intro E.restrictedHolonomyClosed E.classificationTheoremClosed)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse