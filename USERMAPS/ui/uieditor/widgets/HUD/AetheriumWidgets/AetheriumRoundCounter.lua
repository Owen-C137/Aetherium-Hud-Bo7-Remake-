-- Aetherium Round Counter Widget
-- Uses vanilla BO3 image-based round display, positioned top right

require( "ui.uieditor.widgets.HUD.ZM_RoundWidget.ZmRndContainer" )

CoD.AetheriumRoundCounter = InheritFrom( LUI.UIElement )
CoD.AetheriumRoundCounter.new = function ( menu, controller )
	local self = LUI.UIElement.new()

	self:setUseStencil( false )
	self:setClass( CoD.AetheriumRoundCounter )
	self.id = "AetheriumRoundCounter"
	self.soundSet = "HUD"
	-- Positioning handled by parent HUD
	self.anyChildUsesUpdateState = true

	-- Vanilla BO3 round widget (image-based digits with effects)
	self.Rounds = CoD.ZmRndContainer.new( menu, controller )
	self.Rounds:setLeftRight(true, false, 1080, 1142)
	self.Rounds:setTopBottom(true, false, 42, 130)
	self:addElement( self.Rounds )

	-- Close handler
	LUI.OverrideFunction_CallOriginalSecond( self, "close", function ( element )
		element.Rounds:close()
	end )

	return self
end
