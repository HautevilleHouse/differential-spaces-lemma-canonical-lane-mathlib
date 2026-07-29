import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure CurvatureInvariantPackage where
  riemannCurvature : Type u
  ricciCurvature : Type v
  scalarCurvature : Type w
  sectionalCurvature : Type x
  curvatureSymmetries : Prop
  einsteinCondition : Prop
  constantSectionalCurvature : Prop

structure CurvatureInvariantEvidence (C : CurvatureInvariantPackage) where
  curvatureSymmetriesClosed : C.curvatureSymmetries
  einsteinConditionClosed : C.einsteinCondition
  constantSectionalCurvatureClosed : C.constantSectionalCurvature

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.curvatureSymmetries ∧ C.einsteinCondition ∧ C.constantSectionalCurvature

theorem curvature_invariant_closed_from_evidence (C : CurvatureInvariantPackage)
    (E : CurvatureInvariantEvidence C) : CurvatureInvariantClosed C := by
  exact And.intro E.curvatureSymmetriesClosed
    (And.intro E.einsteinConditionClosed E.constantSectionalCurvatureClosed)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse