import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure FilterDesignPackage where
  filterType : String
  transferFunction : ℝ → ℂ
  stabilityCondition : Prop
  causalityCondition : Prop

structure FilterDesignEvidence (F : FilterDesignPackage) where
  stabilityClosed : F.stabilityCondition
  causalityClosed : F.causalityCondition

def FilterDesignClosed (F : FilterDesignPackage) : Prop :=
  F.stabilityCondition ∧ F.causalityCondition

theorem filter_design_closed_from_evidence (F : FilterDesignPackage)
    (E : FilterDesignEvidence F) : FilterDesignClosed F := by
  exact And.intro E.stabilityClosed E.causalityClosed

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse
