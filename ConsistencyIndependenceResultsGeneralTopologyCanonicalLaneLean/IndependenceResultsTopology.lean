import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean

structure TopologySpaceAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  independenceCondition : Prop
  consistencyCondition : Prop
  resultWitness : independenceCondition ∨ consistencyCondition

structure AdmissibleClass where
  object : TopologySpaceAdmittedObject
  bridgeSatisfied : Prop
  gateSatisfied : Prop
  gateWitness : bridgeSatisfied ∨ gateSatisfied

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.bridgeSatisfied ∧ (A.bridgeSatisfied ∨ A.gateSatisfied)

end ConsistencyIndependenceResultsGeneralTopologyCanonicalLaneLean
end HautevilleHouse