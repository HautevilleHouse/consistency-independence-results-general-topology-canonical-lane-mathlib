import ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlib

structure TopologicalSpaceObject where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  space : TopologicalSpaceObject
  compactnessProperty : Prop
  separationProperty : Prop
  consistencyStatement : Prop
  independenceWitness : Prop
  conclusion : consistencyStatement ∨ independenceWitness

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TopologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse