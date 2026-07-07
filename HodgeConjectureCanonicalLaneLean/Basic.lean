/-!
# hodge-conjecture-canonical-lane Lean migration boundary

This module records the source repository boundary and canonical-lane data
structures for the Lean migration. The source package translation lives in
`HodgeConjectureCanonicalLaneLean/SourcePackage.lean`.

This module records the source boundary; source-conjecture closure remains
carried outside this Lean boundary.
-/

namespace HautevilleHouse
namespace HodgeConjectureCanonicalLaneLean

def sourceRepository : String := "hodge-conjecture-canonical-lane"
def sourceUrl : String := "https://github.com/HautevilleHouse/hodge-conjecture-canonical-lane"
def sourceDescription : String := "Canonical-lane closure package for the Hodge Conjecture: admissible-class formulation, projection gates, local-to-global bridge, and carried remainder."
def sourceClassification : String := "abstract_math_theorem_repo"
def sourceTopics : List String := ["algebraic-geometry", "cohomology", "hodge-conjecture", "mathematical-proof", "millennium-problem", "reproducibility", "spectral-theory", "canonical-lane", "local-to-global", "manifold-constrained"]

structure AdmissibleObject where
  sourceKey : String
  route : String
deriving Repr, DecidableEq

structure LocalCertificate where
  object : AdmissibleObject
  gate : String
  evidence : String
deriving Repr, DecidableEq

structure CarriedRemainder where
  label : String
  reason : String
deriving Repr, DecidableEq

structure SourceTheoremBoundary where
  sourceKey : String
  claimBoundary : String
  formalizationStatus : String
deriving Repr, DecidableEq

def sourceTheoremBoundary : SourceTheoremBoundary := {
  sourceKey := sourceRepository,
  claimBoundary := "source package translated to Lean data and source formula models recorded; source-conjecture closure remains outside this Lean boundary",
  formalizationStatus := "SOURCE_DERIVED_FORMALIZATION_LAYER"
}

def canonicalLaneBoundary : String :=
  "Use the source package translation and formalization layer as data; replace boundaries with Mathlib-backed statements before any proof claim."

end HodgeConjectureCanonicalLaneLean
end HautevilleHouse
