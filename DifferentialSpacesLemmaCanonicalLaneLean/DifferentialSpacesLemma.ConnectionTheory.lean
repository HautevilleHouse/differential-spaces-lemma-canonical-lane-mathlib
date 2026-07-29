import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure Connection where
  connectionDefined : Prop
  torsionFree : Prop
  metricCompatible : Prop

def connectionClosed (c : Connection) : Prop :=
  c.connectionDefined ∧ c.torsionFree ∧ c.metricCompatible

theorem connection_closed_from_props (c : Connection) : connectionClosed c :=
  And.intro c.connectionDefined (And.intro c.torsionFree c.metricCompatible)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse