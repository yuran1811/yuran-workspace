settings
{
	priority = 1
	showdelay = 120

	modify.remove.duplicate = 1
	exclude.where = !process.is_explorer

	tip
	{
		enabled = true
		opacity = 100
		width = 400
		radius = 1
		time = 1.25
		padding = [10,10]
	}
}

import 'imports/theme.nss'
import 'imports/images.nss'
import 'imports/modify.nss'

import 'imports/static.nss'
item(where=this.title.length > 25 menu=title.more_options)

menu(mode="multiple" title="Pin/Unpin" image=icon.pin) {}
menu(mode="multiple" title=title.more_options image=icon.more_options) {}

import 'imports/favorites.nss'
import 'imports/file-manage.nss'
import 'imports/goto.nss'
import 'imports/taskbar.nss'
import 'imports/terminal.nss'
import 'imports/develop.nss'

item(title=title.task_manager icon=icon.task_manager sep="both" cmd='taskmgr.exe')
