import HodgeConjectureCanonicalLaneLean.AlgebraicCycleLayer

/-!
# Hodge Cohomology Substrate

This module records the cohomological side exposed by current Mathlib: ell-adic
cohomology of schemes and local cohomology. The classical Hodge decomposition
and rational Hodge-class theorem remain carried outside this native substrate.
-/

noncomputable section

universe u

namespace HautevilleHouse
namespace HodgeConjectureCanonicalLaneLean

structure NativeCohomologyProfile where
  degree : ℕ
  hodgeBidegreeP : ℕ
  hodgeBidegreeQ : ℕ
  cycleCodimension : ℕ
  ellAdicRoute : Bool
  localCohomologyRoute : Bool
  sheafRoute : Bool
deriving Repr, DecidableEq

def hodgeCohomologyProfile (p : ℕ) : NativeCohomologyProfile := {
  degree := 2 * p,
  hodgeBidegreeP := p,
  hodgeBidegreeQ := p,
  cycleCodimension := p,
  ellAdicRoute := true,
  localCohomologyRoute := true,
  sheafRoute := true
}

def HodgeCohomologyTypeAvailable : Prop :=
  ∀ (X : NativeScheme.{u}) (ell : ℕ) [Fact ell.Prime] (degree : ℕ),
    Nonempty (NativeEllAdicCohomology X ell degree → NativeEllAdicCohomology X ell degree)

theorem hodge_cohomology_type_available_checked :
    HodgeCohomologyTypeAvailable := by
  intro X ell inst degree
  exact ⟨id⟩

theorem hodge_cohomology_profile_degree_checked (p : ℕ) :
    (hodgeCohomologyProfile p).degree = 2 * p := by
  rfl

theorem hodge_cohomology_profile_routes_checked (p : ℕ) :
    (hodgeCohomologyProfile p).ellAdicRoute = true ∧
    (hodgeCohomologyProfile p).localCohomologyRoute = true ∧
    (hodgeCohomologyProfile p).sheafRoute = true := by
  exact ⟨rfl, rfl, rfl⟩

end HodgeConjectureCanonicalLaneLean
end HautevilleHouse
