import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsGeometryCanonicalLaneLean

structure Matrix4 where
  data : Array (Array Float) -- 4x4

def Matrix4.identity : Matrix4 :=
  { data := #[
    #[1,0,0,0],
    #[0,1,0,0],
    #[0,0,1,0],
    #[0,0,0,1]
  ] }

structure Transform where
  translation : (Float × Float × Float)
  rotation : (Float × Float × Float) -- Euler angles
  scale : (Float × Float × Float)

def Transform.identity : Transform :=
  { translation := (0,0,0), rotation := (0,0,0), scale := (1,1,1) }

def Transform.toMatrix (t : Transform) : Matrix4 :=
  Matrix4.identity

structure SceneNode where
  transform : Transform
  children : List SceneNode

def emptySceneNode : SceneNode :=
  { transform := Transform.identity, children := [] }

end ComputerGraphicsGeometryCanonicalLaneLean
end HautevilleHouse
