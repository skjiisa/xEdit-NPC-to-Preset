{
  NPC to preset
  By Isvvc
  Uses mteFunctions
}

unit UserScript;

uses 'lib\mteFunctions';

function Process(e: IInterface): integer;
var
	f, rec, race, presets, newPreset: IInterface;
begin
	f := FileByName('NPC Presets.esp');
	if not Assigned(f) then begin
		f := AddNewFileName('NPC Presets.esp');
		SetAuthor(f, 'Isvvc');
	end;

	AddRequiredElementMasters(e, f, false);
	rec := wbCopyElementToFile(e, f, false, true);
	SetElementEditValues(rec, 'ACBS\Flags\Is CharGen Face Preset', '1');
	
	race := LinksTo(ElementByPath(e, 'RNAM'));
	if OverrideCount(race) > 0 then
		race := OverrideByIndex(race, Pred(OverrideCount(race)));
	
	AddRequiredElementMasters(race, f, false);
	race := wbCopyElementToFile(race, f, false, true);
	
	if geev(rec, 'ACBS\Flags\Female') = '1' then
		presets := ElementByPath(race, 'Head Data\Female Head Data\Race Presets Female')
	else
		presets := ElementByPath(race, 'Head Data\Male Head Data\Race Presets Male');
	newPreset := ElementAssign(presets, 0, nil, false);
	SetNativeValue(newPreset, FixedFormID(rec));
end;

end.