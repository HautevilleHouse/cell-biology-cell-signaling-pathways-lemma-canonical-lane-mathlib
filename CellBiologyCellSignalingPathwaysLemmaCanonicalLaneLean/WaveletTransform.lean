import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure WaveletTransformPackage where
  motherWavelet : ℝ → ℝ
  scalingFunction : ℝ → ℝ
  multiresolutionAnalysis : Prop
  orthonormalBasis : Prop

structure WaveletTransformEvidence (W : WaveletTransformPackage) where
  multiresolutionClosed : W.multiresolutionAnalysis
  orthonormalClosed : W.orthonormalBasis

def WaveletTransformClosed (W : WaveletTransformPackage) : Prop :=
  W.multiresolutionAnalysis ∧ W.orthonormalBasis

theorem wavelet_transform_closed_from_evidence (W : WaveletTransformPackage)
    (E : WaveletTransformEvidence W) : WaveletTransformClosed W := by
  exact And.intro E.multiresolutionClosed E.orthonormalClosed

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse
