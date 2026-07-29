import DifferentialSpacesLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DifferentialSpacesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DifferentialSpacesAdmittedObject where
  space : DifferentialSpacesSpace
  differentialStructure : Prop
  curvatureInvariantClosed : Prop
  connectionFlat : Prop
  indexTheoremApplied : Prop
  conclusion : differentialStructure ∧ curvatureInvariantClosed ∧ connectionFlat ∧ indexTheoremApplied

structure DifferentialSpacesEndgameState where
  object : DifferentialSpacesAdmittedObject

def DifferentialSpacesWitnessClosed (O : DifferentialSpacesAdmittedObject) : Prop :=
  O.differentialStructure ∧ O.curvatureInvariantClosed ∧ O.connectionFlat ∧ O.indexTheoremApplied

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse