import os
import sys

##############
#NOTE:
#beware readers(se esena milao Andrea) that there will be a lot of useless comments in this file.
##############

##############
#find all .cpp files in those directories

# fetch the current directory
current_dir = Dir(.).path

# set all directories where project .cpp files exist!
directories = ["", "/src", "/src/types", "/src/Renderer", "/src/Renderer/OpenGL3"]

files = []

# in those dirs add every filename that ends with .cpp to a list
for directory in directories:
    for name in os.listdir(current_dir + directory):
        if name.endswith(".cpp"):
            files.append([current_dir+directory, name[0:-4]])

###############

#fetch current environment

env_compile = 0
env_link = 0

if sys.platform.startswith("linux"):
    env_compile = Environment(CC = 'gcc', CCFLAGS = '-Wall -g -std=c++11 -Iinclude -Iinclude/Renderer -Iinclude/types -I/usr/include')
    env_link    = Environment(CC = 'gcc', CCFLAGS = '-L/usr/include -lSDL2 -lGLEW -lGL')
    
elif sys.platform.startswith("win"):
    pass
    
#start compiling
for n in files:
    env_compile.Object(current_dir+n[1], n[0]+n[1]+ ".cpp")

#link all files
env_link.Program("FluorineEngine", [current_dir+n[1] for n in files])
