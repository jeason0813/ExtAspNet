
RD /S /Q "ExtAspNet/tools"
RD /S /Q "ExtAspNet/res"
RD /S /Q "ExtAspNet/Properties"
RD /S /Q "ExtAspNet/obj"
RD /S /Q "ExtAspNet/lib"
RD /S /Q "ExtAspNet/Designer"
RD /S /Q "ExtAspNet/bin"
RD /S /Q "ExtAspNet/js"
RD /S /Q "ExtAspNet/icon"
RD /S /Q "ExtAspNet/theme"

RD /S /Q "ExtAspNet/Business/AssemblyResource"
RD /S /Q "ExtAspNet/Business/SimulateTree"

cd ExtAspNet/Business

cd Config
del Constants.cs
cd ..

cd Enums
del Icon.cs
cd ..

cd ResourceManager
del AbsoluteScriptBlock.cs
del ClientJavascriptIDManager.cs
del CommonResourceHelper.cs
del DesignTimeResourceHelper.cs
del ResourceHelper.cs
del ResourceManager.cs
del ScriptBlock.cs
cd ..








