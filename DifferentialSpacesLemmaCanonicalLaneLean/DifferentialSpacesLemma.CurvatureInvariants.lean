import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure CurvatureInvariant where
  riemannCurvature : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop

def curvatureInvariantClosed (c : CurvatureInvariant) : Prop :=
  c.riemannCurvature ∧ c.ricciCurvature ∧ c.scalarCurvature

lemma curvatureInvariant_closed_from_props (c : CurvatureInvariant) : curvatureInvariantClosed c :=
  And.intro c.riemannCurvature (And.intro c.ricciCurvature c.scalarCurvature)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse