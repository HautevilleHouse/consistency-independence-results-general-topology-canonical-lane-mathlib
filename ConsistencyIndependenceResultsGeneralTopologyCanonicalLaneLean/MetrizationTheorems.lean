import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure MetrizationPackage where
  nagataSmirnov : Prop
  bingNagataSmirnov : Prop
  consistent : Prop
  independent : Prop

structure MetrizationEvidence (M : MetrizationPackage) where
  nagataSmirnovClosed : M.nagataSmirnov
  bingNagataSmirnovClosed : M.bingNagataSmirnov
  consistentClosed : M.consistent
  independentClosed : M.independent

def MetrizationClosed (M : MetrizationPackage) : Prop :=
  M.nagataSmirnov ∧ M.bingNagataSmirnov ∧ M.consistent ∧ M.independent

theorem metrization_closed_from_evidence (M : MetrizationPackage) (E : MetrizationEvidence M) : MetrizationClosed M := by
  exact And.intro E.nagataSmirnovClosed (And.intro E.bingNagataSmirnovClosed (And.intro E.consistentClosed E.independentClosed))

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse