shell
{
	var
	{
		isw11=sys.is11
	}
	
	set
	{
		// theme.name = auto, classic, white, black, or modern
		theme
		{
			name="modern"

			// view = auto, compact, small, medium, large, wide
			view = view.medium

			// dark = true // or false

			background
			{
				// opacity=85
				// effect=1
			}

			image.align = 2 // 0 = checked, 1 = image, 2 = both
		}

		tip
		{
			enabled=1
			opacity=100
			width=400
			radius=1
			time=1.25
			padding=[10,10]
		}

		exclude.where = !process.is_explorer
		showdelay=120
	}

	images import 'imports/images.nss'

	static
	{	
		import 'imports/static.nss'
		item(where=this.title.length > 25 menu=title.more_options)
	}

	dynamic
	{
		menu(mode="multiple" title="Pin/Unpin" icon=icon.pin) { }
		menu(mode="multiple" title=title.more_options icon=icon.more_options) { }
		
		import 'imports/favorites.nss'
		import 'imports/file-manage.nss'
		import 'imports/goto.nss'
		import 'imports/taskbar.nss'
		import 'imports/terminal.nss'
		import 'imports/develop.nss'

		item(title=title.task_manager icon=icon.task_manager sep="both" cmd='taskmgr.exe')
	}
}