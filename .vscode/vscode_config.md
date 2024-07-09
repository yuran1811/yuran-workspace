# VSCode Config

---

## evondev theme config

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

### AI

- Github Copilot, Github Copilot Chat (GitHub)
- IntelliCode (Microsoft)

### Personalization

- One Dark Pro (binaryify)
- Material Icon Theme (Philipp Kief)
- Evondev Dracula (evondev) + Custom CSS and JS Loader (be5invis)

### Others

- Bookmarks (Alessandro Fragnani)
- Smart Clicks (Anthony Fu)
- Sublime Text Keymap (Microsoft)
- Todo Tree (Gruntfuggly)

- Better Comments (Aaron Bond)
- Document This (oouo-diogo-perdigao)

- Docker (Microsoft)

#### Web Development

- es6-string-html (Tobermory)
- ES7+ React/Redux/React-Native snippets (dsznajder)
- Evondev Snippets (evondev)

- ESLint (Microsoft)
- Prettier (Prettier)

- Console Flash (NAPTheDevHcj)
- Console Ninja (Wallaby.js)

- Color Highlight (Sergii N)
- Dotenv Official + Vault (Dotenv)
- Import Cost (Wix)
- REST Client (Huachao Mao) / Thunder Client (Thunder Client)

- Tailwind CSS IntelliSense (Tailwind Labs)
- PostCSS Language Support (csstools)
- PostCSS Intellisense and Highlighting (Vu Nguyen)

#### Mobile Development (Flutter and React Native)

- Dart (Dart Code)
- Flutter (Dart Code) + Flutter Widget Snippets (Alexis Villegas Torres)
- Stylelint (Stylelint)

#### C++

- C/C++ (Microsoft)
- Better C++ Syntax (Jeff Hykin)
- CMake, CMake Tools (Microsoft)

#### Python

- Python (Microsoft)
- Pylance (Microsoft)
- Black Formatter (Microsoft)
- Jupyter (Microsoft)

#### Rust

- rust-analyzer (The Rust Programming Language)
- Even Better TOML (tamasfe)

#### Git & Github

- GitHub Codespaces (GitHub)
- GitHub Pull Requests (GitHub)
- GitLens (GitKraken)

#### Database

- Prisma (Prisma)
- GraphQL: Language Feature Support + Syntax Highlighting (GraphQL Foundation)

#### Shader Editor

- Shader languages support for VS Code (slevesque)
- WebGL GLSL Editor (Rácz Zalán)
