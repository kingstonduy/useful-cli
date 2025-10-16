create:
	@if [ -z "$(name)" ]; then \
		echo "❌ Please provide a project name. Usage: make create name=my-app"; \
		exit 1; \
	fi
	npm create vite@latest $(name) --yes -- --template react --no-rolldown
	cd $(name) && npm install \
	&& npm install -D tailwindcss postcss autoprefixer \
	&& npm install tailwindcss @tailwindcss/vite \
	&& echo 'import { defineConfig } from "vite";\nimport react from "@vitejs/plugin-react";\nimport tailwindcss from "@tailwindcss/vite";\n\n// https://vite.dev/config/\nexport default defineConfig({\n    plugins: [\n        react(),\n        tailwindcss(),\n    ]\n});' > vite.config.js \
	&& echo '@import "tailwindcss";' > src/index.css \
	&& echo '<!DOCTYPE html>\n<html lang="en">\n    <head>\n        <meta charset="UTF-8" />\n        <link rel="icon" type="image/svg+xml" href="/vite.svg" />\n        <meta name="viewport" content="width=device-width, initial-scale=1.0" />\n        <link href="/src/index.css" rel="stylesheet" />\n        <title>my-project</title>\n    </head>\n    <body>\n        <div id="root"></div>\n        <script type="module" src="/src/main.jsx"></script>\n    </body>\n</html>' > index.html \
	&& echo '\nfunction App() {\n    return (\n        <>\n            <div className="min-h-screen flex flex-col items-center justify-center bg-gray-100">\n                <h1 className="text-4xl font-bold text-blue-600 mb-4">Hello, Vite + React + Tailwind CSS!</h1>\n                <p className="text-lg text-gray-700">This is a simple setup to get you started.</p>\n                <button className="mt-6 px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600 hover:cursor-pointer transition">Click Me</button>\n            </div>\n        </>\n    );\n}\n\nexport default App;' > src/App.jsx \
	&& rm -f src/App.css \
	&& npm run dev
