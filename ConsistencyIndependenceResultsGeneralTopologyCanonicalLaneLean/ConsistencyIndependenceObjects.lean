import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure TopologicalSpaceAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  t0Space : Prop
  t1Space : Prop
  hausdorff : Prop
  regular : Prop
  tychonoff : Prop
  normal : Prop
  perfectlyNormal : Prop
  paracompact : Prop
  metrizable : Prop
  conclusion : metrizable

structure TopologicalEndgameState where
  object : TopologicalSpaceAdmittedObject

def TopologicalWitnessClosed (O : TopologicalSpaceAdmittedObject) : Prop :=
  O.metrizable

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse