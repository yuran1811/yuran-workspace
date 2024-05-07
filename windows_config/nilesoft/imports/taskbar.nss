menu(type="taskbar" vis=key.shift() pos=0 title=app.name icon=\uE249)
{
	item(title="config" icon=\uE10A cmd='"@app.cfg"')
	item(title="manager" icon=\uE0F3 admin cmd='"@app.exe"')
	item(title="directory" icon=\uE0E8 cmd='"@app.dir"')
	item(title="version\t"+@app.ver vis=label col=1)
	item(title="docs" icon=\uE1C4 cmd='https://nilesoft.org/docs')
	item(title="donate" icon=\uE1A7 cmd='https://nilesoft.org/donate')
}
menu(where=@(this.count == 0 && isw11) type='taskbar' icon=icon.settings expanded=true)
{
	menu(title="Apps" icon=\uE254)
	{
		item(title='Paint' icon=\uE116 cmd='mspaint')
		item(title='Calc' icon=\ue1e7 cmd='calc.exe')
		item(title=@str.res('regedit.exe,-16') icon cmd='regedit.exe')
	}
	sep
	menu(title=title.windows icon=\uE1FB)
	{
		item(title=title.cascade_windows cmd=command.cascade_windows)
		item(title=title.Show_windows_stacked cmd=command.Show_windows_stacked)
		item(title=title.Show_windows_side_by_side cmd=command.Show_windows_side_by_side)
		sep
		item(title=title.minimize_all_windows cmd=command.minimize_all_windows)
		item(title=title.restore_all_windows cmd=command.restore_all_windows)
	}
	item(vis=@key.shift() title=title.exit_explorer cmd=command.restart_explorer)
	item(title=title.desktop icon=icon.desktop cmd=command.toggle_desktop)
	item(title=title.task_manager icon=icon.task_manager sep="both" cmd='taskmgr.exe')
	item(title=title.settings icon=icon.settings(auto, @icon.color1) cmd='ms-settings:')
	item(title=title.taskbar_Settings icon=inherit cmd='ms-settings:taskbar')
}