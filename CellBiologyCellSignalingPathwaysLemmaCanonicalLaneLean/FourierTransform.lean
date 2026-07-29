import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure FourierTransformPackage where
  signalSpace : Type
  transform : (signalSpace → ℝ) → (ℝ → ℂ)
  inversionFormula : Prop
  isometryProperty : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  inversionClosed : F.inversionFormula
  isometryClosed : F.isometryProperty

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.inversionFormula ∧ F.isometryProperty

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage)
    (E : FourierTransformEvidence F) : FourierTransformClosed F := by
  exact And.intro E.inversionClosed E.isometryClosed

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse
