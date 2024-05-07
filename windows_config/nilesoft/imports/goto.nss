menu(type='*' where=window.is_taskbar||sel.count mode=mode.multiple title=title.go_to sep="bottom" icon=\uE14A)
{
	menu(title='Folder' icon=\uE0D0)
	{
		item(title='Windows' icon=inherit cmd=sys.dir)
		item(title='System' icon=inherit cmd=sys.bin)
		item(title='Program Files' icon=inherit cmd=sys.prog)
		item(title='Program Files x86' icon=inherit cmd=sys.prog32)
		item(title='ProgramData' icon=inherit cmd=sys.programdata)
		item(title='Applications' icon=inherit cmd='shell:appsfolder')
		item(title='Users' icon=inherit cmd=sys.users)
		sep
		//item(title='@user.name@@@sys.name' vis=label)
		item(title='Desktop' icon=inherit cmd=user.desktop)
		item(title='Downloads' icon=inherit cmd=user.downloads)
		item(title='Pictures' icon=inherit cmd=user.pictures)
		item(title='Documents' icon=inherit cmd=user.documents)
		item(title='Startmenu' icon=inherit cmd=user.startmenu)
		item(title='Profile' icon=inherit cmd=user.dir)
		item(title='AppData' icon=inherit cmd=user.appdata)
		item(title='Temp' icon=inherit cmd=user.temp)
	}
	item(title=title.run icon=\uE14B cmd='shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}')
	item(title=title.control_panel sep="top" icon=\uE0F3 cmd='shell:::{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}')
	item(title='All CPanel Items' icon=\uE0F3 cmd='shell:::{ED7BA470-8E54-465E-825C-99712043E01C}')
	menu(where=sys.ver.major >= 10 title=title.settings icon=\uE0F3)
	{
		// https://docs.microsoft.com/en-us/windows/uwp/launch-resume/launch-settings-app
		item(title='system' icon=inherit cmd='ms-settings:')
		item(title='about' icon=inherit cmd='ms-settings:about')
		item(title='your-info' icon=inherit cmd='ms-settings:yourinfo')
		item(title='system-info' icon=inherit cmd-line='/K systeminfo')
		item(title='search' cmd='search-ms:' icon=inherit)
		item(title='usb' icon=inherit cmd='ms-settings:usb')
		item(title='windows-update' icon=inherit cmd='ms-settings:windowsupdate')
		item(title='windows-defender' icon=inherit cmd='ms-settings:windowsdefender')
		menu(title='apps' icon=inherit)
		{
			item(title='apps-features' icon=inherit cmd='ms-settings:appsfeatures')
			item(title='default-apps' icon=inherit cmd='ms-settings:defaultapps')
			item(title='optional-features' icon=inherit cmd='ms-settings:optionalfeatures')
			item(title='startup' icon=inherit cmd='ms-settings:startupapps')
		}
		menu(title='personalization' icon=inherit)
		{
			item(title='personalization' icon=inherit cmd='ms-settings:personalization')
			item(title='lockscreen' icon=inherit cmd='ms-settings:lockscreen')
			item(title='background' icon=inherit cmd='ms-settings:personalization-background')
			item(title='colors' icon=inherit cmd='ms-settings:colors')
			item(title='themes' icon=inherit cmd='ms-settings:themes')
			item(title='start' icon=inherit cmd='ms-settings:personalization-start')
			item(title='taskbar' icon=inherit cmd='ms-settings:taskbar')
		}
		menu(title='network' icon=inherit)
		{
			item(title='status' icon=inherit cmd='ms-settings:network-status')
			item(title='ethernet' icon=inherit cmd='ms-settings:network-ethernet')
			item(title='connections' icon=inherit cmd='shell:::{7007ACC7-3202-11D1-AAD2-00805FC1270E}')
		}
	}
}