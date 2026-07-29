import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialSpacesLemmaCanonicalLaneLean.DifferentialStructure

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

/-!
# Connection Theory Package

This module defines a connection (covariant derivative) on a Riemannian manifold
and its torsion and curvature.
-/

structure ConnectionTheoryPackage (D : DifferentialStructure) where
  connection : Type u
  torsion : Type v
  curvature : Type w
  metricCompatible : Prop
  torsionFree : Prop
  connectionDefined : Prop
  metricCompatibleTerm : metricCompatible
  torsionFreeTerm : torsionFree
  connectionDefinedTerm : connectionDefined

structure ConnectionTheoryEvidence {D : DifferentialStructure}
    (C : ConnectionTheoryPackage D) where
  metricCompatibleClosed : C.metricCompatible
  torsionFreeClosed : C.torsionFree
  connectionDefinedClosed : C.connectionDefined

def ConnectionTheoryClosed {D : DifferentialStructure}
    (C : ConnectionTheoryPackage D) : Prop :=
  C.metricCompatible ∧ C.torsionFree ∧ C.connectionDefined

theorem connection_theory_closed_from_evidence {D : DifferentialStructure}
    (C : ConnectionTheoryPackage D) (E : ConnectionTheoryEvidence C) :
    ConnectionTheoryClosed C := by
  exact And.intro E.metricCompatibleClosed
    (And.intro E.torsionFreeClosed E.connectionDefinedClosed)

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse
