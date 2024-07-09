menu(type='*' title='Favorites' sep='top' icon=\uE0C8)
{
    menu(title='Apps' icon=\uE142)
    {
        item(title='FLStudio' cmd=path.combine('D:','Program','FLStudio','FLStudio 20.9.2.2963 (x64)','FL Studio.exe') icon=icon.flstudio)
        item(title='Light Bulb' cmd=path.combine('D:','Program','light-bulb','LightBulb.exe') icon=\uE157)
        item(title='Everything' cmd=path.combine('D:','Program','Everything-1.4.1.1024.x64','Everything.exe') icon=\uE187)
        item(title='Core Temp' cmd=path.combine('D:','Program','Core Temp','Core Temp.exe') icon=icon.core_temp)
        item(title='CPU Z' cmd=path.combine('D:','Program','cpu-z_2.09-msi-en','cpuz_x64.exe') icon=\uE1E2)
    }
    menu(title='Dirs' icon=\uE019)
    {
        item(title='Home' cmd=user.directory icon=\uE0FB)
        item(title='Downloads' cmd=user.downloads icon=\uE0BC)
        item(title='Pictures' cmd=user.pictures icon=\uE14F)
        sep
        item(title='OneDrive' cmd=path.combine('@user.home','OneDrive') icon=\uE09C)
        item(title='GDrive' cmd=path.combine('D:','GDrive') icon=icon.gdrive)
        sep
        item(title='YProcess' cmd=path.combine('D:','yuran','process') icon=\uE188)
        item(title='YProgram' cmd=path.combine('D:','Program') icon=\uE0F9)
    }
    menu(title='Links' icon=\uE14B)
    {
        item(title="Facebook" cmd='https://www.facebook.com/YuranLegends' icon=\uE244)
        item(title="Instagram" cmd='https://www.instagram.com/_yuranlegends_' icon=\uE22D)
        item(title="Youtube" cmd='https://www.youtube.com/channel/UCLXNBb-jZRS_3o_itGGrGRA?view_as=subscriber' icon=\uE248)
        item(title="Linkedin" cmd='https://www.linkedin.com/in/yuran-legends-6252b6222' icon=\uE240)
        item(title="Github" cmd='https://github.com//yuran1811' icon=\uE22C)
        sep
        item(title="Yuran Blog" cmd='https://yuran1811-blog.vercel.app' icon=\uE15F)
    }
}