# VSCode Config

---
> evondev theme config

## Installation

### Step 1: Install needed extensions

- [**Custom CSS and JS Loader**](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css)
- [**Evondev Dracula**](https://marketplace.visualstudio.com/items?itemName=evondev.dracula-high-contrast)
- [**Fix VSCode Checksums**](https://marketplace.visualstudio.com/items?itemName=lehni.vscode-fix-checksums)

### Step 2: Add the file path of "gradient.css" to "settings.json"

#### Open "settings.json" and add the file path of "gradient.css" like this:

```json
"vscode_custom_css.imports": ["file:///D:/vscode/gradient.css"],
```

### Step 3: Apply the "gradient.css" to VSCode and fix "Unsupported"

#### Run "Custom CSS and JS Loader" extension

```console
	1: Ctrl + Shift + P
	2: Type "Enable Custom CSS and JS"
	3: Hit enter and restart VSCode
```

#### Run "Fix VSCode Checksums" extension

```console
	1: Ctrl + Shift + P
	2: Type "Fix Checksums: Restore" -> Enter
	3: Type "Fix Checksums: Apply" -> Enter
```

#### Quick apply changes instead

```console
	1: Ctrl + Shift + P
	2: Type "Enable Custom CSS and JS"
	3: Ctrl + Shift + P
	4: Type "Fix Checksums: Apply" -> Enter
	5: Restart VSCode
```

### Step 4: Done!
---

## Extensions

### Personalization

- One Dark Pro (binaryify)
- Evondev Dracula (evondev)
- Material Icon Theme (Philipp Kief)

### Others

- Bookmarks (Alessandro Fragnani)
- Console Flash (NAPTheDevHcj)
- Import Cost (Wix)
- REST Client (Huachao Mao)

- Evondev Snippets (evondev)
- ES7+ React/Redux/React-Native snippets (dsznajder)
- Sublime Text Keymap

- Prettier
- ESLint (Microsoft)

- IntelliCode (Microsoft)
- Tailwind CSS IntelliSense
- PostCSS Language Support (csstools)
- PostCSS Intellisense and Highlighting (Vu Nguyen)

#### C++

- C/C++ (Microsoft)
- Better C++ Syntax (Jeff Hykin)
- CMake, CMake Tools (Microsoft)

#### Shader Editor

- Shader languages support for VS Code (slevesque)
- WebGL GLSL Editor (Rácz Zalán)
