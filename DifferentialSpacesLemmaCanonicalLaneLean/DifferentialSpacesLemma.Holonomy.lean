import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure Holonomy where
  holonomyGroup : Prop
  reducedHolonomy : Prop
  ambisolonomy : Prop

def holonomyClosed (h : Holonomy) : Prop :=
  h.holonomyGroup ∧ h.reducedHolonomy ∧ h.ambisolonomy

theorem holonomy_closed_from_props (h : Holonomy) : holonomyClosed h :=
  And.intro h.holonomyGroup (And.intro h.reducedHolonomy h.ambisolonomy)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse