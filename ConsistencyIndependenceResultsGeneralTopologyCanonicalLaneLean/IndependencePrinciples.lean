import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure IndependencePrinciplePackage where
  topologicalSpace : Type u
  topology : TopologicalSpace topologicalSpace
  independenceProperty : Prop
  consistencyProperty : Prop
  principleWitness : independenceProperty ∨ consistencyProperty

structure IndependencePrincipleEvidence (I : IndependencePrinciplePackage) where
  independencePropertyClosed : I.independenceProperty
  consistencyPropertyClosed : I.consistencyProperty

def IndependencePrincipleClosed (I : IndependencePrinciplePackage) : Prop :=
  I.independenceProperty ∧ I.consistencyProperty

theorem independence_principle_closed_from_evidence (I : IndependencePrinciplePackage) (E : IndependencePrincipleEvidence I) : IndependencePrincipleClosed I :=
  And.intro E.independencePropertyClosed E.consistencyPropertyClosed

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse