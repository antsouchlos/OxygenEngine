import FE_Types

class FleWriter:
    def genPolygon(self, polygon = FE_Types.Polygon()):
        result = ""

        result += '<' + polygon.n + ',' + polygon.normal + ",<"
        for vertex_num in polygon.vertexNums:
            result += vertex_num + '\''
        result += ">>"

        return result
    
    def genVertexGroup(self, vertex_group = FE_Types.VertexGroup()):
        result = ""

        result += '"'
        result += vertex_group.name + ',' + vertex_group.material + ',' + vertex_group.bone_name + ','
        for polygon in vertex_group.polygons:
            result += self.genPolygon(polygon)
        result += "\"\n"

        return result
    
    def genUvMap(self, uvmap = FE_Types.UVMap()):
        result = ""

        result += '<' + uvmap.name + '/' + uvmap.u + '/' + uvmap.v + "/>"

        return result
    
    def genVertex(self, vertex = FE_Types.Vertex()):
        result = ""

        result += '"' + vertex.n + ','
        result += vertex.x + '/' + vertex.y + '/' + vertex.z + "/,"
        result += vertex.normalx + '/' + vertex.normaly + '/' + vertex.normalz + "/,"
        for uvmap in vertex.uvmaps:
            result += self.genUvMap(uvmap)
        result += "\"\n"

        return result

    def genTransformation(self, transformation = FE_Types.Transformation()):
        result = ""

        result += '<'
        result += transformation.pos.x + '\'' + transformation.pos.y + '\'' + transformation.pos.z + '\'' + '/'
        result += transformation.rot.x + '\'' + transformation.rot.y + '\'' + transformation.rot.z + '\'' + '/'
        result += transformation.sca.x + '\'' + transformation.sca.y + '\'' + transformation.sca.z + '\'' + '/'
        result += transformation.bonename + '/'
        result += '>'

        return result
    
    def genAnimation(self, animation = FE_Types.Animation()):
        result = ""

        result += '"'

        result += animation.frameNum + ','
        result += animation.inverse_kinematics + ','
        for transformation in animation.transforms:
            result += self.genTransformation(transformation)

        result += "\"\n"

        return result
        
    def genObject(self, object = FE_Types.Object()):
        result = ""

        result += "[ObjectStart]\n"

        result += '"' + object.name + "\"\n\n"

        result += "[PRSStart]\n"
        result += '"' + object.pos.x + ',' + object.pos.y + ',' + object.pos.z + ',' + '"' + '\n'
        result += '"' + object.rot.x + ',' + object.rot.y + ',' + object.rot.z + ',' + '"' + '\n'
        result += '"' + object.sca.x + ',' + object.sca.y + ',' + object.sca.z + ',' + '"' + '\n'
        result += "[PRSEnd]\n\n"

        result += "[AnimationStart]\n"
        for animation in object.animations:
            result += self.genAnimation(animation)
        result += "[AnimationEnd]\n\n"

        result += "[VertsStart]\n"
        for vertex in object.vertices:
            result += self.genVertex(vertex)
        result += "[VertsEnd]\n\n"

        result += "[HEAOStart]\n"
        result += '"' + object.physics.bounciness + "\"\n"
        result += '"' + object.physics.vehicle + "\"\n"
        result += '"' + object.physics.tire + "\"\n"
        result += "[HEAOEnd]\n\n"

        result += "[VGStart]\n"
        for vertex_group in object.vertex_groups:
            result += self.genVertexGroup(vertex_group)
        result += "[VGEnd]\n\n"

        result += "[ObjectEnd]\n\n"

        return result
    
    def genInteractions(self, interactions = []):
        result = ""

        result += '"'


        for interaction in interactions:
            result += '<'

            result += '<'
            for object in interaction.objectNames:
                result += object + ','
            result += '>'
            result += interaction.interaction + '/'

            result += '>'

        result += "\"\n"

        return result
    
    def genTcm(self, tcm = FE_Types.TextureCombineMode()):
        result = ""

        result += '"'

        result += tcm.name + ','

        result += '<'
        for texture in tcm.textureNames:
            result += texture + '/'
        result += ">,"

        result += tcm.combine_mode + ','

        result += "\"\n"

        return result
    
    def genGroups(self, groups = []):
        result = ""

        result += "[GroupStart]\n"

        for group in groups:
            result += '"' + group + '"' + '\n'

        result += "[GroupEnd]\n\n"

        return result
    
    def genMaterial(self, material = FE_Types.Material()):
        result = ""

        result += '"'

        result += material.name + ','
        result += material.specular_intensity + ','
        result += material.specular_hardness + ','
        result += material.alpha + ','
        result += material.shadeless + ','

        result += material.dif_r + '/' + material.dif_g + '/' + material.dif_b + '/' + material.dif_a + '/' + ','
        result += material.scol_r + '/' + material.scol_g + '/' + material.scol_b + '/' + material.scol_a + '/' + ','

        result += '<'

        for texture in material.textureNames:
            result += texture + '/'

        result += ">,"

        result += "\"\n"

        return result
    
    def genTexture(self, texture = FE_Types.Texture()):
        result = ""

        result += '"'

        result += texture.name + ','
        result += texture.path + ','
        result += texture.type + ','
        result += texture.stencil_num + ','
        result += texture.stencil_name + ','

        result += "\"\n"

        return result
    
    def genLight(self, light = FE_Types.Light()):
        result = ""

        result += '"'

        result += light.name + ','

        result += light.pos.x + '/' + light.pos.y + '/' + light.pos.z + '/' + ','

        result += light.rot.x + '/' + light.rot.y + '/' + light.rot.z + '/' + ','

        result += light.light_type + ','

        result += "\"\n"

        return result;
    
    def genCamera(self, camera = FE_Types.Camera()):
        result = ""

        result += '"'

        result += camera.name + ','

        result += camera.pos.x + '/' + camera.pos.y + '/' + camera.pos.z
        result += "/,"

        result += camera.rot.x + '/' + camera.rot.y + '/' + camera.rot.z
        result += "/,"

        result += camera.aspect_ratio + ','
        result += camera.field_of_view + ','
        result += camera.near + ','
        result += camera.far + ','

        result += "\"\n"

        return result
    
    def genScene(self, scene = FE_Types.Scene()):
        result = ""

        result += "[SceneStart]\n"
        result += '"' + scene.name + "\"\n\n"

        result += "[CameraStart]\n"
        for camera in scene.cameras:
            result += self.genCamera(camera)
        result += "[CameraEnd]\n\n"

        result += "[LightStart]\n"
        for light in scene.lights:
            result += self.genLight(light)
        result += "[LightEnd]\n\n"

        result += "[TextureStart]\n"
        for texture in scene.textures:
            result += self.genTexture(texture)
        result += "[TextureEnd]\n\n"

        result += "[MaterialStart]\n"
        for material in scene.materials:
            result += self.genMaterial(material)
        result +=  "[MaterialEnd]\n\n"

        result += self.genGroups(scene.groups)

        result += "[TCMStart]\n"
        for tcm in scene.textureCombineModes:
            result += self.genTcm(tcm)
        result += "[TCMEnd]\n\n"

        result += "[HEASStart]\n";
        result += '"' + scene.gravity + ','
        result += scene.gravityAxis + "\"\n"

        result += self.genInteractions(scene.interactions)

        result += "[HEASEnd]\n\n"

        for object in scene.objects:
            result += self.genObject(object)

        result += "[SceneEnd]\n\n"
        
        return result
    
    def genWorld(self, world = FE_Types.World()):
        result = ""
        
        result += "[WorldStart]\n"
        result += '"' + world.name + "\"\n\n"

        for scene in world.scenes:
            result += genScene(scene)

        result += "[WorldEnd]\n\n"

        return result
        
    def genStr(self, worlds = []):
        result = ""

        for world in worlds:
            result += self.genWorld(world)

        return result
