import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure TextureMappingCorePackage where
  uvSampling : Prop
  bilinearFiltering : Prop
  mipmapChain : Prop
  uvSamplingClosed : uvSampling
  bilinearFilteringClosed : bilinearFiltering
  mipmapChainClosed : mipmapChain

structure TextureMappingCoreEvidence (T : TextureMappingCorePackage) where
  uvSamplingClosed : T.uvSampling
  bilinearFilteringClosed : T.bilinearFiltering
  mipmapChainClosed : T.mipmapChain

def TextureMappingCoreClosed (T : TextureMappingCorePackage) : Prop :=
  T.uvSampling ∧ T.bilinearFiltering ∧ T.mipmapChain

theorem texture_mapping_core_closed_from_evidence (T : TextureMappingCorePackage)
    (E : TextureMappingCoreEvidence T) : TextureMappingCoreClosed T := by
  exact And.intro E.uvSamplingClosed (And.intro E.bilinearFilteringClosed E.mipmapChainClosed)

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
