import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure SpecialHolonomyPackage where
  manifoldDimension : ℕ
  holonomyGroupType : String
  parallelSpinors : Prop
  ricciFlat : Prop
  k ahlerCondition : Prop
  exceptionalHolonomy : Prop
  integrabilityCondition : Prop

structure SpecialHolonomyEvidence (S : SpecialHolonomyPackage) where
  parallelSpinorsClosed : S.parallelSpinors
  ricciFlatClosed : S.ricciFlat
  k ahlerConditionClosed : S.k ahlerCondition
  exceptionalHolonomyClosed : S.exceptionalHolonomy
  integrabilityConditionClosed : S.integrabilityCondition

def SpecialHolonomyClosed (S : SpecialHolonomyPackage) : Prop :=
  S.parallelSpinors ∧ S.ricciFlat ∧ S.k ahlerCondition ∧
  S.exceptionalHolonomy ∧ S.integrabilityCondition

theorem special_holonomy_closed_from_evidence (S : SpecialHolonomyPackage)
    (E : SpecialHolonomyEvidence S) : SpecialHolonomyClosed S := by
  exact And.intro E.parallelSpinorsClosed
    (And.intro E.ricciFlatClosed
      (And.intro E.k ahlerConditionClosed
        (And.intro E.exceptionalHolonomyClosed E.integrabilityConditionClosed)))

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse