import canonicalLaneMathlib.AdmissibleClass

/-!
# Index Theorem Payload Package
-/

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure IndexTheoremPayload where
  ellipticOperator : Type u
  indexFormula : Prop
  topologicalInvariant : Prop
  analyticIndexComputed : Prop
  topoIndexComputed : Prop
  indexEquality : Prop

structure IndexTheoremEvidence (I : IndexTheoremPayload) where
  ellipticOperatorClosed : I.ellipticOperator
  indexFormulaClosed : I.indexFormula
  topologicalInvariantClosed : I.topologicalInvariant
  analyticIndexComputedClosed : I.analyticIndexComputed
  topoIndexComputedClosed : I.topoIndexComputed
  indexEqualityClosed : I.indexEquality

def IndexTheoremClosed (I : IndexTheoremPayload) : Prop :=
  I.ellipticOperator ∧ I.indexFormula ∧ I.topologicalInvariant ∧ I.analyticIndexComputed ∧ I.topoIndexComputed ∧ I.indexEquality

theorem index_theorem_closed_from_evidence (I : IndexTheoremPayload) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.ellipticOperatorClosed
    (And.intro E.indexFormulaClosed
      (And.intro E.topologicalInvariantClosed
        (And.intro E.analyticIndexComputedClosed
          (And.intro E.topoIndexComputedClosed E.indexEqualityClosed))))

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse
