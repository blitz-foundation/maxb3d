
Strict

Rem
	bbdoc: MaxB3D procedural functions
End Rem
Module MaxB3D.Functions
ModuleInfo "Author: Kevin Primm"
ModuleInfo "License: MIT"

Import MaxB3D.Core

Rem
	bbdoc: Draws the world in its current state.
	about: Tweening is not yet implemented.
End Rem
Function RenderWorld(tween#=1.0)
	Return _currentworld.Render(tween)
End Function
Rem
	bbdoc: Advances all animations and updates collision/physics.
End Rem
Function UpdateWorld()
	Return _currentworld.Update()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetCollisions(src,dest,methd,response)
	Return _currentworld.SetCollisions(src,dest,methd,response)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetAmbientLight(red Var,green Var,blue Var)
	Return _currentworld.GetAmbientLight(red,green,blue)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetAmbientLight(red,green,blue)
	Return _currentworld.SetAmbientLight(red,green,blue)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetWireFrame()
	Return _currentworld.GetWireFrame()
End Function
Rem
	bbdoc: Enable/disable global wireframe rendering.
	about: @SetWireframe can enable wireframe rendering for the entire scene. Alternatively, calling #SetEntityFX with @FX_WIREFRAME will cause only 
			a single entity's wireframe to be rendered.
End Rem
Function SetWireFrame(enable)
	Return _currentworld.SetWireFrame(enable)
End Function

'Bodies
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CreateBody:TBody()
	Return _currentworld.AddBody()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetBodyMass#(body:TBody)
	Return body.GetMass()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetBodyMass(body:TBody,mass#)
	Return body.SetMass(mass)
End Function

'Brushes
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CreateBrush:TBrush(url:Object=Null)
	Return _currentworld.AddBrush(url)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CopyBrush:TBrush(brush:TBrush)
	Return brush.Copy()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetBrushColor(brush:TBrush,red Var,green Var,blue Var)
	Return brush.GetColor(red,green,blue)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetBrushColor(brush:TBrush,red,green,blue)
	Return brush.SetColor(red,green,blue)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetBrushAlpha#(brush:TBrush)
	Return brush.GetAlpha()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetBrushAlpha(brush:TBrush,alpha#)
	Return brush.SetAlpha(alpha)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetBrushShine#(brush:TBrush)
	Return brush.GetShine()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetBrushShine(brush:TBrush,shine#)
	Return brush.SetShine(shine)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetBrushTexture:TTexture(brush:TBrush,index=0)
	Return brush.GetTexture(index)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetBrushTexture(brush:TBrush,texture:TTexture,index=0,frame=0)
	Return brush.SetTexture(texture,index,frame)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetBrushFrame(brush:TBrush,index=0)
	Return brush.GetFrame(index)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetBrushFrame(brush:TBrush,frame,index=0)
	Return brush.SetFrame(frame,index)
End Function
Rem
	bbdoc: Get brush effects.
End Rem
Function GetBrushFX(brush:TBrush)
	Return brush.GetFX()
End Function
Rem
	bbdoc: Set various rendering effects for a brush.
	about:
End Rem
Function SetBrushFX(brush:TBrush,fx)
	Return brush.SetFX(fx)
End Function

'Cameras
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CreateCamera:TCamera(parent:TEntity=Null)
	Return _currentworld.AddCamera(parent)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetCameraMode(camera:TCamera)
	Return camera.GetMode()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetCameraMode(camera:TCamera,mode)
	Return camera.SetMode(mode)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetCameraFogMode(camera:TCamera)
	Return camera.GetFogMode()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetCameraFogMode(camera:TCamera,mode)
	Return camera.SetFogMode(mode)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetCameraFogColor(camera:TCamera,red Var,green Var,blue Var)
	Return camera.GetFogColor(red,green,blue)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetCameraFogColor(camera:TCamera,red,green,blue)
	Return camera.SetFogColor(red,green,blue)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetCameraFogRange(camera:TCamera,near# Var,far# Var)
	Return camera.GetFogRange(near,far)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetCameraFogRange(camera:TCamera,near#,far#)
	Return camera.SetFogRange(near,far)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetCameraViewport(camera:TCamera,x Var,y Var,width Var,height Var)
	Return camera.GetViewport(x,y,width,height)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetCameraViewport(camera:TCamera,x,y,width,height)
	Return camera.SetViewport(x,y,width,height)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetCameraClsMode(camera:TCamera)
	Return camera.GetClsMode()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetCameraClsMode(camera:TCamera,mode)
	Return camera.SetClsMode(mode)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetCameraRange(camera:TCamera,near# Var,far# Var)
	Return camera.GetRange(near,far)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetCameraRange(camera:TCamera,near#,far#)
	Return camera.SetRange(near,far)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetCameraZoom#(camera:TCamera)
	Return camera.GetZoom()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetCameraZoom(camera:TCamera,zoom#)
	Return camera.SetZoom(zoom)
End Function

'Entities
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CopyEntity:TEntity(entity:TEntity,parent:TEntity=Null)
	Return entity.Copy(parent)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function FreeEntity(entity:TEntity)
	Return entity.Free()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityParent:TEntity(entity:TEntity)
	Return entity.GetParent()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityParent(entity:TEntity,parent:TEntity)
	Return entity.SetParent(parent)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CountEntityChildren(entity:TEntity,recursive=False)
	Return entity.CountChildren(recursive)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityVisible(entity:TEntity)
	Return entity.GetVisible()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityVisible(entity:TEntity,visible)
	Return entity.SetVisible(visible)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityOrder(entity:TEntity)
	Return entity.GetOrder()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityOrder(entity:TEntity,order)
	Return entity.SetOrder(order)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityName$(entity:TEntity)
	Return entity.GetName()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityName(entity:TEntity,name$)
	Return entity.SetName(name)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityBrush:TBrush(entity:TEntity)
	Return entity.GetBrush()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityBrush(entity:TEntity,brush:TBrush)
	Return entity.SetBrush(brush)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityColor(entity:TEntity,red Var,green Var,blue Var)
	Return entity.GetColor(red,green,blue)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityColor(entity:TEntity,red,green,blue)
	Return entity.SetColor(red,green,blue)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityAlpha#(entity:TEntity)
	Return entity.GetAlpha()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityAlpha(entity:TEntity,alpha#)
	Return entity.SetAlpha(alpha)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityShine#(entity:TEntity)
	Return entity.GetShine()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityShine(entity:TEntity,shine#)
	Return entity.SetShine(shine)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityTexture:TTexture(entity:TEntity,index=0)
	Return entity.GetTexture(index)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityTexture(entity:TEntity,texture:TTexture,index=0)
	Return entity.SetTexture(texture,index)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityFX(entity:TEntity)
	Return entity.GetFX()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityFX(entity:TEntity,fx)
	Return entity.SetFX(fx)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function TurnEntity(entity:TEntity,pitch#,yaw#,roll#,glob=False)
	Return entity.Turn(pitch,yaw,roll,glob)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function PointEntity(entity:TEntity,target:Object,roll#=0.0)
	Return entity.Point(target,roll)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function MoveEntity(entity:TEntity,x#,y#,z#)
	Return entity.Move(x,y,z)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function TranslateEntity(entity:TEntity,x#,y#,z#,glob=True)
	Return entity.Translate(x,y,z,glob)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityScale(entity:TEntity,x# Var,y# Var,z# Var,glob=False)
	Return entity.GetScale(x,y,z,glob)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityScale(entity:TEntity,x#,y#,z#,glob=False)
	Return entity.SetScale(x,y,z,glob)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityRotation(entity:TEntity,pitch# Var,yaw# Var,roll# Var,glob=False)
	Return entity.GetRotation(pitch,yaw,roll,glob)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityRotation(entity:TEntity,pitch#,yaw#,roll#,glob=False)
	Return entity.SetRotation(pitch,yaw,roll,glob)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityPosition(entity:TEntity,x# Var,y# Var,z# Var,glob=False)
	Return entity.GetPosition(x,y,z,glob)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityPosition(entity:TEntity,x#,y#,z#,glob=False)
	Return entity.SetPosition(x,y,z,glob)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityCollisions:TCollision[](entity:TEntity)
	Return entity.GetCollisions()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityBox(entity:TEntity,x# Var,y# Var,z# Var,width# Var,height# Var,depth# Var)
	Return entity.GetBox(x,y,z,width,height,depth)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityBox(entity:TEntity,x#,y#,z#,width#,height#,depth#)
	Return entity.SetBox(x,y,z,width,height,depth)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityRadius(entity:TEntity,x# Var,y# Var)
	Return entity.GetRadius(x,y)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityRadius(entity:TEntity,x#,y#=-1)
	Return entity.SetRadius(x,y)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityType(entity:TEntity)
	Return entity.GetType()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetEntityType(entity:TEntity,typ,recursive=False)
	Return entity.SetType(typ,recursive)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function ResetEntity(entity:TEntity)
	Return entity.Reset()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetEntityDistance(entity:TEntity,target:Object)
	Return entity.GetDistance(target)
End Function

'Lights
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CreateLight:TLight(typ=LIGHT_DIRECTIONAL,parent:TEntity=Null)
	Return _currentworld.AddLight(typ,parent)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetLightRange#(light:TLight)
	Return light.GetRange()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetLightRange(light:TLight,range#)
	Return light.SetRange(range)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetLightAngles(light:TLight,inner# Var,outer# Var)
	Return light.GetAngles(inner,outer)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetLightAngles(light:TLight,inner#,outer#)
	Return light.SetAngles(inner,outer)
End Function

'Meshes
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CreateMesh:TMesh(parent:TEntity=Null)
	Return _currentworld.AddMesh("*null*",parent)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function LoadMesh:TMesh(url:Object,parent:TEntity=Null)
	Return _currentworld.AddMesh(url,parent)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetMeshSurface:TSurface(mesh:TMesh,index)
	Return mesh.GetSurface(index)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function AddMeshSurface:TSurface(mesh:TMesh,vertexcount=0,trianglecount=0)
	Return mesh.AddSurface(vertexcount,trianglecount)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CloneMesh:TMesh(mesh:TMesh,parent:TEntity=Null)
	Return mesh.Clone(parent)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function ScaleMesh(mesh:TMesh,x#,y#,z#)
	Return mesh.Scale(x,y,z)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function RotateMesh(mesh:TMesh,pitch#,yaw#,roll#)
	Return mesh.Rotate(pitch,yaw,roll)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function PositionMesh(mesh:TMesh,x#,y#,z#)
	Return mesh.Position(x,y,z)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetMeshSize(mesh:TMesh,width#,height#,depth#)
	Return mesh.GetSize(width,height,depth)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function FitMesh(mesh:TMesh,x#,y#,z#,width#,height#,depth#,uniform=False)
	Return mesh.Fit(x,y,z,width,height,depth,uniform)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function FlipMesh(mesh:TMesh)
	Return mesh.Flip()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function UpdateMeshNormals(mesh:TMesh)
	Return mesh.UpdateNormals()
End Function

'Pivots
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CreatePivot:TPivot(parent:TEntity=Null)
	Return _currentworld.AddPivot(parent)
End Function

'Planes
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CreatePlane:TPlane(parent:TEntity=Null)
	Return _currentworld.AddPlane(parent)
End Function

'Sprite
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CreateSprite:TSprite(parent:TEntity=Null)
	Return _currentworld.AddSprite(Null,TEXTURE_DEFAULT,parent)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function LoadSprite:TSprite(url:Object,flags=TEXTURE_DEFAULT,parent:TEntity=Null)
	Return _currentworld.AddSprite(url,flags,parent)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetSpriteAngle#(sprite:TSprite)
	Return sprite.GetAngle()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetSpriteAngle(sprite:TSprite,angle#)
	Return sprite.SetAngle(angle)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetSpriteHandle(sprite:TSprite,x# Var,y# Var)
	Return sprite.GetHandle(x,y)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End RemS
Function SetSpriteHandle(sprite:TSprite,x#,y#)
	Return sprite.SetHandle(x,y)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetSpriteViewMode(sprite:TSprite)
	Return sprite.GetViewMode()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetSpriteViewMode(sprite:TSprite,mode)
	Return sprite.SetViewMode(mode)
End Function

'Surfaces
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CountSurfaceVertices(surface:TSurface)
	Return surface.CountVertices()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CountSurfaceTriangles(surface:TSurface)
	Return surface.CountTriangles()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function UpdateSurfaceNormals(surface:TSurface)
	Return surface.UpdateNormals()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function AddSurfaceVertex(surface:TSurface,x#,y#,z#,u#=0.0,v#=0.0)
	Return surface.AddVertex(x,y,z,u,v)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetSurfaceCoord(surface:TSurface,index,x# Var,y# Var,z# Var)
	Return surface.GetCoord(index,x,y,z)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetSurfaceCoord(surface:TSurface,index,x#,y#,z#)
	Return surface.SetCoord(index,x,y,z)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetSurfaceColor(surface:TSurface,index,red Var,green Var,blue Var,alpha# Var)
	Return surface.GetColor(index,red,green,blue,alpha)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetSurfaceColor(surface:TSurface,index,red,green,blue,alpha#)
	Return surface.SetColor(index,red,green,blue,alpha)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetSurfaceNormal(surface:TSurface,index,nx# Var,ny# Var,nz# Var)
	Return surface.GetNormal(index,nx,ny,nz)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetSurfaceNormal(surface:TSurface,index,nx#,ny#,nz#)
	Return surface.SetNormal(index,nx,ny,nz)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function AddSurfaceTriangle(surface:TSurface,v0,v1,v2)
	Return surface.AddTriangle(v0,v1,v2)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetSurfaceTriangle(surface:TSurface,index,v0 Var,v1 Var,v2 Var)
	Return surface.GetTriangle(index,v0,v1,v2)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetSurfaceTriangle(surface:TSurface,index,v0,v1,v2)
	Return surface.SetTriangle(index,v0,v1,v2)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetSurfaceBrush:TBrush(surface:TSurface)
	Return surface.GetBrush()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetSurfaceBrush(surface:TSurface,brush:TBrush)
	Return surface.SetBrush(brush)
End Function

'Terrains
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CreateTerrain:TTerrain(size,parent:TEntity=Null)
	Return _currentworld.AddTerrain([size],parent)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function LoadTerrain:TTerrain(url:Object,parent:TEntity=Null)
	Return _currentworld.AddTerrain(url,parent)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetTerrainDetail(terrain:TTerrain,lmax,max_tris,clmax=-1)
	Return terrain.SetDetail(lmax,max_tris,clmax)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetTerrainHeight#(terrain:TTerrain,x,z)
	Return terrain.GetHeight(x,z)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetTerrainHeight(terrain:TTerrain,height#,x,z)
	Return terrain.SetHeight(height,x,z)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetTerrainSize(terrain:TTerrain)
	Return terrain.GetSize()
End Function

'Textures
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function CreateTexture:TTexture(width,height,flags=TEXTURE_COLOR|TEXTURE_MIPMAP,frames=1)
	Local texture:TTexture=_currentworld.AddTexture([width,height],flags)
	texture.SetPixmap(CreatePixmap(width,height,PF_RGBA8888))
	Return texture
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function LoadTexture:TTexture(url:Object,flags=TEXTURE_COLOR|TEXTURE_MIPMAP)
	Return _currentworld.AddTexture(url,flags)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function LockTexture:TPixmap(texture:TTexture)
	Return texture.Lock()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function UnlockTexture(texture:TTexture)
	Return texture.Unlock()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetTextureFlags(texture:TTexture)
	Return texture.GetFlags()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetTextureFlags(texture:TTexture,flags)
	Return texture.SetFlags(flags)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetTextureBlend(texture:TTexture)
	Return texture.GetBlend()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetTextureBlend(texture:TTexture,blend)
	Return texture.SetBlend(blend)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetTextureCoords(texture:TTexture)
	Return texture.GetCoords()
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetTextureCoords(texture:TTexture,coords)
	Return texture.SetCoords(coords)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function GetTextureScale(texture:TTexture,x# Var,y# Var)
	Return texture.GetScale(x,y)
End Function
Rem
	bbdoc: Needs documentation. #TODO
End Rem
Function SetTextureScale(texture:TTexture,x#,y#)
	Return texture.SetScale(x,y)
End Function