import classicalModelsComputationTuringMachinesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean

structure TuringMachine where
  states : Nat
  symbols : Nat
  transition : Nat × Nat → Nat × Nat × Int
  startState : Nat
  acceptState : Nat

def TMRecognizes (M : TuringMachine) (L : Set (List Bool)) : Prop :=
  ∀ x : List Bool, (∃ t : Nat, (M.eval x).states = M.acceptState) ↔ x ∈ L

structure TuringAdmittedObject where
  classicalObject : TuringMachine
  projectedLanguage : Set (List Bool)
  solver : DecisionProcedure

end ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean
end HautevilleHouse