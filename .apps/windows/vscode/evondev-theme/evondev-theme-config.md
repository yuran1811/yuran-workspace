# evondev theme config

## Step 1: Install needed extensions

- [**Custom CSS and JS Loader**](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css)
- [**Evondev Dracula**](https://marketplace.visualstudio.com/items?itemName=evondev.dracula-high-contrast)
- [**Fix VSCode Checksums**](https://marketplace.visualstudio.com/items?itemName=lehni.vscode-fix-checksums)

## Step 2: Add the file path of "gradient.css" to "settings.json"

### Open "settings.json" and add the file path of "gradient.css" like this:

```json
"vscode_custom_css.imports": ["file:///D:/vscode/gradient.css"],
```

## Step 3: Apply the "gradient.css" to VSCode and fix "Unsupported"

### Run "Custom CSS and JS Loader" extension

```console
	1: Ctrl + Shift + P
	2: Type "Enable Custom CSS and JS"
	3: Hit enter and restart VSCode
```

### Run "Fix VSCode Checksums" extension

```console
	1: Ctrl + Shift + P
	2: Type "Fix Checksums: Restore" -> Enter
	3: Type "Fix Checksums: Apply" -> Enter
```

### Quick apply changes instead

```console
	1: Ctrl + Shift + P
	2: Type "Enable Custom CSS and JS"
	3: Ctrl + Shift + P
	4: Type "Fix Checksums: Apply" -> Enter
	5: Restart VSCode
```

## Step 4: Done!
