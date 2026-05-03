!isNull cursorTarget
	&& {(cursorTarget distance player) <= 4}
	&& {
		private _return = false;
		{
			if(_x != cursorTarget && {_x getVariable ["AT_Revive_isUnconscious",false]} && {group _x == group player}) exitwith {
				_return = true;
			};
		} foreach (crew cursorTarget);
		_return;
	}
;
