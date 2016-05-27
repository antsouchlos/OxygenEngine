class FE_Vec4:
    x = 0.0
    y = 0.0
    z = 0.0
    w = 0.0

class UVMap:
    name = ""
    u = 0.0
    v = 0.0

class Vertex:
    n = 0
    
    x = 0.0
    y = 0.0
    z = 0.0

    normal_x = 0.0
    normal_y = 0.0
    normal_z = 0.0

    uvmaps = []

class Polygon:
    n = 0
    normal = 0

    vertexNums = []

class VertexGroup:
    name = ""
    material = ""
    bone_name = ""

    polygons = []

class Transformation:
    bonname = ""

    pos = FE_Vec4 
    rot = FE_Vec4 
    sca = FE_Vec4

class Animation:
    frameNum = 0

    inverse_kinematics = False

    transforms = []

class Texture:
    name = ""
    path = ""

    type = ""
    stencil_name = ""

    stencil_num = 0

class Material:
    name = ""

    shadeless = False

    dif_r = 0
    dif_g = 0
    dif_b = 0
    dif_a = 0

    scol_r = 0
    scol_g = 0
    scol_b = 0
    scol_a = 0

    alpha = 0.0
    
    specular_intensity = 0.0
    specular_hardness = 0.0

    textureNames = []

class TextureCombineMode:
    name = ""
    combine_mode = ""

    textureNames = []

class Interaction:
    objectNames = []

    interaction = ""

class Physics:
    bouncines = ""

    vehicle = False
    tire = False

class Object:
    name = ""

    pos = FE_Vec4 
    rot = FE_Vec4 
    sca = FE_Vec4
    
    vertices = [];
    vertex_groups = [];
    animations = [];
    physics = Physics();

class Camera:
    name = ""

    pos = FE_Vec4 
    rot = FE_Vec4 
    
    aspect_ratio = 0.0
    field_of_view = 0.0

    near = 0
    far = 0

class Light:
    name = ""

    pos = FE_Vec4
    rot = FE_Vec4

    light_type = ""

class Scene:
    name = ""

    gravity = 0.0
    gravityAxis = ""

    groups = [];

    cameras = [];
    lights = [];

    interactions = [];
    objects = [];
    textures = [];
    materials = [];
    textureCombineModes = [];

class World:
    name = ""

    scenes = [];
    

























