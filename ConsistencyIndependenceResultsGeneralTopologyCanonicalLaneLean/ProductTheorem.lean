import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure ProductPackage where
  productOfHausdorffIsHausdorff : Prop
  productOfRegularIsRegular : Prop
  productOfTychonoffIsTychonoff : Prop

structure ProductEvidence (P : ProductPackage) where
  productOfHausdorffIsHausdorffClosed : P.productOfHausdorffIsHausdorff
  productOfRegularIsRegularClosed : P.productOfRegularIsRegular
  productOfTychonoffIsTychonoffClosed : P.productOfTychonoffIsTychonoff

def ProductClosed (P : ProductPackage) : Prop :=
  P.productOfHausdorffIsHausdorff ∧ P.productOfRegularIsRegular ∧ P.productOfTychonoffIsTychonoff

theorem product_closed_from_evidence (P : ProductPackage) (E : ProductEvidence P) : ProductClosed P := by
  exact And.intro E.productOfHausdorffIsHausdorffClosed (And.intro E.productOfRegularIsRegularClosed E.productOfTychonoffIsTychonoffClosed)

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse