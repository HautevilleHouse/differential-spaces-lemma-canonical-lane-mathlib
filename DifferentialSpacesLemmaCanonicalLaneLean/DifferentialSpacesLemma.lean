import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure DifferentialSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Type v

def smoothFunction (M : DifferentialSpace) : Type := M.carrier → ℝ

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse