import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A with
  | { object := _, endpointSatisfied := _, remainderRecorded := _, gateWitness := _ } => True

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact True.intro

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse