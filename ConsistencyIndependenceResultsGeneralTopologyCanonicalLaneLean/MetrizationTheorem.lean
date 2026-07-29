import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure MetrizationPackage (S : SeparationPackage) where
  regularLindelofImpliesMetrizable : Prop
  paracompactHausdorffImpliesMetrizable : Prop
  locallyMetricImpliesMetrizable : Prop

structure MetrizationEvidence {S : SeparationPackage} (M : MetrizationPackage S) where
  regularLindelofImpliesMetrizableClosed : M.regularLindelofImpliesMetrizable
  paracompactHausdorffImpliesMetrizableClosed : M.paracompactHausdorffImpliesMetrizable
  locallyMetricImpliesMetrizableClosed : M.locallyMetricImpliesMetrizable

def MetrizationClosed {S : SeparationPackage} (M : MetrizationPackage S) : Prop :=
  M.regularLindelofImpliesMetrizable ∧ M.paracompactHausdorffImpliesMetrizable ∧ M.locallyMetricImpliesMetrizable

theorem metrization_closed_from_evidence {S : SeparationPackage} (M : MetrizationPackage S) (E : MetrizationEvidence M) : MetrizationClosed M := by
  exact And.intro E.regularLindelofImpliesMetrizableClosed (And.intro E.paracompactHausdorffImpliesMetrizableClosed E.locallyMetricImpliesMetrizableClosed)

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse