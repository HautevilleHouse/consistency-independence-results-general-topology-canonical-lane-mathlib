import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure TopologicalSpaceObject where
  carrier : Type
  topology : TopologicalSpace carrier

definition TopologicalProperty (X : TopologicalSpaceObject) : Prop :=
  True

structure AdmittedTopologicalObject where
  space : TopologicalSpaceObject
  property : TopologicalProperty space
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse