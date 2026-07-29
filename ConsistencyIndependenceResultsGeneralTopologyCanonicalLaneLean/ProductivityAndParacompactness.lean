import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean.GeneralTopologyAdmissibleObject

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure ProductivityPackage where
  productT2 : Prop
  productRegular : Prop
  productNormal : Prop
  productParacompact : Prop
  productT2Closed : productT2
  productRegularClosed : productRegular
  productNormalClosed : productNormal
  productParacompactClosed : productParacompact

structure ProductivityEvidence (P : ProductivityPackage) where
  allClosed : P.productT2 ∧ P.productRegular ∧ P.productNormal ∧ P.productParacompact

def ProductivityClosed (P : ProductivityPackage) : Prop :=
  P.productT2 ∧ P.productRegular ∧ P.productNormal ∧ P.productParacompact

theorem productivity_closed_from_evidence (P : ProductivityPackage)
    (E : ProductivityEvidence P) : ProductivityClosed P :=
  E.allClosed

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse