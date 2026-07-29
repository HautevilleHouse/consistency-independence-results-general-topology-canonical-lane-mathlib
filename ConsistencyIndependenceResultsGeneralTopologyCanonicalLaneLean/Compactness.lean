import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure CompactnessPackage where
  sequentiallyCompactImpliesCountablyCompact : Prop
  firstCountableThenSequentiallyCompact : Prop
  consistent : Prop
  independent : Prop

structure CompactnessEvidence (C : CompactnessPackage) where
  sequentiallyCompactImpliesCountablyCompactClosed : C.sequentiallyCompactImpliesCountablyCompact
  firstCountableThenSequentiallyCompactClosed : C.firstCountableThenSequentiallyCompact
  consistentClosed : C.consistent
  independentClosed : C.independent

def CompactnessClosed (C : CompactnessPackage) : Prop :=
  C.sequentiallyCompactImpliesCountablyCompact ∧ C.firstCountableThenSequentiallyCompact ∧ C.consistent ∧ C.independent

theorem compactness_closed_from_evidence (C : CompactnessPackage) (E : CompactnessEvidence C) : CompactnessClosed C := by
  exact And.intro E.sequentiallyCompactImpliesCountablyCompactClosed (And.intro E.firstCountableThenSequentiallyCompactClosed (And.intro E.consistentClosed E.independentClosed))

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse