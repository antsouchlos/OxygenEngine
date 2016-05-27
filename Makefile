#linux64

all: FluorineEngine

windows:
	./remake.sh --win64

linux:
	./remake.sh --linux64

CC = g++

CXXFLAGS = -Wall -g -O0 -std=c++11 -I/usr/include -Iinclude/types -Iinclude/Renderer -Iinclude/Events -Iinclude/Carbon -Iinclude/Hydrogen_Engine -Iinclude

OBJ_FILES = obj/linux64/FE_Polygon.o obj/linux64/FE_TCM.o obj/linux64/main.o obj/linux64/FTask.o obj/linux64/FE_EventParser.o obj/linux64/FE_Scene.o obj/linux64/FE_GPU_VertexBuffer.o obj/linux64/Hydrogen_Engine.o obj/linux64/Collision_Engine.o obj/linux64/FE_Animation.o obj/linux64/FE_GPU_Info.o obj/linux64/FE_GL3_VertexBuffer.o obj/linux64/FEngine.o obj/linux64/FE_Material.o obj/linux64/FMouse.o obj/linux64/FE_InputEventHandler.o obj/linux64/FE_GPU_Program.o obj/linux64/FE_GPU_CommandQueue.o obj/linux64/FE_EventHandler.o obj/linux64/FE_Renderer.o obj/linux64/FE_GL3_API.o obj/linux64/FGamepad.o obj/linux64/CSL_Interpreter.o obj/linux64/FE_World.o obj/linux64/FE_Vertex.o obj/linux64/FMath.o obj/linux64/FE_GPU_VertexLayout.o obj/linux64/FE_GL3_Uniform.o obj/linux64/FE_VertexGroup.o obj/linux64/FE_Object.o obj/linux64/FE_MeshRenderData.o obj/linux64/FE_Camera.o obj/linux64/FE_Interaction.o obj/linux64/FE_Texture.o obj/linux64/FE_Mesh.o obj/linux64/FE_GL3_Thread.o obj/linux64/FE_GL3_VertexLayout.o obj/linux64/FE_Light.o obj/linux64/FWorldManager.o obj/linux64/FE_GPU_API.o obj/linux64/FE_GL3_CommandQueue.o obj/linux64/FE_GPU_Shader.o obj/linux64/FE_GPU_Thread.o obj/linux64/FE_GL3_Program.o obj/linux64/FKeyboard.o obj/linux64/FError.o obj/linux64/FE_GPU_Uniform.o obj/linux64/CRB_Lexer.o obj/linux64/FE_Event.o obj/linux64/FtaskManager.o

LDFLAGS = -lSDL2 -lGL -lGLEW -L/usr/lib -L/usr/local/lib

obj/linux64/FE_Polygon.o: src/types/FE_Polygon.cpp include/Events/FE_EventHandler.h include/FMath.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Polygon.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/types/FE_Polygon.cpp -o obj/linux64/FE_Polygon.o

obj/linux64/FE_TCM.o: src/types/FE_TCM.cpp include/Events/FE_EventHandler.h include/types/FE_TCM.h include/FMath.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/types/FE_TCM.cpp -o obj/linux64/FE_TCM.o

obj/linux64/main.o: include/Carbon/Exceptions.h include/Carbon/CSL_Writer.h include/Carbon/CRB_Lexer.h include/types/FE_World.h include/types/FE_Camera.h include/FMath.h include/Renderer/FE_MeshRenderData.h include/Events/FE_EventParser.h include/types/FE_VertexGroup.h include/Carbon/CSL_Parser.h include/types/FE_Scene.h include/Renderer/FE_GPU_Shader.h include/types/FE_Interaction.h include/Events/FE_EventHandler.h include/types/FE_TCM.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_CommandQueue.h include/Renderer/FE_GPU_Uniform.h include/FTask.h include/types/FE_Animation.h include/FGamepad.h include/types/FE_Mesh.h include/Carbon/CSL_Interpreter.h include/types/FE_Texture.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Polygon.h include/FKeyboard.h main.cpp include/types/FE_Light.h include/Renderer/FE_GPU_VertexBuffer.h include/FtaskManager.h include/FWorldManager.h include/types/FE_Vertex.h include/FEngine.h include/FMouse.h include/Renderer/FE_Renderer.h include/types/FE_Material.h include/FError.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) main.cpp -o obj/linux64/main.o

obj/linux64/FTask.o: src/FTask.cpp include/Events/FE_EventHandler.h include/FError.h include/Events/FE_InputEventHandler.h include/FTask.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/FTask.cpp -o obj/linux64/FTask.o

obj/linux64/FE_EventParser.o: include/types/FE_Libs.h src/Events/FE_EventParser.cpp include/Events/FE_EventParser.h include/FError.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Events/FE_EventParser.cpp -o obj/linux64/FE_EventParser.o

obj/linux64/FE_Scene.o: include/types/FE_Scene.h include/types/FE_Mesh.h include/types/FE_Vertex.h include/types/FE_Texture.h include/types/FE_Interaction.h src/types/FE_Scene.cpp include/Events/FE_EventHandler.h include/types/FE_Light.h include/FMath.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Camera.h include/types/FE_TCM.h include/types/FE_Material.h include/types/FE_Object.h include/types/FE_Polygon.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/types/FE_Animation.h include/types/FE_VertexGroup.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/types/FE_Scene.cpp -o obj/linux64/FE_Scene.o

obj/linux64/FE_GPU_VertexBuffer.o: include/Renderer/FE_GPU_Shader.h src/Renderer/FE_GPU_VertexBuffer.cpp include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/FE_GPU_VertexBuffer.cpp -o obj/linux64/FE_GPU_VertexBuffer.o

obj/linux64/Hydrogen_Engine.o: include/types/FE_World.h include/types/FE_Camera.h include/FMath.h include/Events/FE_EventParser.h include/types/FE_VertexGroup.h include/types/FE_Scene.h include/Hydrogen_Engine/HE_Types.h include/Hydrogen_Engine/Collision_Engine.h include/types/FE_Interaction.h include/Events/FE_EventHandler.h include/types/FE_TCM.h include/types/FE_Animation.h include/Hydrogen_Engine/Hydrogen_Engine.h include/types/FE_Mesh.h include/types/FE_Texture.h src/Hydrogen_Engine/Hydrogen_Engine.cpp include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Polygon.h include/types/FE_Light.h include/types/FE_Vertex.h include/types/FE_Material.h include/FError.h include/types/FE_Libs.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Hydrogen_Engine/Hydrogen_Engine.cpp -o obj/linux64/Hydrogen_Engine.o

obj/linux64/Collision_Engine.o: include/types/FE_World.h include/types/FE_Camera.h include/FMath.h include/Events/FE_EventParser.h include/types/FE_VertexGroup.h include/types/FE_Scene.h include/Hydrogen_Engine/HE_Types.h include/Hydrogen_Engine/Collision_Engine.h include/types/FE_Interaction.h include/Events/FE_EventHandler.h include/types/FE_TCM.h include/types/FE_Animation.h include/types/FE_Mesh.h include/types/FE_Texture.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Polygon.h src/Hydrogen_Engine/Collision_Engine.cpp include/types/FE_Light.h include/types/FE_Vertex.h include/types/FE_Material.h include/FError.h include/types/FE_Libs.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Hydrogen_Engine/Collision_Engine.cpp -o obj/linux64/Collision_Engine.o

obj/linux64/FE_Animation.o: src/types/FE_Animation.cpp include/Events/FE_EventHandler.h include/FMath.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/types/FE_Animation.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/types/FE_Animation.cpp -o obj/linux64/FE_Animation.o

obj/linux64/FE_GPU_Info.o: include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h src/Renderer/FE_GPU_Info.cpp include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Uniform.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/FE_GPU_Info.cpp -o obj/linux64/FE_GPU_Info.o

obj/linux64/FE_GL3_VertexBuffer.o: include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h src/Renderer/OpenGL3/FE_GL3_VertexBuffer.cpp include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/OpenGL3/FE_GL3_VertexBuffer.cpp -o obj/linux64/FE_GL3_VertexBuffer.o

obj/linux64/FEngine.o: include/Carbon/Exceptions.h include/Carbon/CSL_Writer.h include/Carbon/CRB_Lexer.h include/types/FE_World.h include/types/FE_Camera.h include/FMath.h include/Renderer/FE_MeshRenderData.h include/Events/FE_EventParser.h include/types/FE_VertexGroup.h include/Carbon/CSL_Parser.h include/types/FE_Scene.h include/Renderer/FE_GPU_Shader.h include/types/FE_Interaction.h include/Events/FE_EventHandler.h include/types/FE_TCM.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_CommandQueue.h include/Renderer/FE_GPU_Uniform.h include/FTask.h src/FEngine.cpp include/types/FE_Animation.h include/FGamepad.h include/types/FE_Mesh.h include/Carbon/CSL_Interpreter.h include/types/FE_Texture.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Polygon.h include/FKeyboard.h include/types/FE_Light.h include/Renderer/FE_GPU_VertexBuffer.h include/FtaskManager.h include/FWorldManager.h include/types/FE_Vertex.h include/FEngine.h include/FMouse.h include/Renderer/FE_Renderer.h include/types/FE_Material.h include/FError.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/FEngine.cpp -o obj/linux64/FEngine.o

obj/linux64/FE_Material.o: src/types/FE_Material.cpp include/Events/FE_EventHandler.h include/types/FE_Material.h include/FMath.h include/Events/FE_InputEventHandler.h include/FError.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/types/FE_Material.cpp -o obj/linux64/FE_Material.o

obj/linux64/FMouse.o: include/FMouse.h src/FMouse.cpp include/Events/FE_EventHandler.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/FMouse.cpp -o obj/linux64/FMouse.o

obj/linux64/FE_InputEventHandler.o: include/Events/FE_EventHandler.h include/FError.h include/Events/FE_InputEventHandler.h src/Events/FE_InputEventHandler.cpp include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Events/FE_InputEventHandler.cpp -o obj/linux64/FE_InputEventHandler.o

obj/linux64/FE_GPU_Program.o: include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h src/Renderer/FE_GPU_Program.cpp include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/FE_GPU_Program.cpp -o obj/linux64/FE_GPU_Program.o

obj/linux64/FE_GPU_CommandQueue.o: include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h src/Renderer/FE_GPU_CommandQueue.cpp include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/FE_GPU_CommandQueue.cpp -o obj/linux64/FE_GPU_CommandQueue.o

obj/linux64/FE_EventHandler.o: src/Events/FE_EventHandler.cpp include/Events/FE_EventHandler.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Events/FE_EventHandler.cpp -o obj/linux64/FE_EventHandler.o

obj/linux64/FE_Renderer.o: include/Carbon/Exceptions.h include/Carbon/CSL_Writer.h include/Carbon/CRB_Lexer.h include/types/FE_World.h include/types/FE_Camera.h include/FMath.h include/Renderer/FE_MeshRenderData.h include/Events/FE_EventParser.h include/types/FE_VertexGroup.h include/Carbon/CSL_Parser.h include/types/FE_Scene.h include/Renderer/FE_GPU_Shader.h include/types/FE_Interaction.h include/Events/FE_EventHandler.h include/types/FE_TCM.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_CommandQueue.h include/Renderer/FE_GPU_Uniform.h include/types/FE_Animation.h include/types/FE_Mesh.h include/Carbon/CSL_Interpreter.h include/types/FE_Texture.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Polygon.h include/types/FE_Light.h include/Renderer/FE_GPU_VertexBuffer.h include/types/FE_Vertex.h include/Renderer/FE_Renderer.h include/types/FE_Material.h include/FError.h src/Renderer/FE_Renderer.cpp include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/FE_Renderer.cpp -o obj/linux64/FE_Renderer.o

obj/linux64/FE_GL3_API.o: src/Renderer/OpenGL3/FE_GL3_API.cpp include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/OpenGL3/FE_GL3_API.cpp -o obj/linux64/FE_GL3_API.o

obj/linux64/FGamepad.o: src/FGamepad.cpp include/Events/FE_EventHandler.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/FGamepad.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/FGamepad.cpp -o obj/linux64/FGamepad.o

obj/linux64/CSL_Interpreter.o: include/Carbon/Exceptions.h include/Carbon/CSL_Writer.h include/Carbon/CRB_Lexer.h include/types/FE_World.h include/types/FE_Camera.h include/FMath.h include/Events/FE_EventParser.h include/types/FE_VertexGroup.h include/Carbon/CSL_Parser.h include/types/FE_Scene.h include/types/FE_Interaction.h include/Events/FE_EventHandler.h include/types/FE_TCM.h include/types/FE_Animation.h include/types/FE_Mesh.h include/Carbon/CSL_Interpreter.h include/types/FE_Texture.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Polygon.h include/types/FE_Light.h src/Carbon/CSL_Interpreter.cpp include/types/FE_Vertex.h include/types/FE_Material.h include/FError.h include/types/FE_Libs.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Carbon/CSL_Interpreter.cpp -o obj/linux64/CSL_Interpreter.o

obj/linux64/FE_World.o: include/types/FE_World.h include/types/FE_Camera.h include/FMath.h include/Events/FE_EventParser.h include/types/FE_VertexGroup.h include/types/FE_Scene.h include/types/FE_Interaction.h include/Events/FE_EventHandler.h include/types/FE_TCM.h include/types/FE_Animation.h include/types/FE_Mesh.h include/types/FE_Texture.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Polygon.h include/types/FE_Light.h include/types/FE_Vertex.h src/types/FE_World.cpp include/types/FE_Material.h include/FError.h include/types/FE_Libs.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/types/FE_World.cpp -o obj/linux64/FE_World.o

obj/linux64/FE_Vertex.o: include/types/FE_Vertex.h include/Events/FE_EventHandler.h include/FMath.h include/FError.h include/Events/FE_InputEventHandler.h src/types/FE_Vertex.cpp include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/types/FE_Vertex.cpp -o obj/linux64/FE_Vertex.o

obj/linux64/FMath.o: include/Events/FE_EventHandler.h include/FMath.h include/FError.h include/Events/FE_InputEventHandler.h src/FMath.cpp include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/FMath.cpp -o obj/linux64/FMath.o

obj/linux64/FE_GPU_VertexLayout.o: include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h src/Renderer/FE_GPU_VertexLayout.cpp include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/FE_GPU_VertexLayout.cpp -o obj/linux64/FE_GPU_VertexLayout.o

obj/linux64/FE_GL3_Uniform.o: include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_EventParser.h src/Renderer/OpenGL3/FE_GL3_Uniform.cpp include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/OpenGL3/FE_GL3_Uniform.cpp -o obj/linux64/FE_GL3_Uniform.o

obj/linux64/FE_VertexGroup.o: include/FError.h include/types/FE_Libs.h src/types/FE_VertexGroup.cpp include/types/FE_VertexGroup.h
	$(CC) -c $(CXXFLAGS) src/types/FE_VertexGroup.cpp -o obj/linux64/FE_VertexGroup.o

obj/linux64/FE_Object.o: include/Events/FE_EventHandler.h include/FMath.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h src/types/FE_Object.cpp include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/types/FE_Object.cpp -o obj/linux64/FE_Object.o

obj/linux64/FE_MeshRenderData.o: include/Carbon/Exceptions.h include/Carbon/CSL_Writer.h include/Carbon/CRB_Lexer.h include/types/FE_World.h include/types/FE_Camera.h include/FMath.h include/Renderer/FE_MeshRenderData.h include/Events/FE_EventParser.h include/types/FE_VertexGroup.h include/Carbon/CSL_Parser.h include/types/FE_Scene.h include/Renderer/FE_GPU_Shader.h src/Renderer/FE_MeshRenderData.cpp include/types/FE_Interaction.h include/Events/FE_EventHandler.h include/types/FE_TCM.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_CommandQueue.h include/Renderer/FE_GPU_Uniform.h include/types/FE_Animation.h include/types/FE_Mesh.h include/Carbon/CSL_Interpreter.h include/types/FE_Texture.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Polygon.h include/types/FE_Light.h include/Renderer/FE_GPU_VertexBuffer.h include/types/FE_Vertex.h include/types/FE_Material.h include/FError.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/FE_MeshRenderData.cpp -o obj/linux64/FE_MeshRenderData.o

obj/linux64/FE_Camera.o: include/Events/FE_EventHandler.h include/types/FE_Camera.h include/FMath.h include/FError.h include/Events/FE_InputEventHandler.h src/types/FE_Camera.cpp include/types/FE_Object.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/types/FE_Camera.cpp -o obj/linux64/FE_Camera.o

obj/linux64/FE_Interaction.o: include/types/FE_Libs.h src/types/FE_Interaction.cpp include/types/FE_Interaction.h include/FError.h
	$(CC) -c $(CXXFLAGS) src/types/FE_Interaction.cpp -o obj/linux64/FE_Interaction.o

obj/linux64/FE_Texture.o: include/types/FE_Libs.h include/FError.h include/types/FE_Texture.h src/types/FE_Texture.cpp
	$(CC) -c $(CXXFLAGS) src/types/FE_Texture.cpp -o obj/linux64/FE_Texture.o

obj/linux64/FE_Mesh.o: include/types/FE_Mesh.h include/types/FE_Vertex.h src/types/FE_Mesh.cpp include/types/FE_Interaction.h include/Events/FE_EventHandler.h include/FMath.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Polygon.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/types/FE_Animation.h include/types/FE_VertexGroup.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/types/FE_Mesh.cpp -o obj/linux64/FE_Mesh.o

obj/linux64/FE_GL3_Thread.o: include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h src/Renderer/OpenGL3/FE_GL3_Thread.cpp include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/OpenGL3/FE_GL3_Thread.cpp -o obj/linux64/FE_GL3_Thread.o

obj/linux64/FE_GL3_VertexLayout.o: include/Renderer/FE_GPU_Shader.h src/Renderer/OpenGL3/FE_GL3_VertexLayout.cpp include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/OpenGL3/FE_GL3_VertexLayout.cpp -o obj/linux64/FE_GL3_VertexLayout.o

obj/linux64/FE_Light.o: include/Events/FE_EventHandler.h src/types/FE_Light.cpp include/FMath.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/types/FE_Light.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/types/FE_Light.cpp -o obj/linux64/FE_Light.o

obj/linux64/FWorldManager.o: include/Carbon/Exceptions.h include/Carbon/CSL_Writer.h include/Carbon/CRB_Lexer.h include/types/FE_World.h include/types/FE_Camera.h include/FMath.h include/Renderer/FE_MeshRenderData.h include/Events/FE_EventParser.h include/types/FE_VertexGroup.h include/Carbon/CSL_Parser.h include/types/FE_Scene.h include/Renderer/FE_GPU_Shader.h src/FWorldManager.cpp include/types/FE_Interaction.h include/Events/FE_EventHandler.h include/types/FE_TCM.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_CommandQueue.h include/Renderer/FE_GPU_Uniform.h include/types/FE_Animation.h include/types/FE_Mesh.h include/Carbon/CSL_Interpreter.h include/types/FE_Texture.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Polygon.h include/types/FE_Light.h include/Renderer/FE_GPU_VertexBuffer.h include/FWorldManager.h include/types/FE_Vertex.h include/Renderer/FE_Renderer.h include/types/FE_Material.h include/FError.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/FWorldManager.cpp -o obj/linux64/FWorldManager.o

obj/linux64/FE_GPU_API.o: include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h src/Renderer/FE_GPU_API.cpp include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/FE_GPU_API.cpp -o obj/linux64/FE_GPU_API.o

obj/linux64/FE_GL3_CommandQueue.o: src/Renderer/OpenGL3/FE_GL3_CommandQueue.cpp include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/OpenGL3/FE_GL3_CommandQueue.cpp -o obj/linux64/FE_GL3_CommandQueue.o

obj/linux64/FE_GPU_Shader.o: include/types/FE_Libs.h include/Renderer/FE_GPU_Shader.h include/FError.h src/Renderer/FE_GPU_Shader.cpp
	$(CC) -c $(CXXFLAGS) src/Renderer/FE_GPU_Shader.cpp -o obj/linux64/FE_GPU_Shader.o

obj/linux64/FE_GPU_Thread.o: include/Renderer/FE_GPU_Shader.h src/Renderer/FE_GPU_Thread.cpp include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/FE_GPU_Thread.cpp -o obj/linux64/FE_GPU_Thread.o

obj/linux64/FE_GL3_Program.o: include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h src/Renderer/OpenGL3/FE_GL3_Program.cpp include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/OpenGL3/FE_GL3_Program.cpp -o obj/linux64/FE_GL3_Program.o

obj/linux64/FKeyboard.o: src/FKeyboard.cpp include/Events/FE_EventHandler.h include/FError.h include/Events/FE_InputEventHandler.h include/FKeyboard.h include/types/FE_Libs.h include/Events/FE_EventParser.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/FKeyboard.cpp -o obj/linux64/FKeyboard.o

obj/linux64/FError.o: include/FError.h src/FError.cpp
	$(CC) -c $(CXXFLAGS) src/FError.cpp -o obj/linux64/FError.o

obj/linux64/FE_GPU_Uniform.o: include/Renderer/FE_GPU_Shader.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_EventHandler.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_Uniform.h include/Renderer/FE_GPU_CommandQueue.h include/FError.h include/Events/FE_InputEventHandler.h include/Renderer/FE_GPU_API.h src/Renderer/FE_GPU_Uniform.cpp include/types/FE_Libs.h include/Events/FE_EventParser.h include/Renderer/FE_GPU_VertexBuffer.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Renderer/FE_GPU_Uniform.cpp -o obj/linux64/FE_GPU_Uniform.o

obj/linux64/CRB_Lexer.o: include/types/FE_Libs.h include/Carbon/CRB_Lexer.h include/Carbon/Exceptions.h include/FError.h src/Carbon/CRB_Lexer.cpp
	$(CC) -c $(CXXFLAGS) src/Carbon/CRB_Lexer.cpp -o obj/linux64/CRB_Lexer.o

obj/linux64/FE_Event.o: include/types/FE_Libs.h include/Events/FE_EventParser.h src/Events/FE_Event.cpp include/FError.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/Events/FE_Event.cpp -o obj/linux64/FE_Event.o

obj/linux64/FtaskManager.o: include/Carbon/Exceptions.h include/Carbon/CSL_Writer.h include/Carbon/CRB_Lexer.h include/types/FE_World.h include/types/FE_Camera.h include/FMath.h src/FtaskManager.cpp include/Renderer/FE_MeshRenderData.h include/Events/FE_EventParser.h include/types/FE_VertexGroup.h include/Carbon/CSL_Parser.h include/types/FE_Scene.h include/Renderer/FE_GPU_Shader.h include/types/FE_Interaction.h include/Events/FE_EventHandler.h include/types/FE_TCM.h include/Renderer/FE_GPU_Thread.h include/Renderer/FE_GPU_CommandQueue.h include/Renderer/FE_GPU_Uniform.h include/FTask.h include/types/FE_Animation.h include/types/FE_Mesh.h include/Carbon/CSL_Interpreter.h include/types/FE_Texture.h include/Renderer/FE_GPU_Program.h include/Renderer/FE_GPU_Info.h include/Renderer/FE_GPU_VertexLayout.h include/Events/FE_InputEventHandler.h include/types/FE_Object.h include/types/FE_Polygon.h include/types/FE_Light.h include/Renderer/FE_GPU_VertexBuffer.h include/FtaskManager.h include/FWorldManager.h include/types/FE_Vertex.h include/Renderer/FE_Renderer.h include/types/FE_Material.h include/FError.h include/Renderer/FE_GPU_API.h include/types/FE_Libs.h include/Events/FE_Event.h
	$(CC) -c $(CXXFLAGS) src/FtaskManager.cpp -o obj/linux64/FtaskManager.o

FluorineEngine: $(OBJ_FILES)
	$(CC) -o FluorineEngine $(OBJ_FILES) $(LDFLAGS) 

clean: 
	rm FluorineEngine obj/linux64/FE_Polygon.o obj/linux64/FE_TCM.o obj/linux64/main.o obj/linux64/FTask.o obj/linux64/FE_EventParser.o obj/linux64/FE_Scene.o obj/linux64/FE_GPU_VertexBuffer.o obj/linux64/Hydrogen_Engine.o obj/linux64/Collision_Engine.o obj/linux64/FE_Animation.o obj/linux64/FE_GPU_Info.o obj/linux64/FE_GL3_VertexBuffer.o obj/linux64/FEngine.o obj/linux64/FE_Material.o obj/linux64/FMouse.o obj/linux64/FE_InputEventHandler.o obj/linux64/FE_GPU_Program.o obj/linux64/FE_GPU_CommandQueue.o obj/linux64/FE_EventHandler.o obj/linux64/FE_Renderer.o obj/linux64/FE_GL3_API.o obj/linux64/FGamepad.o obj/linux64/CSL_Interpreter.o obj/linux64/FE_World.o obj/linux64/FE_Vertex.o obj/linux64/FMath.o obj/linux64/FE_GPU_VertexLayout.o obj/linux64/FE_GL3_Uniform.o obj/linux64/FE_VertexGroup.o obj/linux64/FE_Object.o obj/linux64/FE_MeshRenderData.o obj/linux64/FE_Camera.o obj/linux64/FE_Interaction.o obj/linux64/FE_Texture.o obj/linux64/FE_Mesh.o obj/linux64/FE_GL3_Thread.o obj/linux64/FE_GL3_VertexLayout.o obj/linux64/FE_Light.o obj/linux64/FWorldManager.o obj/linux64/FE_GPU_API.o obj/linux64/FE_GL3_CommandQueue.o obj/linux64/FE_GPU_Shader.o obj/linux64/FE_GPU_Thread.o obj/linux64/FE_GL3_Program.o obj/linux64/FKeyboard.o obj/linux64/FError.o obj/linux64/FE_GPU_Uniform.o obj/linux64/CRB_Lexer.o obj/linux64/FE_Event.o obj/linux64/FtaskManager.o