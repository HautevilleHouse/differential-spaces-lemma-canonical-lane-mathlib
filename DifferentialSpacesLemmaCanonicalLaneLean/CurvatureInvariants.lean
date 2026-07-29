import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialSpacesLemmaCanonicalLaneLean.DifferentialStructure

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

/-!
# Curvature Invariants Package

This module defines curvature invariants for a Riemannian manifold:
Riemann curvature tensor, Ricci curvature, scalar curvature.
-/

structure CurvatureInvariantsPackage (D : DifferentialStructure) where
  metric : Type u
  riemannCurvatureTensor : Type v
  ricciTensor : Type w
  scalarCurvature : Type x
  metricSmooth : Prop
  riemannTensorSymmetries : Prop
  ricciContractedFromRiemann : Prop
  scalarTraceOfRicci : Prop
  metricSmoothTerm : metricSmooth
  riemannTensorSymmetriesTerm : riemannTensorSymmetries
  ricciContractedFromRiemannTerm : ricciContractedFromRiemann
  scalarTraceOfRicciTerm : scalarTraceOfRicci

structure CurvatureInvariantsEvidence {D : DifferentialStructure}
    (C : CurvatureInvariantsPackage D) where
  metricSmoothClosed : C.metricSmooth
  riemannTensorSymmetriesClosed : C.riemannTensorSymmetries
  ricciContractedFromRiemannClosed : C.ricciContractedFromRiemann
  scalarTraceOfRicciClosed : C.scalarTraceOfRicci

def CurvatureInvariantsClosed {D : DifferentialStructure}
    (C : CurvatureInvariantsPackage D) : Prop :=
  C.metricSmooth ∧ C.riemannTensorSymmetries ∧ C.ricciContractedFromRiemann ∧ C.scalarTraceOfRicci

theorem curvature_invariants_closed_from_evidence {D : DifferentialStructure}
    (C : CurvatureInvariantsPackage D) (E : CurvatureInvariantsEvidence C) :
    CurvatureInvariantsClosed C := by
  exact And.intro E.metricSmoothClosed
    (And.intro E.riemannTensorSymmetriesClosed
      (And.intro E.ricciContractedFromRiemannClosed E.scalarTraceOfRicciClosed))

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse
