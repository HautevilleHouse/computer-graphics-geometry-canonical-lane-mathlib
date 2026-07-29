import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure Sampler where
  wrapU : String
  wrapV : String
  filter : String

def bilinearSampler : Sampler :=
  { wrapU := "repeat", wrapV := "repeat", filter := "bilinear" }

structure Texture2D where
  width : Nat
  height : Nat
  data : Array (Array (Float × Float × Float))

def textureLookup (tex : Texture2D) (u : Float) (v : Float) : (Float × Float × Float) :=
  (0,0,0)

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
