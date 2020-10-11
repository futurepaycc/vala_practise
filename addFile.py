import os
import sys


def addFile(new_source_filename):
    build_file = os.getcwd()+"/meson.build"
    with open(build_file,'r') as rFile:
        content = rFile.read()
        new_source_basename = new_source_filename.split(".")[0]
        result = content.find(new_source_filename)

        template = f'''sources_{new_source_basename} = files('{new_source_filename}')
executable('{new_source_basename}', sources_{new_source_basename}, dependencies: dependencies)'''
        if -1 == result:
            # print(content+"\n\n"+template)    
            newContent = content+"\n\n"+template
            with open(build_file,'w') as wFile:
                wFile.write(newContent)



if __name__ == "__main__":
    # print(sys.argv)
    addFile(sys.argv[1])