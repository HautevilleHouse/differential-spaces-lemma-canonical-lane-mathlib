import canonicalLaneMathlib.AdmissibleClass

/-!
# Differential Spaces Bundle Package
-/

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure DifferentialSpacesBundle where
  baseSpace : Type u
  totalSpace : Type v
  projection : totalSpace → baseSpace
  smoothStructure : Prop
  localTrivialization : Prop
  connectionForm : Prop

structure BundleEvidence (B : DifferentialSpacesBundle) where
  smoothStructureClosed : B.smoothStructure
  localTrivializationClosed : B.localTrivialization
  connectionFormClosed : B.connectionForm

def BundleClosed (B : DifferentialSpacesBundle) : Prop :=
  B.smoothStructure ∧ B.localTrivialization ∧ B.connectionForm

theorem bundle_closed_from_evidence (B : DifferentialSpacesBundle) (E : BundleEvidence B) : BundleClosed B := by
  exact And.intro E.smoothStructureClosed (And.intro E.localTrivializationClosed E.connectionFormClosed)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse
