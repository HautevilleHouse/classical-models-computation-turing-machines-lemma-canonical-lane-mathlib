import classicalModelsComputationTuringMachinesLemmaCanonicalLaneLean.TuringMachines

namespace HautevilleHouse
namespace ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean

structure PartialRecursiveFunction where
  arity : Nat
  computation : (List Nat → Option Nat)

structure LambdaCalculusTerm where
  term : String

abbrev TM := TuringMachine

structure ChurchTuringBridge where
  tmToPartialRecursive : TuringMachine → PartialRecursiveFunction
  partialRecursiveToTm : PartialRecursiveFunction → TuringMachine
  tmToLambda : TuringMachine → LambdaCalculusTerm
  lambdaToTm : LambdaCalculusTerm → TuringMachine
  coherenceProof : ∀ (f : PartialRecursiveFunction), partialRecursiveToTm f = lambdaToTm (tmToLambda (partialRecursiveToTm f)) := by
    intro f
    rfl

def churchTuringBridgeClosed : Prop :=
  ∃ (B : ChurchTuringBridge), True

theorem church_turing_thesis_admissible : Prop :=
  ∀ (f : PartialRecursiveFunction), ∃ (M : TuringMachine), TMRecognizes M (Set.range f)

end ClassicalModelsComputationTuringMachinesLemmaCanonicalLaneLean
end HautevilleHouse