import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure ConsistencyIndependenceResult where
  hypothesis : Prop
  conclusion : Prop
  consistency : Prop
  independence : Prop

structure AdmissibleTopologicalObject where
  space : Type u
  topology : TopologicalSpace space
  property : Prop
  propertyClosed : property

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse