import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure SeparationPackage where
  t0Space : Prop
  t1Space : Prop
  hausdorff : Prop
  regular : Prop
  tychonoff : Prop
  normal : Prop
  perfectlyNormal : Prop
  paracompact : Prop

structure SeparationEvidence (S : SeparationPackage) where
  t0SpaceClosed : S.t0Space
  t1SpaceClosed : S.t1Space
  hausdorffClosed : S.hausdorff
  regularClosed : S.regular
  tychonoffClosed : S.tychonoff
  normalClosed : S.normal
  perfectlyNormalClosed : S.perfectlyNormal
  paracompactClosed : S.paracompact

def SeparationClosed (S : SeparationPackage) : Prop :=
  S.t0Space ∧ S.t1Space ∧ S.hausdorff ∧ S.regular ∧ S.tychonoff ∧ S.normal ∧ S.perfectlyNormal ∧ S.paracompact

theorem separation_closed_from_evidence (S : SeparationPackage) (E : SeparationEvidence S) : SeparationClosed S := by
  exact And.intro E.t0SpaceClosed (And.intro E.t1SpaceClosed (And.intro E.hausdorffClosed (And.intro E.regularClosed (And.intro E.tychonoffClosed (And.intro E.normalClosed (And.intro E.perfectlyNormalClosed E.paracompactClosed))))))

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse