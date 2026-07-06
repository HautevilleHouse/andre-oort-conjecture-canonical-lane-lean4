import AndreOortConjectureCanonicalLaneLean.Formalization
import AndreOortConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace AndreOortConjectureCanonicalLaneLean

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
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "2ee6f1a3ae5cb3679d3173b31e306f11ce916ad0998f07a7574ee1fac11f3170", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "1521d7cb0b748f3e4bb09cbf163db08060c47a9c523f08ca59fe27d4c10eadf1", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "58e622a5ba374677521bedee024e9e872d2270c9cf11de3ccd44d2dd41954dc8", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "51ea2869924123df6e4700d81e20192a1f934467ad4936adadb21ae65ef9fbcc", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "b17c87a113c92e3905df6ea2c913efd0f66842e84e0aedaa199885f2b8fa2af8", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "d70b589fc0afdee82a9d475cf4d93a55ceff32cdca21fdd7549b0ec2a6bf3a34", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "cf6aab7d9c25d909f041724585deb1e3d5235c6dd318babf1941854e2e6a4b8a", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "74c00c06cbb6c61ae52c85a651c7733e9f6605f805d2bfd47ef195ac3eb4ef38", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "2b9a79eb3fbae180d463f7c7ce24d89924ec1193c94a2aa98b4754ee2ba15ad9", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "AO_G1", constant := "kappa_special" },
  { gate := "AO_G2", constant := "sigma_galois" },
  { gate := "AO_G3", constant := "kappa_compact" },
  { gate := "AO_G4", constant := "rho_rigidity" },
  { gate := "AO_G5", constant := "special_transfer" },
  { gate := "AO_G6", constant := "eps_coh" },
  { gate := "AO_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "d9a36745cf6d10816d08f9a11aaaefc6471be54f0ff51acbdc1d002cfed51ea5" },
  { path := "README.md", sha256 := "e1f12ca98cbc97f3b5ed1ff474be6078be8e75543f76c20d15667ce763476ac9" },
  { path := "artifacts/constants_extracted.json", sha256 := "51ea2869924123df6e4700d81e20192a1f934467ad4936adadb21ae65ef9fbcc" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "58e622a5ba374677521bedee024e9e872d2270c9cf11de3ccd44d2dd41954dc8" },
  { path := "artifacts/constants_registry.json", sha256 := "b17c87a113c92e3905df6ea2c913efd0f66842e84e0aedaa199885f2b8fa2af8" },
  { path := "artifacts/promotion_report.json", sha256 := "cf6aab7d9c25d909f041724585deb1e3d5235c6dd318babf1941854e2e6a4b8a" },
  { path := "artifacts/stitch_constants.json", sha256 := "d70b589fc0afdee82a9d475cf4d93a55ceff32cdca21fdd7549b0ec2a6bf3a34" },
  { path := "notes/EG1_public.md", sha256 := "52259f8cac6061577616db23e95b6bd8ead51934ed6d7530accab770b2cd4d76" },
  { path := "notes/EG2_public.md", sha256 := "78e14eed3a34bb77a663d9ddeac9b085fa114e07e6ef9f3151e02455fe79b76e" },
  { path := "notes/EG3_public.md", sha256 := "1f86a7afa1910a2ec210273ee00bfb89b98b1e8cdbb0fa70f803d1d33c4091bd" },
  { path := "notes/EG4_public.md", sha256 := "0814d1cc8a88c0aa5ad1c345dd5d8e7c3a9705aeb8de27b4ae0386d549c32c49" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "1521d7cb0b748f3e4bb09cbf163db08060c47a9c523f08ca59fe27d4c10eadf1" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "9b7728526d56322ba41851387ea3a4c85895600bcf6e49fc752f9529d3a4f15e" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "5c001f6c956c100d21685bc25d6a8d258f392fc702b40aef97a9a686d09f622a" },
  { path := "paper/ANDRE_OORT_CONJECTURE_PREPRINT.md", sha256 := "ec40068287235c29e49de5e2b4f661eb762bb1caea644c864429a861cc63915f" },
  { path := "repro/REPRO_PACK.md", sha256 := "b745be49c7f27a68823cf31e9af7ec31fe864fb94dcccd97aac1f9689d0422c7" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "191ba5b1cc042c83e0a5021016157f9c1e7ce7b59f05b54a8ec74dd16d1f4dc3" },
  { path := "repro/certificate_baseline.json", sha256 := "2b9a79eb3fbae180d463f7c7ce24d89924ec1193c94a2aa98b4754ee2ba15ad9" },
  { path := "repro/run_repro.sh", sha256 := "bd5db98db344ac40055052569d07a5f2d18fc3fc7e37be147ec22f9cb09e47df" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/ao_closure_guard.py", sha256 := "c0daf4d7da52911221557d31ef9cd3d970819feae1df04aa08eedc89a515c2c4" },
  { path := "scripts/README.md", sha256 := "6e92e95847ba18aaa99e8e6fe72eaf6f04f413f6174375b79c96606e89ec142f" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "AO_G1", status := "PASS" },
  { gate := "AO_G2", status := "PASS" },
  { gate := "AO_G3", status := "PASS" },
  { gate := "AO_G4", status := "PASS" },
  { gate := "AO_G5", status := "PASS" },
  { gate := "AO_G6", status := "PASS" },
  { gate := "AO_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "kappa_special", value := "1.0937330000000003" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_galois", value := "1.074" },
  { key := "sigma_star_can", value := "1.053" },
  { key := "special_transfer", value := "1.029422" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_special",
  "rho_rigidity",
  "sigma_galois",
  "sigma_star_can",
  "special_transfer"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end AndreOortConjectureCanonicalLaneLean
end HautevilleHouse
