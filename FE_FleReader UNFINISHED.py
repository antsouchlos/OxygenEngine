import FE_Types
import FE_LexicalAnalyzer

class FleReader:
    def sortCamera(self, str = ""):
        result = FE_Types.Camera()

        

        return result
    
    def sortScene(self, str = ""):
        result = FE_Types.Scene()
        
        name = FE_LexicalAnalyzer.getIso(str, "\"")
        result.name = name

        size = FE_LexicalAnalyzer.countStr(str, "[CameraStart]")
        i = 0
        while i < size:
            scamera = FE_LexicalAnalyzer.getEnclosed(str, "[CameraStart]", "[CameraEnd]")
            str = FE_LexicalAnalyzer.cplxRepFStr(str, "[CameraStart]" + scamera = "[CameraEnd]")

            result.cameras.append(sortCamera(scamera))
            
            i += 1
        
        return result
        
    
    def sortToTypes(self, str = ""):
        result = []

        size = FE_LexicalAnalyzer.countStr(str, "[WorldStart]")
        i = 0
        while i < size:
            world = FE_Types.World()
            
            content = FE_LexicalAnalyzer.getEnclosed(str, "[WorldStart]", "[WorldEnd]")
            str = FE_LexicalAnalyzer.cpxRepFStr(str, "[WorldStart]" + content = "[WorldEnd]")

            world.name = FE_LexicalAnalyzer.getIso(content, "\"")

            size_scenes = FE_LexicalAnalyzer.countStr(content, "[SceneStart]")
            i_scene = 0
            while i_scene < size_scenes:
                scene = FE_Types.Scene()

                content_scene = FE_LexicalAnalyzer.getEnclosed(content, "[SceneStart]", "[SceneEnd]")
                content = FE_LexicalAnalyzer.cpxRepFStr(content, "[SceneStart]" + content_scene + "[SceneEnd]")

                world.scenes.append(sortScene(content_scene))
            
            result.append(world)
            
            i += 1

        return result
