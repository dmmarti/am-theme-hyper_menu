///////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  
////////////////////////////////////////////////////////////////////////////////////////////////////////   

class UserConfig {
</ label="--------  Main theme layout  --------", help="Show or hide additional images", order=1 /> uct1="select below";
   </ label="Background image", help="Background image", options="AlexKidd,Batman,Bomberman,Castlevania,CrashBandicoot,DigDug,DonkeyKong,FatalFury,Frogger,IndianaJones,IronMan,Mario,MortalKombat,PacMan,Ryu,Sonic,SpaceInvaders,StreetFighter,TMNT,XMen,random", order=2 /> backgroundimage="random";   
   </ label="Enable wheel fade", help="Enable Wheel or disable wheel fade", options="Yes,No", order=3 /> enable_wheelfade="Yes";   
   </ label="Preserve Video Aspect Ratio", help="Preserve Video Aspect Ratio", options="Yes,No", order=4 /> Preserve_Aspect_Ratio="Yes";   
   </ label="Select wheel layout", help="Select wheel type or listbox", options="vert_wheel_left", order=6 /> enable_list_type="vert_wheel_left";
   </ label="Select spinwheel art", help="The artwork to spin", options="wheel", order=7 /> orbit_art="wheel";
   </ label="Wheel transition time", help="Time in milliseconds for wheel spin.", order=8 /> transition_ms="35";  
   </ label="Wheel fade time", help="Time in milliseconds to fade the wheel.", options="Off,1250,2500,5000,7500,10000", order=9 /> wheel_fade_ms="2500";
</ label=" ", help=" ", options=" ", order=8 /> divider1="";
</ label="--------    Extra images     --------", help="Show or hide additional images", order=9 /> uct2="select below";
   </ label="Enable box art", help="Select box art", options="Yes,No", order=10 /> enable_gboxart="No";
   </ label="Enable cartridge art", help="Select cartridge art", options="Yes,No", order=11 /> enable_gcartart="No";
</ label=" ", help=" ", options=" ", order=12 /> divider2="";
</ label="--------    Game info box    --------", help="Show or hide game info box", order=13 /> uct5="select below";
   </ label="Enable game information", help="Show game information", options="Yes,No", order=14 /> enable_ginfo="Yes";
   </ label="Enable game genre icon", help="Show game genre icon", options="Yes,No", order=15 /> enable_genre="No";   
   </ label="Enable text frame", help="Show text frame", options="Yes,No", order=16 /> enable_frame="No";
</ label="--------    Miscellaneous    --------", help="Miscellaneous options", order=23 /> uct6="select below";
   </ label="Enable monitor static effect", help="Show static effect when snap is null", options="Yes,No", order=24 /> enable_static="No";
   </ label="Random Wheel Sounds", help="Play random sounds when navigating games wheel", options="Yes,No", order=25 /> enable_random_sound="Yes";   
//</ label="--------   Pointer images    --------", help="Change pointer image", order=30 /> uct4="select below";
   </ label="Select pointer", help="Select animated pointer", options="none", order=31 /> enable_pointer="none"; 
}  

local my_config = fe.get_config();
local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;

//for fading of the wheel
first_tick <- 0;
stop_fading <- true;
wheel_fade_ms <- 0;
try {	wheel_fade_ms = my_config["wheel_fade_ms"].tointeger(); } catch ( e ) { }

fe.layout.font="Roboto";

// modules
fe.load_module("fade");
fe.load_module( "animate" );

///////////////////////////////////////////////////////////////////////////////////
// Load background image

if ( my_config["backgroundimage"] == "AlexKidd" )
{
 local background = fe.add_image("backgrounds/AlexKidd.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "Batman" )
{
 local background = fe.add_image("backgrounds/Batman.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "Bomberman" )
{
 local background = fe.add_image("backgrounds/Bomberman.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "Castlevania" )
{
 local background = fe.add_image("backgrounds/Castlevania.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "CrashBandicoot" )
{
 local background = fe.add_image("backgrounds/CrashBandicoot.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "DigDug" )
{
 local background = fe.add_image("backgrounds/DigDug.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "DonkeyKong" )
{
 local background = fe.add_image("backgrounds/DonkeyKong.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "FatalFury" )
{
 local background = fe.add_image("backgrounds/FatalFury.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "Frogger" )
{
 local background = fe.add_image("backgrounds/Frogger.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "IndianaJones" )
{
 local background = fe.add_image("backgrounds/IndianaJones.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "IronMan" )
{
 local background = fe.add_image("backgrounds/IronMan.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "Mario" )
{
 local background = fe.add_image("backgrounds/Mario.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "MortalKombat" )
{
 local background = fe.add_image("backgrounds/MortalKombat.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "PacMan" )
{
 local background = fe.add_image("backgrounds/PacMan.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "Ryu" )
{
 local background = fe.add_image("backgrounds/Ryu.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "Sonic" )
{
 local background = fe.add_image("backgrounds/Sonic.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "SpaceInvaders" )
{
 local background = fe.add_image("backgrounds/SpaceInvaders.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "StreetFighter" )
{
 local background = fe.add_image("backgrounds/StreetFighter.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "TMNT" )
{
 local background = fe.add_image("backgrounds/TMNT.png", 0, 0, flw, flh )
}
if ( my_config["backgroundimage"] == "XMen" )
{
 local background = fe.add_image("backgrounds/XMen.png", 0, 0, flw, flh )
}

if ( my_config["backgroundimage"] == "random" )
{
	local random_num = floor(((rand() % 1000 ) / 1000.0) * (175 - (1 - 1)) + 1);
	local background_name = "backgrounds_random/DS"+random_num+".png";		
	local background = fe.add_image( background_name, 0, 0, flw, flh );
}

local blackvideo = fe.add_image("black.png", 0, 0, flw, flh );

// Video Preview or static video if none available
// remember to make both sections the same dimensions and size
if ( my_config["enable_static"] == "Yes" )
{
//adjust the values below for the static preview video snap
   const SNAPBG_ALPHA = 200;
   local snapbg=null;
   snapbg = fe.add_image( "static.mp4", flx*0.5, fly*0.25, flw*0.325, flh*0.45 );
   snapbg.trigger = Transition.EndNavigation;
   snapbg.skew_y = 0;
   snapbg.skew_x = 0;
   snapbg.pinch_y = 0;
   snapbg.pinch_x = 0;
   snapbg.rotation = 0;
   snapbg.set_rgb( 155, 155, 155 );
   snapbg.alpha = SNAPBG_ALPHA;
}
 else
 {
 const SNAPBG_ALPHA = 0;
 local temp = fe.add_text("", flx*0.155, fly*0.07, flw*0.69, flh*0.57 );
 temp.bg_alpha = SNAPBG_ALPHA;
 }

//create surface for snap
local surface_snap = fe.add_surface( 640, 480 );
local snap = FadeArt("snap", 0, 0, 640, 480, surface_snap);
snap.trigger = Transition.EndNavigation;
snap.preserve_aspect_ratio = true;

//now position and pinch surface of snap
//adjust the below values for the game video preview snap
surface_snap.set_pos(flx*0.4, fly*0.1, flw*0.525, flh*0.7);
surface_snap.skew_y = 0;
surface_snap.skew_x = 0;
surface_snap.pinch_y = 0;
surface_snap.pinch_x = 0;
surface_snap.rotation = 0;
surface_snap.preserve_aspect_ratio = true;


// Box art to dipslay, uses the emulator.cfg path for boxart image location
if ( my_config["enable_gboxart"] == "Yes" )
{
local boxart = fe.add_artwork("boxart", flx*0.245, fly*0.72, flw*0.1, flh*0.2 );
}

if ( my_config["enable_gcartart"] == "Yes" )
{
local cartart = fe.add_artwork("cartart", flx*0.32, fly*0.83, flw*0.05, flh*0.1 );
}


///////////////////////////////////////////////////////////////////////////////////
// The following section sets up what type and wheel and displays the users choice

//This enables vertical art on left side instead of default wheel
if ( my_config["enable_list_type"] == "vert_wheel_left" )
{
fe.load_module( "conveyor" );
#local wheel_x = [ flx*0.04, flx* 0.04, flx* 0.04, flx* 0.04, flx* 0.04, flx* 0.04, flx* 0.08, flx* 0.04, flx* 0.04, flx* 0.04, flx* 0.04, flx* 0.04, ];
local wheel_x = [ flx*0.02, flx* 0.02, flx* 0.02, flx* 0.04, flx* 0.08, flx* 0.12, flx* 0.08, flx* 0.12, flx* 0.08, flx* 0.04, flx* 0.02, flx* 0.02, ];
#local wheel_y = [ -fly*0.22, -fly*0.105, fly*0.0, fly*0.105, fly*0.215, fly*0.325, fly*0.436, fly*0.6, fly*0.71, fly*0.82, fly*0.925, fly*0.98, ];
local wheel_y = [ -fly*0.22, -fly*0.105, fly*0.0, fly*0.105, fly*0.215, fly*0.325, fly*0.43, fly*0.59, fly*0.69, fly*0.8, fly*0.9, fly*0.98, ];
local wheel_w = [ flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.24, flw*0.18, flw*0.18, flw*0.18, flw*0.18, flw*0.18, ];
local wheel_h = [  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, flh*0.168,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11,  flh*0.11, ];
local wheel_a = [  150,  150,  150,  150,  150,  150, 255,  150,  150,  150,  150,  150, ];
local wheel_r = [  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ];
local num_arts = 8;

class WheelEntry extends ConveyorSlot
{
	constructor()
	{
		base.constructor( ::fe.add_artwork( my_config["orbit_art"] ) );
		preserve_aspect_ratio = true;
	}

	function on_progress( progress, var )
	{
	  local p = progress / 0.1;
		local slot = p.tointeger();
		p -= slot;
		
		slot++;

		if ( slot < 0 ) slot=0;
		if ( slot >=10 ) slot=10;

		m_obj.x = wheel_x[slot] + p * ( wheel_x[slot+1] - wheel_x[slot] );
		m_obj.y = wheel_y[slot] + p * ( wheel_y[slot+1] - wheel_y[slot] );
		m_obj.width = wheel_w[slot] + p * ( wheel_w[slot+1] - wheel_w[slot] );
		m_obj.height = wheel_h[slot] + p * ( wheel_h[slot+1] - wheel_h[slot] );
		m_obj.rotation = wheel_r[slot] + p * ( wheel_r[slot+1] - wheel_r[slot] );
		m_obj.alpha = wheel_a[slot] + p * ( wheel_a[slot+1] - wheel_a[slot] );
	}
};

local wheel_entries = [];
for ( local i=0; i<num_arts/2; i++ )
	wheel_entries.push( WheelEntry() );

local remaining = num_arts - wheel_entries.len();

// we do it this way so that the last wheelentry created is the middle one showing the current
// selection (putting it at the top of the draw order)
for ( local i=0; i<remaining; i++ )
	wheel_entries.insert( num_arts/2, WheelEntry() );

conveyor <- Conveyor();
conveyor.set_slots( wheel_entries );
conveyor.transition_ms = 50;
try { conveyor.transition_ms = my_config["transition_ms"].tointeger(); } catch ( e ) { }
}
 
// Play random sound when transitioning to next / previous game on wheel
function sound_transitions(ttype, var, ttime) 
{
	if (my_config["enable_random_sound"] == "Yes")
	{
		local random_num = floor(((rand() % 1000 ) / 1000.0) * (124 - (1 - 1)) + 1);
		local sound_name = "sounds/GS"+random_num+".mp3";
		switch(ttype) 
		{
		case Transition.EndNavigation:		
			local Wheelclick = fe.add_sound(sound_name);
			Wheelclick.playing=true;
			break;
		}
		return false;
	}
}
fe.add_transition_callback("sound_transitions")

///////////////////////////////////////////////////////////////////////////////////
// The following sets up which pointer to show on the wheel
//property animation - wheel pointers

if ( my_config["enable_pointer"] == "none") 
{
point <- fe.add_image("pointers/[emulator]", flx*0.88, fly*0.34, flw*0.2, flh*0.35);

local alpha_cfg = {
    when = Transition.ToNewSelection,
    property = "alpha",
    start = 110,
    end = 255,
    time = 300
}
animation.add( PropertyAnimation( point, alpha_cfg ) );

local movey_cfg = {
    when = Transition.ToNewSelection,
    property = "y",
    start = point.y,
    end = point.y,
    time = 200
}
animation.add( PropertyAnimation( point, movey_cfg ) );

local movex_cfg = {
    when = Transition.ToNewSelection,
    property = "x",
    start = flx*0.83,
    end = point.x,
    time = 200	
}	
animation.add( PropertyAnimation( point, movex_cfg ) );
}

/////////////////////////////////////////////////////////////////////////////////// 
//Wheel fading
if ( my_config["enable_wheelfade"] == "Yes" )
{
if ( wheel_fade_ms > 0 && ( my_config["enable_list_type"] == "vert_wheel_left") )
{
	
	function wheel_fade_transition( ttype, var, ttime )
	{
		if ( ttype == Transition.ToNewSelection || ttype == Transition.ToNewList )
				first_tick = -1;
	}
	fe.add_transition_callback( "wheel_fade_transition" );
	
	function wheel_alpha( ttime )
	{
		if (first_tick == -1)
			stop_fading = false;

		if ( !stop_fading )
		{
			local elapsed = 0;
			if (first_tick > 0)
				elapsed = ttime - first_tick;

			local count = conveyor.m_objs.len();

			for (local i=0; i < count; i++)
			{
				if ( elapsed > wheel_fade_ms)
					conveyor.m_objs[i].alpha = 0;
				else
					//uses hardcoded default alpha values does not use wheel_a
					//4 = middle one -> full alpha others use 80
					if (i == 4)
						conveyor.m_objs[i].alpha = (255 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;
					else
						conveyor.m_objs[i].alpha = (80 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;
			}

			if ( elapsed > wheel_fade_ms)
			{
				//So we don't keep doing the loop above when all values have 0 alpha
				stop_fading = true;
				point.alpha = 0;
			}
			else
				//hardcoded default pointer with full alpha alpha
				point.alpha = (255 * (wheel_fade_ms - elapsed)) / wheel_fade_ms;

		  if (first_tick == -1)
				first_tick = ttime;
		}
	}
	fe.add_ticks_callback( "wheel_alpha" );
}
}

// Game information to show inside text box frame
if ( my_config["enable_ginfo"] == "Yes" )
{

//add frame to make text standout
if ( my_config["enable_frame"] == "Yes" )
{
local frame = fe.add_image( "frame.png", 0, fly*0.94, flw, flh*0.06 );
frame.alpha = 255;
}

//Year text info
//local textyp = fe.add_text("[Year]", flx*0.45, fly*0.755, flw*0.5, flh*0.035 );
//textyp.set_rgb( 255, 255, 255 );
//textyp.style = Style.Bold;
//textyp.align = Align.Left;

//Title text info
local textt = fe.add_text( "[Title]", flx*0.41, fly*0.835, flw*0.5, flh*0.035  );
textt.set_rgb( 225, 255, 255 );
//textt.style = Style.Bold;
textt.align = Align.Centre;
textt.rotation = 0;
//textt.word_wrap = true;

//Emulator text info
//local textemu = fe.add_text( "[Emulator]", flx*0.45, fly*0.795, flw*0.5, flh*0.035  );
//textemu.set_rgb( 225, 255, 255 );
//textemu.style = Style.Bold;
//textemu.align = Align.Left;
//textemu.rotation = 0;
//textemu.word_wrap = true;

//display filter info
local filter = fe.add_text( "[ListFilterName]: [ListEntry]-[ListSize]     Played: [PlayedCount]", flx*0.66, fly*0.94, flw*0.35, flh*0.035 );
filter.set_rgb( 255, 255, 255 );
//filter.style = Style.Italic;
//filter.align = Align.Left;
filter.rotation = 0;

//category icons
if ( my_config["enable_genre"] == "Yes" )
{

local glogo1 = fe.add_image("glogos/unknown1.png", flx*0.4, fly*0.8, flw*0.05, flh*0.07);
glogo1.trigger = Transition.EndNavigation;

class GenreImage1
{
    mode = 1;       //0 = first match, 1 = last match, 2 = random
    supported = {
        //filename : [ match1, match2 ]
        "action": [ "action","gun", "climbing" ],
        "adventure": [ "adventure" ],
        "arcade": [ "arcade" ],
        "casino": [ "casino" ],
        "computer": [ "computer" ],
        "console": [ "console" ],
        "collection": [ "collection" ],
        "fighter": [ "fighting", "fighter", "beat-'em-up" ],
        "handheld": [ "handheld" ],
        "platformer": [ "platformer", "platform" ],
        "mahjong": [ "mahjong" ],
        "maze": [ "maze" ],
        "paddle": [ "breakout", "paddle" ],
        "puzzle": [ "puzzle" ],
        "pinball": [ "pinball" ],
        "quiz": [ "quiz" ],
        "racing": [ "racing", "driving","motorcycle" ],
        "rpg": [ "rpg", "role playing", "role-playing" ],
        "rhythm": [ "rhythm" ],
        "shooter": [ "shooter", "shmup", "shoot-'em-up" ],
        "simulation": [ "simulation" ],
        "sports": [ "sports", "boxing", "golf", "baseball", "football", "soccer", "tennis", "hockey" ],
        "strategy": [ "strategy"],
        "utility": [ "utility" ]
    }

    ref = null;
    constructor( image )
    {
        ref = image;
        fe.add_transition_callback( this, "transition" );
    }

    function transition( ttype, var, ttime )
    {
        if ( ttype == Transition.ToNewSelection || ttype == Transition.ToNewList )
        {
            local cat = " " + fe.game_info(Info.Category, var).tolower();
            local matches = [];
            foreach( key, val in supported )
            {
                foreach( nickname in val )
                {
                    if ( cat.find(nickname, 0) ) matches.push(key);
                }
            }
            if ( matches.len() > 0 )
            {
                switch( mode )
                {
                    case 0:
                        ref.file_name = "glogos/" + matches[0] + "1.png";
                        break;
                    case 1:
                        ref.file_name = "glogos/" + matches[matches.len() - 1] + "1.png";
                        break;
                    case 2:
                        local random_num = floor(((rand() % 1000 ) / 1000.0) * ((matches.len() - 1) - (0 - 1)) + 0);
                        ref.file_name = "glogos/" + matches[random_num] + "1.png";
                        break;
                }
            } else
            {
                ref.file_name = "glogos/unknown1.png";
            }
        }
    }
}
GenreImage1(glogo1);
}


}
