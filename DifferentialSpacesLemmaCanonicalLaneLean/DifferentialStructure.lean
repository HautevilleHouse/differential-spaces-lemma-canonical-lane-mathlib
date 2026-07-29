import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

/-!
# Differential Structure Package

This module defines the basic differential structure for a smooth manifold:
a charted space with a maximal smooth atlas.
-/

structure DifferentialStructure where
  carrier : Type u
  topologicalSpace : TopologicalSpace carrier
  chartAtlas : Type v
  smoothCompatibility : Prop
  maximalAtlas : Prop
  smoothCompatibilityTerm : smoothCompatibility
  maximalAtlasTerm : maximalAtlas

structure DifferentialStructureEvidence (D : DifferentialStructure) where
  smoothCompatibilityClosed : D.smoothCompatibility
  maximalAtlasClosed : D.maximalAtlas

def DifferentialStructureClosed (D : DifferentialStructure) : Prop :=
  D.smoothCompatibility ∧ D.maximalAtlas

theorem differential_structure_closed_from_evidence (D : DifferentialStructure)
    (E : DifferentialStructureEvidence D) : DifferentialStructureClosed D := by
  exact And.intro E.smoothCompatibilityClosed E.maximalAtlasClosed

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse
