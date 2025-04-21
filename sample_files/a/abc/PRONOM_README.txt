Alembic is an interchange file format for computer graphics commonly used by visual effects and animation professionals as it distills complex animated scenes into a non-procedural, application-independent set of baked geometric results. It can handle animations with changing topology, making it useful for simulations such as fluids.
Alembic efficiently stores the computed results of complex procedural geometric constructions, with a primary focus on the interchange of geometry (models) between different groups working on the same shots or assets. It is not for storing the complex dependency graph of procedural tools used to create the computed results.

ABC files supports common geometric representations including:
polygon meshes
subdivision surface
parametric curves
NURBS patches
particles.

https://knowledge.autodesk.com/support/3ds-max/learn-explore/caas/CloudHelp/cloudhelp/2022/ENU/3DSMax-Data-Exchange/files/GUID-D80A02B6-BC7B-4070-A959-94EC5FCA22F8-htm.html

Alembic is an open computer graphics interchange framework. Alembic distills complex, animated scenes into a non-procedural, application-independent set of baked geometric results. This �distillation' of scenes into baked geometry is exactly analogous to the distillation of lighting and rendering scenes into rendered image data.
Alembic is focused on efficiently storing the computed results of complex procedural geometric constructions. It is very specifically NOT concerned with storing the complex dependency graph of procedural tools used to create the computed results. For example, Alembic will efficiently store the animated vertex positions and animated transforms that result from an arbitrarily complex animation and simulation process which could involve enveloping, corrective shapes, volume-preserving simulations, cloth and flesh simulations, and so on. Alembic will not attempt to store a representation of the network of computations (rigs, basically) which are required to produce the final, animated vertex positions and animated transforms.

http://www.alembic.io/
