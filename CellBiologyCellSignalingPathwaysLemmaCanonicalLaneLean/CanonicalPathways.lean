import HautevilleHouse.CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean

structure CanonicalPathwaysPackage where
  mapkPathway : Prop
  pi3kAktPathway : Prop
  jakStatPathway : Prop
  wntPathway : Prop
  signalingCrosstalkControlled : Prop

structure CanonicalPathwaysEvidence (C : CanonicalPathwaysPackage) where
  mapkPathwayClosed : C.mapkPathway
  pi3kAktPathwayClosed : C.pi3kAktPathway
  jakStatPathwayClosed : C.jakStatPathway
  wntPathwayClosed : C.wntPathway
  signalingCrosstalkControlledClosed : C.signalingCrosstalkControlled

def CanonicalPathwaysClosed (C : CanonicalPathwaysPackage) : Prop :=
  C.mapkPathway ∧ C.pi3kAktPathway ∧ C.jakStatPathway ∧ C.wntPathway ∧ C.signalingCrosstalkControlled

theorem canonical_pathways_closed_from_evidence (C : CanonicalPathwaysPackage) (E : CanonicalPathwaysEvidence C) :
    CanonicalPathwaysClosed C := by
  exact And.intro E.mapkPathwayClosed
    (And.intro E.pi3kAktPathwayClosed
      (And.intro E.jakStatPathwayClosed
        (And.intro E.wntPathwayClosed E.signalingCrosstalkControlledClosed)))

end CellBiologyCellSignalingPathwaysLemmaCanonicalLaneLean
end HautevilleHouse
