import DifferentialSpacesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DifferentialSpacesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DifferentialSpacesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse