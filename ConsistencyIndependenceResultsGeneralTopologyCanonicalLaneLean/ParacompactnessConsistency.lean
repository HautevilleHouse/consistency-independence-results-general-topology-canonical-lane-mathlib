import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure ParacompactnessConsistencyPackage where
  spaceType : Type u
  topologyStructure : TopologicalSpace spaceType
  locallyFiniteRefinement : Prop
  consistencyWitness : Prop
  independenceCriterion : Prop

structure ParacompactnessConsistencyEvidence (P : ParacompactnessConsistencyPackage) where
  locallyFiniteRefinementClosed : P.locallyFiniteRefinement
  consistencyWitnessClosed : P.consistencyWitness
  independenceCriterionClosed : P.independenceCriterion

def ParacompactnessConsistencyClosed (P : ParacompactnessConsistencyPackage) : Prop :=
  P.locallyFiniteRefinement ∧ P.consistencyWitness ∧ P.independenceCriterion

theorem paracompactness_consistency_closed_from_evidence
    (P : ParacompactnessConsistencyPackage) (E : ParacompactnessConsistencyEvidence P) :
    ParacompactnessConsistencyClosed P :=
  And.intro E.locallyFiniteRefinementClosed
    (And.intro E.consistencyWitnessClosed E.independenceCriterionClosed)

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse