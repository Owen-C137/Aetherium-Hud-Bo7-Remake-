#using scripts\codescripts\struct;

#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#insert scripts\shared\shared.gsh;
#insert scripts\shared\version.gsh;

#namespace zm_aetherium_hud;

REGISTER_SYSTEM_EX( "zm_aetherium_hud", &__init__, &__main__, undefined )

function set_ui_model_value( localClientNum, oldVal, newVal, bNewEnt, bInitialSnap, fieldName, bWasTimeJump )
{
	// BO6 Overhaul pattern - create model using exact fieldName
	setuimodelvalue( createuimodel( getuimodelforcontroller( localClientNum ), fieldName ), newVal );
}

function __init__()
{
	// Register health clientfield callbacks for each player using world
	// Use com_maxclients to support up to 8 players (BO6 Overhaul pattern)
	for( i = 0; i < GetDvarInt( "com_maxclients" ); i++ )
	{
		clientfield::register( "world", "player_health_" + i, VERSION_SHIP, 7, "float", &set_ui_model_value, !CF_HOST_ONLY, !CF_CALLBACK_ZERO_ON_NEW_ENT );
	}
    
	// Load the Aetherium HUD
	LuiLoad( "ui.uieditor.menus.HUD.AetheriumHud" );
}

function __main__()
{
	// Client-side HUD logic  
}
