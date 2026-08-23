local TweenService = game:GetService("TweenService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScriptDownloader"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 340, 0, 390)
Main.Position = UDim2.new(0.5, -170, 0.5, -195)
Main.BackgroundColor3 = Color3.fromRGB(22, 26, 35)
Main.ClipsDescendants = true
Main.Active = true
Main.Draggable = true
Main.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 14)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(45, 55, 78)
MainStroke.Thickness = 1
MainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainStroke.Parent = Main

local Header = Instance.new("Frame")
Header.Size = UDim2.new(1, 0, 0, 52)
Header.Position = UDim2.new(0, 0, 0, 0)
Header.BackgroundTransparency = 1
Header.Parent = Main

local IconCanvas = Instance.new("Frame")
IconCanvas.Size = UDim2.new(0, 28, 0, 28)
IconCanvas.Position = UDim2.new(0, 14, 0.5, -14)
IconCanvas.BackgroundColor3 = Color3.fromRGB(30, 200, 110)
IconCanvas.BackgroundTransparency = 0.75
IconCanvas.Parent = Header

local IconCorner = Instance.new("UICorner")
IconCorner.CornerRadius = UDim.new(0, 7)
IconCorner.Parent = IconCanvas

local IconDot = Instance.new("Frame")
IconDot.Size = UDim2.new(0, 10, 0, 10)
IconDot.Position = UDim2.new(0.5, -5, 0.5, -5)
IconDot.BackgroundColor3 = Color3.fromRGB(99, 220, 139)
IconDot.Parent = IconCanvas

local IconDotCorner = Instance.new("UICorner")
IconDotCorner.CornerRadius = UDim.new(0, 3)
IconDotCorner.Parent = IconDot

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0, 200, 0, 22)
Title.Position = UDim2.new(0, 50, 0.5, -11)
Title.BackgroundTransparency = 1
Title.Text = "Script Downloader"
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.TextColor3 = Color3.fromRGB(235, 240, 255)
Title.Parent = Header

local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 28, 0, 28)
Close.Position = UDim2.new(1, -40, 0.5, -14)
Close.BackgroundColor3 = Color3.fromRGB(60, 35, 40)
Close.BackgroundTransparency = 0.3
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 110, 110)
Close.TextSize = 13
Close.Font = Enum.Font.GothamBold
Close.Parent = Header

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = Close

local Minimize = Instance.new("TextButton")
Minimize.Size = UDim2.new(0, 28, 0, 28)
Minimize.Position = UDim2.new(1, -74, 0.5, -14)
Minimize.BackgroundColor3 = Color3.fromRGB(40, 50, 70)
Minimize.BackgroundTransparency = 0.2
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(130, 145, 175)
Minimize.TextSize = 18
Minimize.Font = Enum.Font.GothamBold
Minimize.Parent = Header

local MinimizeCorner = Instance.new("UICorner")
MinimizeCorner.CornerRadius = UDim.new(0, 8)
MinimizeCorner.Parent = Minimize

local Divider = Instance.new("Frame")
Divider.Size = UDim2.new(1, -28, 0, 1)
Divider.Position = UDim2.new(0, 14, 0, 54)
Divider.BackgroundColor3 = Color3.fromRGB(45, 55, 78)
Divider.Parent = Main

local Body = Instance.new("Frame")
Body.Size = UDim2.new(1, 0, 1, -56)
Body.Position = UDim2.new(0, 0, 0, 56)
Body.BackgroundTransparency = 1
Body.Parent = Main

local TypeSection = Instance.new("TextLabel")
TypeSection.Size = UDim2.new(1, -28, 0, 16)
TypeSection.Position = UDim2.new(0, 14, 0, 14)
TypeSection.BackgroundTransparency = 1
TypeSection.Text = "TYPE"
TypeSection.TextXAlignment = Enum.TextXAlignment.Left
TypeSection.Font = Enum.Font.GothamBold
TypeSection.TextSize = 10
TypeSection.TextColor3 = Color3.fromRGB(99, 220, 139)
TypeSection.Parent = Body

local TypeCard = Instance.new("Frame")
TypeCard.Size = UDim2.new(1, -28, 0, 44)
TypeCard.Position = UDim2.new(0, 14, 0, 32)
TypeCard.BackgroundColor3 = Color3.fromRGB(30, 35, 48)
TypeCard.Parent = Body

local TypeCardCorner = Instance.new("UICorner")
TypeCardCorner.CornerRadius = UDim.new(0, 8)
TypeCardCorner.Parent = TypeCard

local TypeCardStroke = Instance.new("UIStroke")
TypeCardStroke.Color = Color3.fromRGB(45, 55, 78)
TypeCardStroke.Thickness = 1
TypeCardStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
TypeCardStroke.Parent = TypeCard

local LocalScript = Instance.new("TextButton")
LocalScript.Size = UDim2.new(0.5, -12, 1, -12)
LocalScript.Position = UDim2.new(0, 6, 0, 6)
LocalScript.BackgroundColor3 = Color3.fromRGB(99, 220, 139)
LocalScript.Text = "LocalScript"
LocalScript.TextColor3 = Color3.fromRGB(14, 16, 21)
LocalScript.TextSize = 12
LocalScript.Font = Enum.Font.GothamBold
LocalScript.Parent = TypeCard

local LocalScriptCorner = Instance.new("UICorner")
LocalScriptCorner.CornerRadius = UDim.new(0, 5)
LocalScriptCorner.Parent = LocalScript

local ModuleScript = Instance.new("TextButton")
ModuleScript.Size = UDim2.new(0.5, -12, 1, -12)
ModuleScript.Position = UDim2.new(0.5, 6, 0, 6)
ModuleScript.BackgroundColor3 = Color3.fromRGB(99, 220, 139)
ModuleScript.Text = "ModuleScript"
ModuleScript.TextColor3 = Color3.fromRGB(14, 16, 21)
ModuleScript.TextSize = 12
ModuleScript.Font = Enum.Font.GothamBold
ModuleScript.Parent = TypeCard

local ModuleScriptCorner = Instance.new("UICorner")
ModuleScriptCorner.CornerRadius = UDim.new(0, 5)
ModuleScriptCorner.Parent = ModuleScript

local DirectorySection = Instance.new("TextLabel")
DirectorySection.Size = UDim2.new(1, -28, 0, 16)
DirectorySection.Position = UDim2.new(0, 14, 0, 86)
DirectorySection.BackgroundTransparency = 1
DirectorySection.Text = "DIRECTORY"
DirectorySection.TextXAlignment = Enum.TextXAlignment.Left
DirectorySection.Font = Enum.Font.GothamBold
DirectorySection.TextSize = 10
DirectorySection.TextColor3 = Color3.fromRGB(99, 220, 139)
DirectorySection.Parent = Body

local DirectoryCard = Instance.new("Frame")
DirectoryCard.Size = UDim2.new(1, -28, 0, 44)
DirectoryCard.Position = UDim2.new(0, 14, 0, 104)
DirectoryCard.BackgroundColor3 = Color3.fromRGB(30, 35, 48)
DirectoryCard.Parent = Body

local DirectoryCardCorner = Instance.new("UICorner")
DirectoryCardCorner.CornerRadius = UDim.new(0, 8)
DirectoryCardCorner.Parent = DirectoryCard

local DirectoryCardStroke = Instance.new("UIStroke")
DirectoryCardStroke.Color = Color3.fromRGB(45, 55, 78)
DirectoryCardStroke.Thickness = 1
DirectoryCardStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
DirectoryCardStroke.Parent = DirectoryCard

local Workspace = Instance.new("TextButton")
Workspace.Size = UDim2.new(0.333, -8, 1, -12)
Workspace.Position = UDim2.new(0, 6, 0, 6)
Workspace.BackgroundColor3 = Color3.fromRGB(99, 220, 139)
Workspace.Text = "Workspace"
Workspace.TextColor3 = Color3.fromRGB(14, 16, 21)
Workspace.TextSize = 11
Workspace.Font = Enum.Font.GothamBold
Workspace.Parent = DirectoryCard

local WorkspaceCorner = Instance.new("UICorner")
WorkspaceCorner.CornerRadius = UDim.new(0, 5)
WorkspaceCorner.Parent = Workspace

local LocalPlayer = Instance.new("TextButton")
LocalPlayer.Size = UDim2.new(0.333, -8, 1, -12)
LocalPlayer.Position = UDim2.new(0.333, 4, 0, 6)
LocalPlayer.BackgroundColor3 = Color3.fromRGB(99, 220, 139)
LocalPlayer.Text = "LocalPlayer"
LocalPlayer.TextColor3 = Color3.fromRGB(14, 16, 21)
LocalPlayer.TextSize = 11
LocalPlayer.Font = Enum.Font.GothamBold
LocalPlayer.Parent = DirectoryCard

local LocalPlayerCorner = Instance.new("UICorner")
LocalPlayerCorner.CornerRadius = UDim.new(0, 5)
LocalPlayerCorner.Parent = LocalPlayer

local ReplicatedStorage = Instance.new("TextButton")
ReplicatedStorage.Size = UDim2.new(0.333, -8, 1, -12)
ReplicatedStorage.Position = UDim2.new(0.666, 2, 0, 6)
ReplicatedStorage.BackgroundColor3 = Color3.fromRGB(99, 220, 139)
ReplicatedStorage.Text = "ReplicatedStorage"
ReplicatedStorage.TextColor3 = Color3.fromRGB(14, 16, 21)
ReplicatedStorage.TextSize = 11
ReplicatedStorage.Font = Enum.Font.GothamBold
ReplicatedStorage.Parent = DirectoryCard

local ReplicatedStorageCorner = Instance.new("UICorner")
ReplicatedStorageCorner.CornerRadius = UDim.new(0, 5)
ReplicatedStorageCorner.Parent = ReplicatedStorage

local ProgressBackground = Instance.new("Frame")
ProgressBackground.Size = UDim2.new(1, -28, 0, 5)
ProgressBackground.Position = UDim2.new(0, 14, 0, 160)
ProgressBackground.BackgroundColor3 = Color3.fromRGB(30, 35, 48)
ProgressBackground.Parent = Body

local ProgressBackgroundCorner = Instance.new("UICorner")
ProgressBackgroundCorner.CornerRadius = UDim.new(0, 3)
ProgressBackgroundCorner.Parent = ProgressBackground

local Progress = Instance.new("Frame")
Progress.Size = UDim2.new(0, 0, 1, 0)
Progress.BackgroundColor3 = Color3.fromRGB(99, 220, 139)
Progress.Parent = ProgressBackground

local ProgressCorner = Instance.new("UICorner")
ProgressCorner.CornerRadius = UDim.new(0, 3)
ProgressCorner.Parent = Progress

local StatusBackground = Instance.new("Frame")
StatusBackground.Size = UDim2.new(1, -28, 0, 36)
StatusBackground.Position = UDim2.new(0, 14, 0, 173)
StatusBackground.BackgroundColor3 = Color3.fromRGB(30, 35, 48)
StatusBackground.Parent = Body

local StatusBackgroundCorner = Instance.new("UICorner")
StatusBackgroundCorner.CornerRadius = UDim.new(0, 8)
StatusBackgroundCorner.Parent = StatusBackground

local StatusBackgroundStroke = Instance.new("UIStroke")
StatusBackgroundStroke.Color = Color3.fromRGB(45, 55, 78)
StatusBackgroundStroke.Thickness = 1
StatusBackgroundStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
StatusBackgroundStroke.Parent = StatusBackground

local StatusIcon = Instance.new("TextLabel")
StatusIcon.Size = UDim2.new(0, 20, 1, 0)
StatusIcon.Position = UDim2.new(0, 8, 0, 0)
StatusIcon.BackgroundTransparency = 1
StatusIcon.Text = "O"
StatusIcon.TextXAlignment = Enum.TextXAlignment.Center
StatusIcon.Font = Enum.Font.GothamMedium
StatusIcon.TextSize = 11
StatusIcon.TextColor3 = Color3.fromRGB(130, 145, 175)
StatusIcon.Parent = StatusBackground

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, -36, 1, 0)
Status.Position = UDim2.new(0, 30, 0, 0)
Status.BackgroundTransparency = 1
Status.Text = "Ready"
Status.TextXAlignment = Enum.TextXAlignment.Left
Status.Font = Enum.Font.Gotham
Status.TextSize = 11
Status.TextColor3 = Color3.fromRGB(130, 145, 175)
Status.Parent = StatusBackground

local Download = Instance.new("TextButton")
Download.Size = UDim2.new(1, -28, 0, 48)
Download.Position = UDim2.new(0, 14, 0, 221)
Download.BackgroundColor3 = Color3.fromRGB(99, 220, 139)
Download.Text = "Download Scripts"
Download.Font = Enum.Font.GothamBold
Download.TextSize = 14
Download.TextColor3 = Color3.fromRGB(14, 16, 21)
Download.Parent = Body

local DownloadCorner = Instance.new("UICorner")
DownloadCorner.CornerRadius = UDim.new(0, 8)
DownloadCorner.Parent = Download

local SelectedTypes = {
	LocalScript = true,
	ModuleScript = true
}

local SelectedDirectories = {
	Workspace = true,
	LocalPlayer = true,
	ReplicatedStorage = true
}

local Minimized = false
local Downloading = false

LocalScript.MouseButton1Click:Connect(function()
	SelectedTypes.LocalScript = not SelectedTypes.LocalScript
	LocalScript.BackgroundColor3 = SelectedTypes.LocalScript and Color3.fromRGB(99, 220, 139) or Color3.fromRGB(38, 44, 60)
	LocalScript.TextColor3 = SelectedTypes.LocalScript and Color3.fromRGB(14, 16, 21) or Color3.fromRGB(130, 145, 175)
end)

ModuleScript.MouseButton1Click:Connect(function()
	SelectedTypes.ModuleScript = not SelectedTypes.ModuleScript
	ModuleScript.BackgroundColor3 = SelectedTypes.ModuleScript and Color3.fromRGB(99, 220, 139) or Color3.fromRGB(38, 44, 60)
	ModuleScript.TextColor3 = SelectedTypes.ModuleScript and Color3.fromRGB(14, 16, 21) or Color3.fromRGB(130, 145, 175)
end)

Workspace.MouseButton1Click:Connect(function()
	SelectedDirectories.Workspace = not SelectedDirectories.Workspace
	Workspace.BackgroundColor3 = SelectedDirectories.Workspace and Color3.fromRGB(99, 220, 139) or Color3.fromRGB(38, 44, 60)
	Workspace.TextColor3 = SelectedDirectories.Workspace and Color3.fromRGB(14, 16, 21) or Color3.fromRGB(130, 145, 175)
end)

LocalPlayer.MouseButton1Click:Connect(function()
	SelectedDirectories.LocalPlayer = not SelectedDirectories.LocalPlayer
	LocalPlayer.BackgroundColor3 = SelectedDirectories.LocalPlayer and Color3.fromRGB(99, 220, 139) or Color3.fromRGB(38, 44, 60)
	LocalPlayer.TextColor3 = SelectedDirectories.LocalPlayer and Color3.fromRGB(14, 16, 21) or Color3.fromRGB(130, 145, 175)
end)

ReplicatedStorage.MouseButton1Click:Connect(function()
	SelectedDirectories.ReplicatedStorage = not SelectedDirectories.ReplicatedStorage
	ReplicatedStorage.BackgroundColor3 = SelectedDirectories.ReplicatedStorage and Color3.fromRGB(99, 220, 139) or Color3.fromRGB(38, 44, 60)
	ReplicatedStorage.TextColor3 = SelectedDirectories.ReplicatedStorage and Color3.fromRGB(14, 16, 21) or Color3.fromRGB(130, 145, 175)
end)

Minimize.MouseButton1Click:Connect(function()
	Minimized = not Minimized
	if Minimized then
		TweenService:Create(Main, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 340, 0, 52)}):Play()
		Divider.Visible = false
		Body.Visible = false
		Minimize.Text = "+"
	else
		TweenService:Create(Main, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 340, 0, 390)}):Play()
		Divider.Visible = true
		Body.Visible = true
		Minimize.Text = "-"
	end
end)

Close.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

Download.MouseButton1Click:Connect(function()
	if Downloading then
		return
	end
	Downloading = true
	Download.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
	Download.Text = "Collecting..."
	Status.Text = "Scanning..."
	Status.TextColor3 = Color3.fromRGB(235, 240, 255)
	StatusIcon.Text = "O"
	StatusIcon.TextColor3 = Color3.fromRGB(255, 200, 80)
	Progress.Size = UDim2.new(0, 0, 1, 0)
	task.wait(0.05)
	local Scripts = {}
	local Roots = {}
	if SelectedDirectories.Workspace then
		Roots[#Roots + 1] = workspace
	end
	if SelectedDirectories.LocalPlayer then
		Roots[#Roots + 1] = game:GetService("Players").LocalPlayer
	end
	if SelectedDirectories.ReplicatedStorage then
		Roots[#Roots + 1] = game:GetService("ReplicatedStorage")
	end
	for _, Root in ipairs(Roots) do
		for _, Descendant in ipairs(Root:GetDescendants()) do
			if (SelectedTypes.LocalScript and Descendant:IsA("LocalScript")) or (SelectedTypes.ModuleScript and Descendant:IsA("ModuleScript")) then
				Scripts[#Scripts + 1] = Descendant
			end
		end
	end
	if #Scripts == 0 then
		Status.Text = "No scripts found"
		Status.TextColor3 = Color3.fromRGB(255, 90, 90)
		StatusIcon.Text = "X"
		StatusIcon.TextColor3 = Color3.fromRGB(255, 90, 90)
		Download.BackgroundColor3 = Color3.fromRGB(99, 220, 139)
		Download.Text = "Download Scripts"
		Downloading = false
		return
	end
	local Chunks = {}
	local Failed = 0
	for Index, Object in ipairs(Scripts) do
		Progress.Size = UDim2.new(Index / #Scripts, 0, 1, 0)
		Status.Text = ("[%d/%d] %s"):format(Index, #Scripts, #Object.Name > 32 and Object.Name:sub(1, 29) .. "..." or Object.Name)
		local Success, Source = pcall(function()
			return (decompile and decompile(Object)) or Object.Source
		end)
		if Success and type(Source) == "string" and #Source > 0 then
			Chunks[#Chunks + 1] = ("-- Path: %s\n-- Class: %s\n%s\n\n"):format(Object:GetFullName(), Object.ClassName, string.rep("-", 72)) .. Source .. "\n\n"
		else
			Failed = Failed + 1
		end
		task.wait()
	end
	Progress.Size = UDim2.new(1, 0, 1, 0)
	if #Chunks > 0 then
		if SelectedTypes.LocalScript and SelectedTypes.ModuleScript then
			writefile(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. ".lua", table.concat(Chunks, ""))
		elseif SelectedTypes.LocalScript then
			writefile(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "_LocalScripts.lua", table.concat(Chunks, ""))
		elseif SelectedTypes.ModuleScript then
			writefile(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. "_ModuleScripts.lua", table.concat(Chunks, ""))
		end
		Status.Text = ("%d scripts saved"):format(#Chunks) .. (Failed > 0 and (" (%d failed)"):format(Failed) or "")
		Status.TextColor3 = Color3.fromRGB(99, 220, 139)
		StatusIcon.Text = "Y"
		StatusIcon.TextColor3 = Color3.fromRGB(99, 220, 139)
	else
		Status.Text = "Failed to extract scripts"
		Status.TextColor3 = Color3.fromRGB(255, 90, 90)
		StatusIcon.Text = "X"
		StatusIcon.TextColor3 = Color3.fromRGB(255, 90, 90)
	end
	task.delay(0.8, function()
		Progress.Size = UDim2.new(0, 0, 1, 0)
	end)
	Download.BackgroundColor3 = Color3.fromRGB(99, 220, 139)
	Download.Text = "Download Scripts"
	Downloading = false
end)