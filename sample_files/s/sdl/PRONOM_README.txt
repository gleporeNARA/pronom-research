3.2 Using the Shader Compiler - shaderdl
3Delight shaders are written in RenderMan Shading Language (SL). 3Delight also supports most of the common extensions to this language.

To compile a shader, use the command:

% shaderdl shader.sl
As you may have noticed, you do not have to specify an output file name to shaderdl. The output file name is the name of the shader (the identifier following the keyword surface, displacement, light, or volume in the SL program) followed by the suffix `.sdl'.


http://euler.mat.uson.mx/~havillam/cg/Renderman/3DL_Manual/3delight_11.html
