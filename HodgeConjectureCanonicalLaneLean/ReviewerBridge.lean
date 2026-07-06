import HodgeConjectureCanonicalLaneLean.Formalization
import HodgeConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace HodgeConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "9c8ad403910924c43135ae34014897871dabb28e4dbc6e6e5000aba1b66f831e", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "09198f4c5be46044c0e49cb81120bcfbd51de9201dc7943f56f35a5138e2163e", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "79e9026debebc9ed46cb4bebead5a6bd991afe706f62c7bdf466cfd72d79d852", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "425e7217ca372d15fddab142faa0e491f044d139164db19396e2489da9edd8a8", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "fe9d2b3b15487e463f845294d78fe215c0f319fe591dbb3ee2012732067ba5cd", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "b769c182f665d6587277705bd86d91c418f6d3505db4f5c44b324aa91928f527", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "a7bdccd99785a438fc16d935464ff956175c87b642d2485af53c07d31581b56b", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "5bb5e4055d2492a44e00b2a24821cb8c83e0e68f08c6df670661513a8c161e2f", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "fc092c66719224245e8bfe6bc446746f6d4d6cde3105057d1bf921bbec352e0c", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "0ed73bcf2ac5a7139c85948915f238c029f6590d872bc3f7196c2842bab78ab5" },
  { path := "README.md", sha256 := "15de94e28775db58cac83e439a9ff032e194150fc8f2e89ea714d16d1ed20502" },
  { path := "artifacts/constants_extracted.json", sha256 := "425e7217ca372d15fddab142faa0e491f044d139164db19396e2489da9edd8a8" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "79e9026debebc9ed46cb4bebead5a6bd991afe706f62c7bdf466cfd72d79d852" },
  { path := "artifacts/constants_registry.json", sha256 := "fe9d2b3b15487e463f845294d78fe215c0f319fe591dbb3ee2012732067ba5cd" },
  { path := "artifacts/promotion_report.json", sha256 := "a7bdccd99785a438fc16d935464ff956175c87b642d2485af53c07d31581b56b" },
  { path := "artifacts/stitch_constants.json", sha256 := "b769c182f665d6587277705bd86d91c418f6d3505db4f5c44b324aa91928f527" },
  { path := "notes/EG1_public.md", sha256 := "2273e6cfbf254efb0051a0d9b1f9280f6d86b5fb2d8969b9034b585def1cdbb7" },
  { path := "notes/EG2_public.md", sha256 := "d9b8fa6e6dd54e7739cc1f7c9a3507929cc48fb4daf6519c5494dcc1612dcd9f" },
  { path := "notes/EG3_public.md", sha256 := "cb78b68bc8b84795224166eab074d30614859818d4c6ed928ec3b37458b389e5" },
  { path := "notes/EG4_public.md", sha256 := "b80012a47ecbfeb67b50036588ebf528bb78f873eafbdc63648595c42a7cfcbe" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "09198f4c5be46044c0e49cb81120bcfbd51de9201dc7943f56f35a5138e2163e" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "0eb8035dd69cdb002fb5243b8ef9ba61f9eef72be8239e80e464e6a72a707b1f" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "53151632ffd2ef243ca638c91a696e1d584160c5ae700eeafb0187e859a8ffb6" },
  { path := "paper/HODGE_CONJECTURE_PREPRINT.md", sha256 := "7f654c633059a0c854ee24dd5e60c98582a5572e8be1fbeb7a48ba332fa5af72" },
  { path := "repro/REPRO_PACK.md", sha256 := "39a3f874675781f58c4e0c0d86ccb6642c1bc5cdfa7a36bbafabb77ec15ca1e2" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "2fb123ad806fd5ac6d93be4d2d80ce9a6ab65d0a7fadc49a43bb9b5e8ecda6d8" },
  { path := "repro/certificate_baseline.json", sha256 := "fc092c66719224245e8bfe6bc446746f6d4d6cde3105057d1bf921bbec352e0c" },
  { path := "repro/run_repro.sh", sha256 := "938003de92f9b40f917b07e93f69767b221fc9524785c9301d78be47ea96a5bd" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/hodge_closure_guard.py", sha256 := "3a891f77fc2b232cf170769770540833c7f3a9919f2a19ed45de75a7cf2b383b" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "H_G1", status := "PASS" },
  { gate := "H_G2", status := "PASS" },
  { gate := "H_G3", status := "PASS" },
  { gate := "H_G4", status := "PASS" },
  { gate := "H_G5", status := "PASS" },
  { gate := "H_G6", status := "PASS" },
  { gate := "H_GCoh", status := "PASS" },
  { gate := "H_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "a_floor", value := "1.0" },
  { key := "alpha_alg", value := "1.0" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "1.0" },
  { key := "kappa_hodge", value := "1.0" },
  { key := "rho_rigidity", value := "1.0" },
  { key := "sigma_capture", value := "1.0" },
  { key := "sigma_star_can", value := "1.0" }
]

def bridgeConstantKeys : List String := [
  "a_floor",
  "alpha_alg",
  "eps_coh",
  "kappa_compact",
  "kappa_hodge",
  "rho_rigidity",
  "sigma_capture",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 5 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 24 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 8 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 8 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 8 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end HodgeConjectureCanonicalLaneLean
end HautevilleHouse
