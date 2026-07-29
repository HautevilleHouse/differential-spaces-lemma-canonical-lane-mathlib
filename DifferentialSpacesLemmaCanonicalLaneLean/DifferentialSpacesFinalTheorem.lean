import DifferentialSpacesLemmaCanonicalLaneLean.DifferentialSpacesBridgeLemmas
import DifferentialSpacesLemmaCanonicalLaneLean.HolonomyClassification

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

def ConstrainedDifferentialSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

theorem constrained_differential_spaces_endgame (A : AdmissibleClass) :
    ConstrainedDifferentialSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse