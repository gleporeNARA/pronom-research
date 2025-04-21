Building AssetBundles
To begin creating an AssetBundle (called AssetBundle in scripts and within the Unity Editor), select an asset from your project folder that you want to include in a bundle. At the very bottom of the Inspector window for that asset is the AssetBundle menu. Clicking this reveals the names of any currently defined AssetBundles, plus the option to define a new bundle:

Each AssetBundle that is exported has the name displayed in the AssetBundle menu. Additionally, each AssetBundle has an associated file with a “.manifest” extension. This manifest file is a text file that you can open with any text editor. It provides information such as the file CRC and asset dependencies. The AssetBundle in the example above has a manifest file that looks like this:

ManifestFileVersion: 0
CRC: 2422268106
Hashes:
  AssetFileHash:
    serializedVersion: 2
    Hash: 8b6db55a2344f068cf8a9be0a662ba15
  TypeTreeHash:
    serializedVersion: 2
    Hash: 37ad974993dbaa77485dd2a0c38f347a
HashAppended: 0
ClassTypes:
- Class: 91
  Script: {instanceID: 0}
Assets:
  Asset_0: Assets/Mecanim/StateMachine.controller
Dependencies: {}


https://docs.unity3d.com/540/Documentation/Manual/BuildingAssetBundles.html
