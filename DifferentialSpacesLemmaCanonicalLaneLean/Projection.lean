import DifferentialSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def differentialSpacesProjection : Projection DifferentialSpacesEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem differential_spaces_projection_idempotent (x : DifferentialSpacesEndgameState) :
    differentialSpacesProjection.toFun (differentialSpacesProjection.toFun x) = differentialSpacesProjection.toFun x := by
  exact differentialSpacesProjection.idempotent x

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse