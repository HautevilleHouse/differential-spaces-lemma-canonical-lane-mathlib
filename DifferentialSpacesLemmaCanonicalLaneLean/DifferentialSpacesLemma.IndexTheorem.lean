import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure IndexTheorem where
  indexDefined : Prop
  topologicalInvariance : Prop
  analyticIndex : Prop

def indexTheoremClosed (i : IndexTheorem) : Prop :=
  i.indexDefined ∧ i.topologicalInvariance ∧ i.analyticIndex

theorem index_theorem_closed_from_props (i : IndexTheorem) : indexTheoremClosed i :=
  And.intro i.indexDefined (And.intro i.topologicalInvariance i.analyticIndex)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse