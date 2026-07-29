import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure ClassificationTheoremPackage where
  spaceType : Type u
  topology : TopologicalSpace spaceType
  classificationProperty : Prop
  invarianceProperty : Prop
  closedUnderInvariance : Prop

structure ClassificationTheoremEvidence (C : ClassificationTheoremPackage) where
  classificationPropertyClosed : C.classificationProperty
  invariancePropertyClosed : C.invarianceProperty
  closedUnderInvarianceClosed : C.closedUnderInvariance

def ClassificationTheoremClosed (C : ClassificationTheoremPackage) : Prop :=
  C.classificationProperty ∧ C.invarianceProperty ∧ C.closedUnderInvariance

theorem classification_theorem_closed_from_evidence (C : ClassificationTheoremPackage) (E : ClassificationTheoremEvidence C) : ClassificationTheoremClosed C :=
  And.intro E.classificationPropertyClosed (And.intro E.invariancePropertyClosed E.closedUnderInvarianceClosed)

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse