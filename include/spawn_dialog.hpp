// Spawn Dialog - Wasteland-style spawn selection with embedded map and group management
// Forward declarations for engine UI classes
class RscText;
class RscStructuredText;
class RscButton;
class RscListbox;
class RscEdit;
class RscMapControl;

// Dialog and control IDs
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

class A3E_SpawnDialog
{
    idd = IDD_SPAWN_DIALOG;
    movingEnable = false;
    enableSimulation = true;
    onLoad = "uiNamespace setVariable ['A3E_SpawnDisplay', _this select 0]";

    class controlsBackground
    {
        // Full screen dark overlay
        class MainBG: RscText
        {
            idc = -1;
            x = "safezoneX";
            y = "safezoneY";
            w = "safezoneW";
            h = "safezoneH";
            colorBackground[] = {0.03, 0.03, 0.03, 0.97};
        };
        // Title bar
        class TitleBar: RscText
        {
            idc = -1;
            x = "safezoneX";
            y = "safezoneY";
            w = "safezoneW";
            h = "0.045 * safezoneH";
            colorBackground[] = {0.08, 0.25, 0.08, 1};
        };
        // Title text
        class TitleText: RscText
        {
            idc = -1;
            text = "ESCAPE - SPAWN SELECTION";
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.005 * safezoneH";
            w = "0.4 * safezoneW";
            h = "0.04 * safezoneH";
            colorText[] = {1, 1, 1, 1};
            colorBackground[] = {0, 0, 0, 0};
            font = "PuristaBold";
            sizeEx = "0.045 * safezoneH";
            shadow = 2;
        };
        // Left panel background
        class LeftPanelBG: RscText
        {
            idc = -1;
            x = "safezoneX + 0.005 * safezoneW";
            y = "safezoneY + 0.055 * safezoneH";
            w = "0.295 * safezoneW";
            h = "0.935 * safezoneH";
            colorBackground[] = {0.08, 0.08, 0.08, 0.85};
        };
        // Bottom bar background
        class BottomBarBG: RscText
        {
            idc = -1;
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

        // Group section header
        class GroupHeader: RscText
        {
            idc = -1;
            text = "GROUPS";
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.06 * safezoneH";
            w = "0.28 * safezoneW";
            h = "0.03 * safezoneH";
            colorText[] = {0.3, 0.9, 0.3, 1};
            colorBackground[] = {0, 0, 0, 0};
            font = "PuristaBold";
            sizeEx = "0.032 * safezoneH";
        };

        // Group listbox - shows all groups and members
        class GroupList: RscListbox
        {
            idc = IDC_SPAWN_GROUPLIST;
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.095 * safezoneH";
            w = "0.28 * safezoneW";
            h = "0.58 * safezoneH";
            colorBackground[] = {0.04, 0.04, 0.04, 0.95};
            colorText[] = {0.85, 0.85, 0.85, 1};
            colorSelect[] = {1, 1, 1, 1};
            colorSelect2[] = {1, 1, 1, 1};
            colorSelectBackground[] = {0.15, 0.45, 0.15, 0.7};
            colorSelectBackground2[] = {0.15, 0.45, 0.15, 0.5};
            font = "PuristaLight";
            sizeEx = "0.028 * safezoneH";
            rowHeight = "0.028 * safezoneH";
            shadow = 1;
        };

        // Group name input field
        class GroupNameInput: RscEdit
        {
            idc = IDC_SPAWN_GROUPINPUT;
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.69 * safezoneH";
            w = "0.28 * safezoneW";
            h = "0.032 * safezoneH";
            colorBackground[] = {0.12, 0.12, 0.12, 1};
            colorText[] = {1, 1, 1, 1};
            colorSelection[] = {0.3, 0.9, 0.3, 0.5};
            font = "PuristaLight";
            sizeEx = "0.026 * safezoneH";
            text = "";
            autocomplete = "";
            shadow = 0;
        };

        // Create group button
        class BtnCreateGroup: RscButton
        {
            idc = IDC_SPAWN_BTN_CREATE;
            text = "CREATE GROUP";
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.73 * safezoneH";
            w = "0.135 * safezoneW";
            h = "0.035 * safezoneH";
            colorBackground[] = {0.12, 0.35, 0.12, 1};
            colorBackgroundActive[] = {0.15, 0.5, 0.15, 1};
            colorFocused[] = {0.12, 0.35, 0.12, 1};
            font = "PuristaBold";
            sizeEx = "0.026 * safezoneH";
            onButtonClick = "call A3E_fnc_spawnUI_createGroup";
        };

        // Join group button
        class BtnJoinGroup: RscButton
        {
            idc = IDC_SPAWN_BTN_JOIN;
            text = "JOIN GROUP";
            x = "safezoneX + 0.155 * safezoneW";
            y = "safezoneY + 0.73 * safezoneH";
            w = "0.135 * safezoneW";
            h = "0.035 * safezoneH";
            colorBackground[] = {0.12, 0.25, 0.45, 1};
            colorBackgroundActive[] = {0.15, 0.35, 0.6, 1};
            colorFocused[] = {0.12, 0.25, 0.45, 1};
            font = "PuristaBold";
            sizeEx = "0.026 * safezoneH";
            onButtonClick = "call A3E_fnc_spawnUI_joinGroup";
        };

        // Leave group button
        class BtnLeaveGroup: RscButton
        {
            idc = IDC_SPAWN_BTN_LEAVE;
            text = "LEAVE GROUP";
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.775 * safezoneH";
            w = "0.28 * safezoneW";
            h = "0.035 * safezoneH";
            colorBackground[] = {0.45, 0.12, 0.12, 1};
            colorBackgroundActive[] = {0.6, 0.15, 0.15, 1};
            colorFocused[] = {0.45, 0.12, 0.12, 1};
            font = "PuristaBold";
            sizeEx = "0.026 * safezoneH";
            onButtonClick = "call A3E_fnc_spawnUI_leaveGroup";
        };

        // Player info text (your current group)
        class PlayerInfo: RscStructuredText
        {
            idc = IDC_SPAWN_PLAYERINFO;
            x = "safezoneX + 0.01 * safezoneW";
            y = "safezoneY + 0.82 * safezoneH";
            w = "0.28 * safezoneW";
            h = "0.16 * safezoneH";
            colorBackground[] = {0, 0, 0, 0};
            size = "0.026 * safezoneH";
            shadow = 1;
        };

        // ==================== RIGHT PANEL - MAP ====================

        // Embedded map control
        class SpawnMap: RscMapControl
        {
            idc = IDC_SPAWN_MAP;
            x = "safezoneX + 0.31 * safezoneW";
            y = "safezoneY + 0.055 * safezoneH";
            w = "0.685 * safezoneW";
            h = "0.845 * safezoneH";
            scaleMin = 0.001;
            scaleMax = 1;
            scaleDefault = 0.04;
        };

        // ==================== BOTTOM BAR ====================

        // Selected city display
        class CityNameText: RscText
        {
            idc = IDC_SPAWN_CITYNAME;
            text = "Click a city on the map to select your spawn";
            x = "safezoneX + 0.32 * safezoneW";
            y = "safezoneY + 0.92 * safezoneH";
            w = "0.33 * safezoneW";
            h = "0.035 * safezoneH";
            colorText[] = {0.9, 0.9, 0.5, 1};
            colorBackground[] = {0, 0, 0, 0};
            font = "PuristaMedium";
            sizeEx = "0.03 * safezoneH";
        };

        // Spawn in city button
        class BtnSpawnCity: RscButton
        {
            idc = IDC_SPAWN_BTN_CITY;
            text = "SPAWN IN CITY";
            x = "safezoneX + 0.67 * safezoneW";
            y = "safezoneY + 0.92 * safezoneH";
            w = "0.155 * safezoneW";
            h = "0.04 * safezoneH";
            colorBackground[] = {0.12, 0.35, 0.12, 1};
            colorBackgroundActive[] = {0.15, 0.5, 0.15, 1};
            colorFocused[] = {0.12, 0.35, 0.12, 1};
            colorDisabled[] = {0.4, 0.4, 0.4, 1};
            font = "PuristaBold";
            sizeEx = "0.03 * safezoneH";
            onButtonClick = "call A3E_fnc_spawnUI_spawnCity";
        };

        // Spawn on group button
        class BtnSpawnGroup: RscButton
        {
            idc = IDC_SPAWN_BTN_GROUP;
            text = "SPAWN ON GROUP";
            x = "safezoneX + 0.835 * safezoneW";
            y = "safezoneY + 0.92 * safezoneH";
            w = "0.155 * safezoneW";
            h = "0.04 * safezoneH";
            colorBackground[] = {0.12, 0.25, 0.45, 1};
            colorBackgroundActive[] = {0.15, 0.35, 0.6, 1};
            colorFocused[] = {0.12, 0.25, 0.45, 1};
            colorDisabled[] = {0.4, 0.4, 0.4, 1};
            font = "PuristaBold";
            sizeEx = "0.03 * safezoneH";
            onButtonClick = "call A3E_fnc_spawnUI_spawnOnGroup";
        };
    };
};
