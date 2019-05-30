# Table of contents

## 1. [xmas_msg_gen](#it1)
## 2. [asset_tracker](#it2)

## xmas_msg_gen <a name = "it1"></a>
Python 3 notebook containing a small program to generate random messages based on a pre written list. 
To use: 
1) Download and install Python 3, 
2) Place "xmas_msg_gen.py" in the same folder of the python installation
3) Double click the python executable (probably called python.exe or python3.exe or similar)
4) Type "from xmas_msg_gen import *" and press enter
5) 10 random phrases will appear. If you want to generate more type "generate_xmas_msg()" and press enter

If you would like to add more phrases, then simply open the "xmas_msg_gen.py" with any text editor and add in either
"first", "second", "third" or "fourth" the phrase between quotes and with a comma at the end (i.e. like all the other 
phrases in there) and save. 

The phrase you've added should now have a chance to appear!

## asset_tracker <a name = "it2"></a>
Program to manipulate an SQL database via a graphical interface. Work in progress

Library dependencies: pthread;sqlite3;OpenGL;sfml-graphics;sfml-window;sfml-system

External includes: [dearimgui](https://github.com/ocornut/imgui), [imgui-sfml](https://github.com/eliasdaler/imgui-sfml), [sqlite_modern_cpp](https://github.com/SqliteModernCpp/sqlite_modern_cpp) 

