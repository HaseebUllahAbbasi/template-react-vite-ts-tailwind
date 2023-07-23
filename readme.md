# React Vite Project with TypeScript and Tailwind CSS

This is a starter template for a React project using Vite, TypeScript, and Tailwind CSS. It provides a fast and efficient development environment with hot module replacement, TypeScript type-checking, and the utility-first CSS framework, Tailwind CSS.

## Getting Started

To get started with this project, follow these steps:

1. Clone the repository to your local machine:

```bash
git clone --template https://github.com/HaseebUllahAbbasi/template-react-vite-ts-tailwind.git new-repo-name
cd new-repo-name 
```

2. Install the dependencies using npm:

```bash
npm install
```

3. Start the development server:

```bash
npm run dev

```

## Project Structure

The project structure is set up as follows:

```
your-repo-name/
  ├── src/
  │   ├── App.tsx
  │   ├── index.tsx
  │   └── styles.css
  ├── public/
  │   └── index.html
  ├── tailwind.config.js
  ├── package.json
  ├── tsconfig.json
  ├── .eslintrc.js
  └── .gitignore
```

## Available Scripts

In the project directory, you can run the following scripts:

  <b>npm run dev </b>: Starts the development server.
  
  <b> npm run build </b>: Builds the application for production.
  
  <b>npm run build:docker </b>: Serves the production build locally for testing.
  
## Additional Commands

- docker run -d id
- docker run -d name  
- docker run -p 5173:5173 -d frontend
