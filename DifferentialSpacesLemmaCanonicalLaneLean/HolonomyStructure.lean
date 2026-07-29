import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure HolonomyPackage where
  connection : Type u
  holonomyGroup : Type v
  restrictedHolonomyGroup : Type w
  holonomyLieSubgroup : Type x
  ambrosioSingerTheorem : Prop
  reductionTheorem : Prop
  holonomyInvariantSubspace : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  ambrosioSingerTheoremClosed : H.ambrosioSingerTheorem
  reductionTheoremClosed : H.reductionTheorem
  holonomyInvariantSubspaceClosed : H.holonomyInvariantSubspace

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.ambrosioSingerTheorem ∧ H.reductionTheorem ∧ H.holonomyInvariantSubspace

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.ambrosioSingerTheoremClosed
    (And.intro E.reductionTheoremClosed E.holonomyInvariantSubspaceClosed)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse