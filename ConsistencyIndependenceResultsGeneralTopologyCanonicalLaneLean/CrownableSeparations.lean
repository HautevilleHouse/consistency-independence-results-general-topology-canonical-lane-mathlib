import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure CrownableSeparationsPackage where
  spaceType : Type u
  topologyStructure : TopologicalSpace spaceType
  crownablePair : (spaceType × spaceType) → Prop
  separationCover : Prop
  independenceWitness : Prop

structure CrownableSeparationsEvidence (C : CrownableSeparationsPackage) where
  separationCoverClosed : C.separationCover
  independenceWitnessClosed : C.independenceWitness

def CrownableSeparationsClosed (C : CrownableSeparationsPackage) : Prop :=
  C.separationCover ∧ C.independenceWitness

theorem crownable_separations_closed_from_evidence (C : CrownableSeparationsPackage)
    (E : CrownableSeparationsEvidence C) : CrownableSeparationsClosed C :=
  And.intro E.separationCoverClosed E.independenceWitnessClosed

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse