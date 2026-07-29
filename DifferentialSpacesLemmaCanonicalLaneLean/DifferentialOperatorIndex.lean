import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesLemmaCanonicalLaneLean

structure EllipticOperatorPackage where
  vectorBundle : Type u
  symbol : Type v
  fredholmIndex : ℤ
  kernelDimension : ℕ
  cokernelDimension : ℕ
  ellipticRegularity : Prop
  indexTheoremApplicable : Prop
  smoothCoefficients : Prop

structure EllipticOperatorEvidence (E : EllipticOperatorPackage) where
  ellipticRegularityClosed : E.ellipticRegularity
  indexTheoremApplicableClosed : E.indexTheoremApplicable
  smoothCoefficientsClosed : E.smoothCoefficients
  indexComputed : E.fredholmIndex = E.kernelDimension - E.cokernelDimension

def EllipticOperatorClosed (E : EllipticOperatorPackage) : Prop :=
  E.ellipticRegularity ∧ E.indexTheoremApplicable ∧ E.smoothCoefficients ∧
  (E.fredholmIndex = E.kernelDimension - E.cokernelDimension)

theorem elliptic_operator_closed_from_evidence (E : EllipticOperatorPackage)
    (Ev : EllipticOperatorEvidence E) : EllipticOperatorClosed E := by
  exact And.intro Ev.ellipticRegularityClosed
    (And.intro Ev.indexTheoremApplicableClosed
      (And.intro Ev.smoothCoefficientsClosed Ev.indexComputed))

end DifferentialSpacesLemmaCanonicalLaneLean
end HautevilleHouse