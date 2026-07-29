import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure SamplingTheoremPackage where
  bandlimit : ℝ
  samplingRate : ℝ
  reconstructionFormula : Prop
  nyquistCondition : Prop

structure SamplingTheoremEvidence (S : SamplingTheoremPackage) where
  reconstructionClosed : S.reconstructionFormula
  nyquistClosed : S.nyquistCondition

def SamplingTheoremClosed (S : SamplingTheoremPackage) : Prop :=
  S.reconstructionFormula ∧ S.nyquistCondition

theorem sampling_theorem_closed_from_evidence (S : SamplingTheoremPackage)
    (E : SamplingTheoremEvidence S) : SamplingTheoremClosed S := by
  exact And.intro E.reconstructionClosed E.nyquistClosed

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse
