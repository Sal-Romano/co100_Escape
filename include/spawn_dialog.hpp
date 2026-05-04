// Spawn Dialog - explicit control definitions (no engine class inheritance)

#define IDD_SPAWN_DIALOG        58000
#define IDC_SPAWN_MAP           58001
#define IDC_SPAWN_GROUPLIST     58002
#define IDC_SPAWN_CITYNAME      58003
#define IDC_SPAWN_BTN_CITY      58004
#define IDC_SPAWN_BTN_GROUP     58005
#define IDC_SPAWN_BTN_CREATE    58006
#define IDC_SPAWN_BTN_JOIN      58007
#define IDC_SPAWN_BTN_LEAVE     58008
#define IDC_SPAWN_GROUPINPUT    58009
#define IDC_SPAWN_PLAYERINFO    58010

// Base control classes defined explicitly
class A3E_RscText
{
    type = 0;
    idc = -1;
    style = 0;
    shadow = 1;
    colorShadow[] = {0,0,0,0.5};
    font = "PuristaMedium";
    sizeEx = 0.03;
    colorText[] = {1,1,1,1};
    colorBackground[] = {0,0,0,0};
    text = "";
    x = 0; y = 0; w = 0; h = 0;
    linespacing = 1;
};

class A3E_RscStructuredText
{
    type = 13;
    idc = -1;
    style = 0;
    shadow = 1;
    font = "PuristaMedium";
    size = 0.03;
    colorText[] = {1,1,1,1};
    colorBackground[] = {0,0,0,0};
    text = "";
    x = 0; y = 0; w = 0; h = 0;
    class Attributes
    {
        font = "PuristaMedium";
        color = "#ffffff";
        align = "left";
        shadow = 1;
    };
};

class A3E_RscButton
{
    type = 1;
    idc = -1;
    style = 2;
    shadow = 0;
    font = "PuristaBold";
    sizeEx = 0.03;
    colorText[] = {1,1,1,1};
    colorDisabled[] = {0.4,0.4,0.4,1};
    colorBackground[] = {0.2,0.2,0.2,1};
    colorBackgroundDisabled[] = {0.1,0.1,0.1,1};
    colorBackgroundActive[] = {0.3,0.3,0.3,1};
    colorFocused[] = {0.2,0.2,0.2,1};
    colorShadow[] = {0,0,0,1};
    colorBorder[] = {0,0,0,0};
    borderSize = 0;
    offsetX = 0;
    offsetY = 0;
    offsetPressedX = 0.001;
    offsetPressedY = 0.001;
    soundEnter[] = {"",0.1,1};
    soundPush[] = {"",0.1,1};
    soundClick[] = {"",0.1,1};
    soundEscape[] = {"",0.1,1};
    text = "";
    action = "";
    x = 0; y = 0; w = 0; h = 0;
};

class A3E_RscListbox
{
    type = 5;
    idc = -1;
    style = 0;
    shadow = 0;
    font = "PuristaLight";
    sizeEx = 0.028;
    rowHeight = 0.03;
    colorText[] = {1,1,1,1};
    colorBackground[] = {0.05,0.05,0.05,0.9};
    colorSelect[] = {1,1,1,1};
    colorSelect2[] = {1,1,1,1};
    colorSelectBackground[] = {0.2,0.5,0.2,0.7};
    colorSelectBackground2[] = {0.2,0.5,0.2,0.5};
    colorScrollbar[] = {1,1,1,0.3};
    colorDisabled[] = {0.5,0.5,0.5,1};
    period = 0;
    maxHistoryDelay = 1;
    autoScrollSpeed = -1;
    autoScrollDelay = 5;
    autoScrollRewind = 0;
    soundSelect[] = {"",0.1,1};
    x = 0; y = 0; w = 0; h = 0;
    class ListScrollBar
    {
        color[] = {1,1,1,0.6};
        colorActive[] = {1,1,1,1};
        colorDisabled[] = {1,1,1,0.3};
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
        shadow = 0;
        scrollSpeed = 0.06;
        width = 0;
        height = 0;
        autoScrollEnabled = 0;
        autoScrollSpeed = -1;
        autoScrollDelay = 5;
        autoScrollRewind = 0;
    };
};

class A3E_RscEdit
{
    type = 2;
    idc = -1;
    style = 0;
    shadow = 0;
    font = "PuristaLight";
    sizeEx = 0.028;
    colorText[] = {1,1,1,1};
    colorBackground[] = {0.12,0.12,0.12,1};
    colorSelection[] = {0.3,0.9,0.3,0.5};
    colorDisabled[] = {0.5,0.5,0.5,1};
    autocomplete = "";
    text = "";
    x = 0; y = 0; w = 0; h = 0;
};

class A3E_SpawnDialog
{
    idd = IDD_SPAWN_DIALOG;
    movingEnable = false;
    enableSimulation = true;
    onLoad = "uiNamespace setVariable ['A3E_SpawnDisplay', _this select 0]";

    class controlsBackground
    {
        class MainBG: A3E_RscText
        {
            x = "safezoneX";
            y = "safezoneY";
            w = "safezoneW";
            h = "safezoneH";
            colorBackground[] = {0.03, 0.03, 0.03, 0.97};
        };
        class TitleBar: A3E_RscText
        {
            x = "safezoneX";
            y = "safezoneY";
            w = "safezoneW";
            h = "safezoneY + 0.045 * safezoneH - safezoneY";
            colorBackground[] = {0.08, 0.25, 0.08, 1};
        };
        class TitleText: A3E_RscText
        {
            text = "ESCAPE - SPAWN SELECTION";
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.005 * safezoneH";
            w = "0.4 * safezoneW";
            h = "0.04 * safezoneH";
            font = "PuristaBold";
            sizeEx = "0.04 * safezoneH";
            shadow = 2;
        };
        class LeftPanelBG: A3E_RscText
        {
            x = "safezoneX + 0.005 * safezoneW";
            y = "safezoneY + 0.055 * safezoneH";
            w = "0.295 * safezoneW";
            h = "0.935 * safezoneH";
            colorBackground[] = {0.08, 0.08, 0.08, 0.85};
        };
        class BottomBarBG: A3E_RscText
        {
            x = "safezoneX + 0.31 * safezoneW";
            y = "safezoneY + 0.91 * safezoneH";
            w = "0.685 * safezoneW";
            h = "0.08 * safezoneH";
            colorBackground[] = {0.08, 0.08, 0.08, 0.85};
        };
    };

    class controls
    {
        // ==================== LEFT PANEL - GROUPS ====================

        class GroupHeader: A3E_RscText
        {
            text = "GROUPS";
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.06 * safezoneH";
            w = "0.28 * safezoneW";
            h = "0.03 * safezoneH";
            colorText[] = {0.3, 0.9, 0.3, 1};
            font = "PuristaBold";
            sizeEx = "0.032 * safezoneH";
        };

        class GroupList: A3E_RscListbox
        {
            idc = IDC_SPAWN_GROUPLIST;
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.095 * safezoneH";
            w = "0.28 * safezoneW";
            h = "0.48 * safezoneH";
            sizeEx = "0.025 * safezoneH";
            rowHeight = "0.028 * safezoneH";
        };

        class GroupNameInput: A3E_RscEdit
        {
            idc = IDC_SPAWN_GROUPINPUT;
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.59 * safezoneH";
            w = "0.28 * safezoneW";
            h = "0.032 * safezoneH";
            sizeEx = "0.024 * safezoneH";
        };

        class BtnCreateGroup: A3E_RscButton
        {
            idc = IDC_SPAWN_BTN_CREATE;
            text = "CREATE GROUP";
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.63 * safezoneH";
            w = "0.135 * safezoneW";
            h = "0.035 * safezoneH";
            colorBackground[] = {0.12, 0.35, 0.12, 1};
            colorBackgroundActive[] = {0.15, 0.5, 0.15, 1};
            sizeEx = "0.024 * safezoneH";
            onButtonClick = "call A3E_fnc_spawnUI_createGroup";
        };

        class BtnJoinGroup: A3E_RscButton
        {
            idc = IDC_SPAWN_BTN_JOIN;
            text = "JOIN GROUP";
            x = "safezoneX + 0.155 * safezoneW";
            y = "safezoneY + 0.63 * safezoneH";
            w = "0.135 * safezoneW";
            h = "0.035 * safezoneH";
            colorBackground[] = {0.12, 0.25, 0.45, 1};
            colorBackgroundActive[] = {0.15, 0.35, 0.6, 1};
            sizeEx = "0.024 * safezoneH";
            onButtonClick = "call A3E_fnc_spawnUI_joinGroup";
        };

        class BtnLeaveGroup: A3E_RscButton
        {
            idc = IDC_SPAWN_BTN_LEAVE;
            text = "LEAVE GROUP";
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.675 * safezoneH";
            w = "0.28 * safezoneW";
            h = "0.035 * safezoneH";
            colorBackground[] = {0.45, 0.12, 0.12, 1};
            colorBackgroundActive[] = {0.6, 0.15, 0.15, 1};
            sizeEx = "0.024 * safezoneH";
            onButtonClick = "call A3E_fnc_spawnUI_leaveGroup";
        };

        class PlayerInfo: A3E_RscStructuredText
        {
            idc = IDC_SPAWN_PLAYERINFO;
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.72 * safezoneH";
            w = "0.28 * safezoneW";
            h = "0.10 * safezoneH";
            size = "0.024 * safezoneH";
        };

        // ==================== RIGHT PANEL - MAP ====================

        class SpawnMap
        {
            idc = IDC_SPAWN_MAP;
            type = 101;
            style = 48;
            font = "PuristaMedium";
            sizeEx = 0.03;
            x = "safezoneX + 0.31 * safezoneW";
            y = "safezoneY + 0.055 * safezoneH";
            w = "0.685 * safezoneW";
            h = "0.845 * safezoneH";

            moveOnEdges = 1;
            shadow = 0;
            ptsPerSquareSea = 5;
            ptsPerSquareTxt = 3;
            ptsPerSquareCLn = 10;
            ptsPerSquareExp = 10;
            ptsPerSquareCost = 10;
            ptsPerSquareFor = 9;
            ptsPerSquareForEdge = 9;
            ptsPerSquareRoad = 6;
            ptsPerSquareObj = 9;
            showCountourInterval = 0;
            scaleMin = 0.001;
            scaleMax = 1;
            scaleDefault = 0.04;

            maxSatelliteAlpha = 0.85;
            alphaFadeStartScale = 0.35;
            alphaFadeEndScale = 0.4;
            fontLabel = "PuristaMedium";
            sizeExLabel = 0.03;
            fontGrid = "TahomaB";
            sizeExGrid = 0.02;
            fontUnits = "TahomaB";
            sizeExUnits = 0.03;
            fontNames = "PuristaMedium";
            sizeExNames = 0.04;
            fontInfo = "PuristaMedium";
            sizeExInfo = 0.03;
            fontLevel = "TahomaB";
            sizeExLevel = 0.02;
            text = "#(argb,8,8,3)color(1,1,1,1)";

            colorBackground[] = {0.969,0.957,0.949,1};
            colorOutside[] = {0,0,0,1};
            colorText[] = {0,0,0,1};
            colorSea[] = {0.467,0.631,0.851,0.5};
            colorForest[] = {0.624,0.78,0.388,0.5};
            colorForestBorder[] = {0,0,0,0};
            colorRocks[] = {0,0,0,0.3};
            colorRocksBorder[] = {0,0,0,0};
            colorLevels[] = {0.286,0.177,0.094,0.5};
            colorMainCountlines[] = {0.572,0.354,0.188,0.5};
            colorCountlines[] = {0.572,0.354,0.188,0.25};
            colorMainCountlinesWater[] = {0.491,0.577,0.702,0.6};
            colorCountlinesWater[] = {0.491,0.577,0.702,0.3};
            colorPowerLines[] = {0.1,0.1,0.1,1};
            colorRailWay[] = {0.8,0.2,0,1};
            colorNames[] = {0.1,0.1,0.1,0.9};
            colorInactive[] = {1,1,1,0.5};
            colorGrid[] = {0.1,0.1,0.1,0.6};
            colorGridMap[] = {0.1,0.1,0.1,0.6};
            colorTracks[] = {0.84,0.76,0.65,0.15};
            colorTracksFill[] = {0.84,0.76,0.65,1};
            colorRoads[] = {0.7,0.7,0.7,1};
            colorRoadsFill[] = {1,1,1,1};
            colorMainRoads[] = {0.9,0.5,0.3,1};
            colorMainRoadsFill[] = {1,0.6,0.4,1};

            class Legend
            {
                x = "safezoneX + 0.31 * safezoneW";
                y = "safezoneY + 0.85 * safezoneH";
                w = "0.03 * safezoneW";
                h = "0.04 * safezoneH";
                font = "PuristaMedium";
                sizeEx = 0.02;
                colorBackground[] = {1,1,1,0.5};
                color[] = {0,0,0,1};
            };
            class ActiveMarker
            {
                color[] = {0.3,0.1,0.9,1};
                size = 50;
            };
            class Command
            {
                color[] = {1,1,1,1};
                icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
                size = 18;
                importance = 1;
                coefMin = 1;
                coefMax = 1;
            };
            class Bush
            {
                color[] = {0.45,0.64,0.33,0.4};
                icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
                size = 14;
                importance = "0.2 * 14 * 0.05";
                coefMin = 0.25;
                coefMax = 4;
            };
            class Rock
            {
                color[] = {0.1,0.1,0.1,0.8};
                icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
                size = 12;
                importance = "0.5 * 12 * 0.05";
                coefMin = 0.25;
                coefMax = 4;
            };
            class SmallTree
            {
                color[] = {0.45,0.64,0.33,0.4};
                icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
                size = 12;
                importance = "0.6 * 12 * 0.05";
                coefMin = 0.25;
                coefMax = 4;
            };
            class Tree
            {
                color[] = {0.45,0.64,0.33,0.4};
                icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
                size = 12;
                importance = "0.9 * 16 * 0.05";
                coefMin = 0.25;
                coefMax = 4;
            };
            class Church
            {
                color[] = {1,1,1,1};
                icon = "\A3\ui_f\data\map\mapcontrol\church_ca.paa";
                size = 24;
                importance = 1;
                coefMin = 0.85;
                coefMax = 1;
            };
            class Lighthouse
            {
                color[] = {1,1,1,1};
                icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_ca.paa";
                size = 24;
                importance = 1;
                coefMin = 0.85;
                coefMax = 1;
            };
            class Quay
            {
                color[] = {1,1,1,1};
                icon = "\A3\ui_f\data\map\mapcontrol\quay_ca.paa";
                size = 24;
                importance = 1;
                coefMin = 0.85;
                coefMax = 1;
            };
            class Fuelstation
            {
                color[] = {1,1,1,1};
                icon = "\A3\ui_f\data\map\mapcontrol\fuelstation_ca.paa";
                size = 24;
                importance = 1;
                coefMin = 0.85;
                coefMax = 1;
            };
            class Hospital
            {
                color[] = {1,1,1,1};
                icon = "\A3\ui_f\data\map\mapcontrol\hospital_ca.paa";
                size = 24;
                importance = 1;
                coefMin = 0.85;
                coefMax = 1;
            };
            class Transmitter
            {
                color[] = {1,1,1,1};
                icon = "\A3\ui_f\data\map\mapcontrol\transmitter_ca.paa";
                size = 24;
                importance = 1;
                coefMin = 0.85;
                coefMax = 1;
            };
            class Stack
            {
                color[] = {0,0,0,1};
                icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
                size = 20;
                importance = 1;
                coefMin = 0.9;
                coefMax = 1;
            };
            class Ruin
            {
                color[] = {1,1,1,1};
                icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
                size = 16;
                importance = 1.2;
                coefMin = 1;
                coefMax = 1;
            };
            class Fortress
            {
                color[] = {0,0,0,1};
                icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
                size = 16;
                importance = 1.5;
                coefMin = 0.9;
                coefMax = 1;
            };
            class Fountain
            {
                color[] = {0,0,0,1};
                icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
                size = 11;
                importance = 1;
                coefMin = 0.9;
                coefMax = 1;
            };
            class ViewTower
            {
                color[] = {0,0,0,1};
                icon = "\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
                size = 16;
                importance = 2.5;
                coefMin = 0.5;
                coefMax = 1;
            };
            class Waypoint
            {
                color[] = {0,0,0,1};
                icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
                size = 20;
                importance = 1;
                coefMin = 1;
                coefMax = 1;
            };
            class WaypointCompleted
            {
                color[] = {0,0,0,1};
                icon = "\A3\ui_f\data\map\mapcontrol\waypointcompleted_ca.paa";
                size = 20;
                importance = 1;
                coefMin = 1;
                coefMax = 1;
            };
        };

        // ==================== BOTTOM BAR ====================

        class CityNameText: A3E_RscText
        {
            idc = IDC_SPAWN_CITYNAME;
            text = "Select an option to begin your escape";
            x = "safezoneX + 0.32 * safezoneW";
            y = "safezoneY + 0.92 * safezoneH";
            w = "0.33 * safezoneW";
            h = "0.035 * safezoneH";
            colorText[] = {0.9, 0.9, 0.5, 1};
            sizeEx = "0.028 * safezoneH";
        };

        class BtnSpawnCity: A3E_RscButton
        {
            idc = IDC_SPAWN_BTN_CITY;
            text = "START NEW ESCAPE";
            x = "safezoneX + 0.67 * safezoneW";
            y = "safezoneY + 0.92 * safezoneH";
            w = "0.155 * safezoneW";
            h = "0.04 * safezoneH";
            colorBackground[] = {0.12, 0.35, 0.12, 1};
            colorBackgroundActive[] = {0.15, 0.5, 0.15, 1};
            sizeEx = "0.028 * safezoneH";
            onButtonClick = "call A3E_fnc_spawnUI_spawnCity";
        };

        class BtnSpawnGroup: A3E_RscButton
        {
            idc = IDC_SPAWN_BTN_GROUP;
            text = "SPAWN ON GROUP";
            x = "safezoneX + 0.835 * safezoneW";
            y = "safezoneY + 0.92 * safezoneH";
            w = "0.155 * safezoneW";
            h = "0.04 * safezoneH";
            colorBackground[] = {0.12, 0.25, 0.45, 1};
            colorBackgroundActive[] = {0.15, 0.35, 0.6, 1};
            sizeEx = "0.028 * safezoneH";
            onButtonClick = "call A3E_fnc_spawnUI_spawnOnGroup";
        };
    };
};
