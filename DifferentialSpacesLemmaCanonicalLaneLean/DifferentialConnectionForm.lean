import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure ConnectionFormPackage where
  principalBundle : Type u
  baseManifold : Type v
  lieGroup : Type w
  connectionOneForm : Type x
  curvatureTwoForm : Type y
  structureGroupSmooth : Prop
  connectionSmooth : Prop
  curvatureTransformationLaw : Prop
  bianchiIdentity : Prop

structure ConnectionFormEvidence (C : ConnectionFormPackage) where
  structureGroupSmoothClosed : C.structureGroupSmooth
  connectionSmoothClosed : C.connectionSmooth
  curvatureTransformationLawClosed : C.curvatureTransformationLaw
  bianchiIdentityClosed : C.bianchiIdentity

def ConnectionFormClosed (C : ConnectionFormPackage) : Prop :=
  C.structureGroupSmooth ∧ C.connectionSmooth ∧ C.curvatureTransformationLaw ∧ C.bianchiIdentity

theorem connection_form_closed_from_evidence (C : ConnectionFormPackage) (E : ConnectionFormEvidence C) :
    ConnectionFormClosed C := by
  exact And.intro E.structureGroupSmoothClosed
    (And.intro E.connectionSmoothClosed
      (And.intro E.curvatureTransformationLawClosed E.bianchiIdentityClosed))

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse