import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure DifferentialSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  structureSheaf : Type
  smoothFunctions : Prop
  dimension : Nat

structure DifferentialSpaceAdmittedObject where
  space : DifferentialSpace
  closed : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def DifferentialSpaceWitnessClosed (O : DifferentialSpaceAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse