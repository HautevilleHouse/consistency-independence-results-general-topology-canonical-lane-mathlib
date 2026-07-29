import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure ProductParacompactnessPackage where
  productOfParacompactSpaces : Prop
  consistent : Prop
  independent : Prop

structure ProductParacompactnessEvidence (P : ProductParacompactnessPackage) where
  productOfParacompactSpacesClosed : P.productOfParacompactSpaces
  consistentClosed : P.consistent
  independentClosed : P.independent

def ProductParacompactnessClosed (P : ProductParacompactnessPackage) : Prop :=
  P.productOfParacompactSpaces ∧ P.consistent ∧ P.independent

theorem product_paracompactness_closed_from_evidence (P : ProductParacompactnessPackage) (E : ProductParacompactnessEvidence P) : ProductParacompactnessClosed P := by
  exact And.intro E.productOfParacompactSpacesClosed (And.intro E.consistentClosed E.independentClosed)

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse