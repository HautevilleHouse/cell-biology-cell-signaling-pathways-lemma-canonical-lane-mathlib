import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.PathwayLigandBinding

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure ReceptorActivationPackage where
  receptorConformation : Prop
  dimerization : Prop
  phosphorylation : Prop
  adapterRecruitment : Prop

structure ReceptorActivationEvidence (R : ReceptorActivationPackage) where
  receptorConformationClosed : R.receptorConformation
  dimerizationClosed : R.dimerization
  phosphorylationClosed : R.phosphorylation
  adapterRecruitmentClosed : R.adapterRecruitment

def ReceptorActivationClosed (R : ReceptorActivationPackage) : Prop :=
  R.receptorConformation ∧ R.dimerization ∧ R.phosphorylation ∧ R.adapterRecruitment

theorem receptor_activation_closed_from_evidence
    (R : ReceptorActivationPackage) (E : ReceptorActivationEvidence R) :
    ReceptorActivationClosed R := by
  exact And.intro E.receptorConformationClosed
    (And.intro E.dimerizationClosed
      (And.intro E.phosphorylationClosed E.adapterRecruitmentClosed))

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse