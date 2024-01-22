menu(type='*' where=(sel.count or wnd.is_edit) title=title.terminal icon=icon.run_with_powershell)
{
	var{tip_run_admin=["\xE1A7 Press SHIFT key to run " + this.title + " as administrator", tip.warning, 1.0]}
	item(title=title.windows_powershell admin=@key.shift() tip=tip_run_admin icon cmd='powershell.exe' args='-noexit -command Set-Location -Path "@sel.dir\."')
	item(title=title.command_prompt tip=tip_run_admin admin=key.shift() icon cmd='cmd.exe' args='/K TITLE Command Prompt &ver& PUSHD "@sel.dir"')
	item(where=sys.ver.major >= 10 title=title.Windows_Terminal tip=tip_run_admin admin=key.shift() icon='@package.path("WindowsTerminal")\WindowsTerminal.exe' cmd='wt.exe' arg='-d "@sel.path\."')
}