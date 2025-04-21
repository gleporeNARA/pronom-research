1 Introduction
NVIDIA Material Definition Language (MDL) is a domain-specific language that describes the appearance
of scene elements for a rendering process. MDL consists of a declarative component to describe materials
as well as a procedural programming language to customize image texture lookups and procedural textures
that provide the parametric input to the material declarations.
MDL is dedicated to providing an abstract material description that is well-defined and independent of
particular rendering systems. The material description is comprehensive and flexible, yet specifically
addresses modern renderers based on the simulation of physically based light transport. The declarative
nature of the material description makes it easy for a renderer to fully understand a material, yet — if
needed — to simplify and approximate the material to the best of the renderer’s capabilities. The procedural
programming language enables the aesthetic flexibility required by artists to design new materials.
Although it emphasizes physically plausible materials, MDL supports also traditional computer graphics
techniques that are important in conventional rendering and modeling workflows, such as normal mapping
and cut-outs.
MDL is designed for modern highly-parallel machine architectures. One important part is the declarative
nature of the material description. Another part is its procedural language, which is restricted to the
definition of pure functions, with access to the rendering state, that are free of side effects and global
dependencies. Material and function evaluations can thus be easily compiled and executed on modern
architectures.

4.1 MDL version declaration
Each MDL module starts with an MDL version declaration, only preceded by optional white space or
comments. The version declaration identifies the module as written in the corresponding MDL version.
The version itself consists of the major version number followed by a dot and the minor version number.
The following example illustrates how an MDL module can start that follows the version of this
specification document:
mdl 1.6;

https://web.archive.org/web/20210226032026/https://developer.download.nvidia.com/designworks/mdl-sdk/secure/MDL_spec_1.6.1_16Dec2019.pdf?80KO87K-nWMtWzyPqGHPw61uxa8G31ovauU02s3Cy6OiPaq3wlBknZCJkwvQn50cwargBHDocvLO0tg3alta0bLFQRcAD2I4iDP0BNdKHICUt0mMT5I3QKVwbYzpiFFmum9sOqnepyHZo9dO1JmNBSQNkhPzOA
