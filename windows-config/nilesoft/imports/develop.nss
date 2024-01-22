menu(mode="multiple" title='&Develop' sep=sep.bottom icon=\uE26E)
{
	menu(mode="single" title='editors' icon=\uE17A)
	{
		item(type='file' mode="single" title='Notepad' icon cmd='@sys.bin\notepad.exe' args='"@sel.path"')
	}
	menu(mode="multiple" title='docker' icon=\uE143)
	{
		item(title='running ctainers' cmd-line='docker ps' icon=\uE15C)
		item(title='running ctainers with cpu/mem' cmd-line='docker ps' icon=\uE15C)
		item(title='all ctainers' cmd-line='docker ps -a' icon=\uE15D)
		item(title='all networks' cmd-line='docker network ls')
		sep
		item(title='load images' cmd-line='docker images' icon=\uE169)
		item(title='history of image' cmd-line='docker history' icon=\uE043)
		sep
		item(title='build all' cmd-line='docker build .' icon=\uE231)
		sep
		item(title='prune' cmd-line='docker system prune' icon=\uE181)
		item(title='prune -a' cmd-line='docker system prune -a' icon=\uE182)
		sep
		menu(mode="multiple" sep="both" title='publish' icon=\ue11f)
		{
			var { publish='dotnet publish -r win-x64 -c release --output publish /*/p:CopyOutputSymbolsToPublishDirectory=false*/' }
			item(title='publish sinale file' sep="after" cmd-line='/K @publish --no-self-contained /p:PublishSingleFile=true')
			item(title='framework-dependent deployment' cmd-line='/K @publish')
			item(title='framework-dependent executable' cmd-line='/K @publish --self-contained false')
			item(title='self-contained deployment' cmd-line='/K @publish --self-contained true')
			item(title='single-file' cmd-line='/K @publish /p:PublishSingleFile=true /p:PublishTrimmed=false')
			item(title='single-file-trimmed' cmd-line='/K @publish /p:PublishSingleFile=true /p:PublishTrimmed=true')
		}
		sep
		item(title='help' icon=\uE136 cmd-line='/k dotnet -h')
		item(title='version' cmd-line='/k dotnet --info')
		sep
		item(title='login' cmd-line='docker login' icon=\uE105)
	}
}