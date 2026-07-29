import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure IndependenceDenseGDeltaPackage where
  spaceType : Type u
  topologyStructure : TopologicalSpace spaceType
  denseGDeltaSet : Set spaceType
  independenceProperty : Prop
  consistencyCondition : Prop

structure IndependenceDenseGDeltaEvidence (D : IndependenceDenseGDeltaPackage) where
  denseGDeltaSetClosed : D.denseGDeltaSet ≠ ∅
  independencePropertyClosed : D.independenceProperty
  consistencyConditionClosed : D.consistencyCondition

def IndependenceDenseGDeltaClosed (D : IndependenceDenseGDeltaPackage) : Prop :=
  D.denseGDeltaSet ≠ ∅ ∧ D.independenceProperty ∧ D.consistencyCondition

theorem independence_dense_gdelta_closed_from_evidence (D : IndependenceDenseGDeltaPackage)
    (E : IndependenceDenseGDeltaEvidence D) : IndependenceDenseGDeltaClosed D :=
  And.intro E.denseGDeltaSetClosed (And.intro E.independencePropertyClosed E.consistencyConditionClosed)

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse