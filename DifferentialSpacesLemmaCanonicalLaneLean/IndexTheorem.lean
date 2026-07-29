import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialSpacesLemmaCanonicalLaneLean.DifferentialStructure
import HautevilleHouse.DifferentialSpacesLemmaCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

/-!
# Index Theorem Package

This module defines the ingredients for an index theorem on a closed manifold:
the Dirac operator, its index, and the topological formula involving curvature invariants.
-/

structure IndexTheoremPackage (D : DifferentialStructure)
    (C : CurvatureInvariantsPackage D) where
  diracOperator : Type u
  index : Type v
  topologicalFormula : Prop
  indexComputed : Prop
  diracOperatorDefined : Prop
  indexClosed : indexComputed ∧ topologicalFormula
  diracOperatorTerm : diracOperatorDefined
  indexTerm : indexClosed

structure IndexTheoremEvidence {D : DifferentialStructure}
    {C : CurvatureInvariantsPackage D} (I : IndexTheoremPackage D C) where
  diracOperatorDefinedClosed : I.diracOperatorDefined
  indexComputedClosed : I.indexComputed
  topologicalFormulaClosed : I.topologicalFormula

def IndexTheoremClosed {D : DifferentialStructure}
    {C : CurvatureInvariantsPackage D} (I : IndexTheoremPackage D C) : Prop :=
  I.diracOperatorDefined ∧ I.indexComputed ∧ I.topologicalFormula

theorem index_theorem_closed_from_evidence {D : DifferentialStructure}
    {C : CurvatureInvariantsPackage D} (I : IndexTheoremPackage D C)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.diracOperatorDefinedClosed
    (And.intro E.indexComputedClosed E.topologicalFormulaClosed)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse
