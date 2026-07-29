import DifferentialSpacesLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DifferentialSpacesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse