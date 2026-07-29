import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure DualityTheoremPackage where
  leftSpace : Type u
  leftTopology : TopologicalSpace leftSpace
  rightSpace : Type v
  rightTopology : TopologicalSpace rightSpace
  dualityMapping : Prop
  consistencyCondition : Prop
  independenceCondition : Prop

structure DualityTheoremEvidence (D : DualityTheoremPackage) where
  dualityMappingClosed : D.dualityMapping
  consistencyConditionClosed : D.consistencyCondition
  independenceConditionClosed : D.independenceCondition

def DualityTheoremClosed (D : DualityTheoremPackage) : Prop :=
  D.dualityMapping ∧ D.consistencyCondition ∧ D.independenceCondition

theorem duality_theorem_closed_from_evidence (D : DualityTheoremPackage) (E : DualityTheoremEvidence D) : DualityTheoremClosed D :=
  And.intro E.dualityMappingClosed (And.intro E.consistencyConditionClosed E.independenceConditionClosed)

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse