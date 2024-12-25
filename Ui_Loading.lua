--[[

		Made by: Khanh (ItOnltz  愛してます♡)
		pls dont steal it:<
]]

-- function
_G.IsCompeleted = false
function trans_visible(tar, to1, to2)
	local TweenSer = game:GetService("TweenService")
	local tweeninf = TweenInfo.new(to1, Enum.EasingStyle.Quart)
	if tar and (tar:IsA("TextLabel") or tar:IsA("TextButton")) then
		-- tar.TextTransparency
		local gi = TweenSer:Create(tar, tweeninf, {TextTransparency = to2})
		gi:Play()
	elseif tar and (tar:IsA("ImageLabel") or tar:IsA("ImageButton")) then
		-- tar.ImageTransparency
		local gi = TweenSer:Create(tar, tweeninf, {ImageTransparency = to2})
		gi:Play()
	elseif tar and tar:IsA("Frame") then
		--  targ.BackgroundTransparency
		local gi = TweenSer:Create(tar, tweeninf, {BackgroundTransparency = to2})
		gi:Play()

	end
end
function tranblur(a, aa, asd12)
	local TweenSer = game:GetService("TweenService")
	local tweeninf = TweenInfo.new(aa, Enum.EasingStyle.Quart)
	local gi = TweenSer:Create(a, tweeninf, {Size = asd12})
	gi:Play()
end
-- Instances

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local status = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame_3 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
trans_visible(status ,0.1,1)
trans_visible(Frame_2 ,0.1,1)
trans_visible(Frame_3 ,0.1,1)
trans_visible(TextLabel ,0.1,1)
trans_visible(ImageLabel ,0.1,1)
-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.499629915, 0, 0.499394834, 0)
Frame.Size = UDim2.new(0, 0, 0, 0)
-- old: Frame.Size = UDim2.new(0, 442, 0, 161)
UICorner.Parent = Frame

status.Name = "status"
status.Parent = Frame
status.BackgroundColor3 = Color3.new(1, 1, 1)
status.BackgroundTransparency = 1
status.BorderColor3 = Color3.new(0, 0, 0)
status.BorderSizePixel = 0
status.Position = UDim2.new(0.108597286, 0, 0.726004481, 0)
status.Size = UDim2.new(0, 200, 0, 23)
status.Font = Enum.Font.SourceSansBold
status.Text = "Status: Loading Client . . ."
status.TextColor3 = Color3.new(0, 0, 0)
status.TextSize = 16
status.TextXAlignment = Enum.TextXAlignment.Left
spawn(function()
	while true do
		status.Text = not _G.IsCompeleted and "Status: Loading Client ." or "Status: Succes! Thank you for using TDT Executor"
		wait(0.5)
		status.Text = not _G.IsCompeleted and "Status: Loading Client . ." or "Status: Succes! Thank you for using TDT Executor"
		wait(0.5)
		status.Text = not _G.IsCompeleted and "Status: Loading Client . . ." or "Status: Succes! Thank you for using TDT Executor"
		wait(0.5)
	end
end)
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.27375567, 0, 0.186938554, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "TDT Executor"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 25


Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.580392, 0.580392, 0.580392)
Frame_2.BorderColor3 = Color3.new(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.0610859729, 0, 0.546583831, 0)
Frame_2.Size = UDim2.new(0, 388, 0, 18)

UICorner_2.Parent = Frame_2

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
Frame_3.BorderColor3 = Color3.new(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0610859729, 0, 0.546583831, 0)
Frame_3.Size = UDim2.new(0, 0, 0, 18)

UICorner_3.Parent = Frame_3

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.108597286, 0, 0.1863354, 0)
ImageLabel.Size = UDim2.new(0, 50, 0, 50)
ImageLabel.Image = "rbxassetid://73406502587266"


--[[
trans_visible(ImageLabel, 2)

]]

function Fade_in()
	spawn(function()
		if not game:GetService("Lighting"):FindFirstChild("HelloGuys") then
			local hello = Instance.new("BlurEffect", game:GetService("Lighting"))
			hello.Size = 0
			hello.Name = "HelloGuys"
			tranblur(hello, 1.5, 40)
		end
	end)
	Frame.Size = UDim2.new(0, 0, 0, 0)
	local s = game:GetService("TweenService")
	local s2 = TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
	local hihi = s:Create(Frame, s2, {Size = UDim2.new(0, 442, 0, 161)})
	-- Frame.Size = UDim2.new(0, 442, 0, 161)
	hihi:Play()
	hihi.Completed:Wait()
end
function RunLoading()
	trans_visible(status ,1.5,0)
	trans_visible(Frame_2 ,1.5,0)
	trans_visible(Frame_3 ,1.5,0)
	trans_visible(TextLabel ,1.5,0)
	trans_visible(ImageLabel ,1.5,0)
	wait(1.75)
	-- next: {0, 388},{0, 18}
	local s = game:GetService("TweenService")
	local s2 = TweenInfo.new(2, Enum.EasingStyle.Linear)
	local gi = s:Create(Frame_3, s2, {Size = UDim2.new(0, 388,0, 18)})
	gi:Play()
	gi.Completed:Wait()
	wait(0.5)
end
function Fade_out()
	if game:GetService("Lighting"):FindFirstChild("HelloGuys") then
		local hello = game:GetService("Lighting"):WaitForChild("HelloGuys")
		tranblur(hello, 1.5, 0)
	end
	trans_visible(Frame_2 ,1.5,1)
	trans_visible(Frame_3 ,1.5,1)
	trans_visible(TextLabel ,1.5,1)
	trans_visible(ImageLabel ,1.5,1)
	_G.IsCompeleted = true
	wait(0.5)
	status.Text = "Status: Succes! Thank you for using TDT Executor"
	trans_visible(status ,1.5,1)
	wait(1.5)
	local s = game:GetService("TweenService")
	local s2 = TweenInfo.new(2, Enum.EasingStyle.Back, Enum.EasingDirection.In)
	local hihi = s:Create(Frame, s2, {Size = UDim2.new(0, 0, 0, 0)})
	-- Frame.Size = UDim2.new(0, 442, 0, 161)
	hihi:Play()
	hihi.Completed:Wait()
end
Fade_in()
RunLoading()
Fade_out()
