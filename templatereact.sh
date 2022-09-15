#! usr/bin/bash
cd ..
echo "enter the name of the projec you want to create"
read _project
mkdir $_project
cd $_project
echo "give the node project name"
read _project2
npx create-react-app $_project2 --template cra-template-pwa --use-npm
cd $_project2
npm install
npm install -D rimraf eslint prettier babel-eslint eslint-plugin-react eslint-plugin-jsx-a11y eslint-plugin-jsx-a11y eslint-plugin-import eslint-config-prettier eslint-config-airbnb
echo > .prettiersrc.json
echo '
{
  "trailingComma": "es5",
  "tabWidth": 4,
  "semi": false,
  "singleQuote": true,
  "arrowParens": "avoid"
}
' > .prettiersrc.json

echo '{
  "extends": ["airbnb", "prettier"],
  "env": {
    "browser": true
  },
  "parser": "babel-eslint",
  "rules": {
    "no-plusplus": [0],
    "react/jsx-filename-extension": [1, { "extensions": [".js", ".jsx"] }],
    "react/prop-types": [0],
    "react/jsx-props-no-spreading": [0],
    "import/prefer-default-export": [0],
    "react/no-array-index-key": [0],
    "arrow-body-style": [0],
     "no-console": [0], 
     "prefer-arrow-callback": [0]

  }
}' > .eslintsrc

echo ' "lint": "eslint src/**/*.jsx",
  "format": "prettier --write src/**/*.jsx",
  "format:lint": "npm run format && npm run lint",
  "clear": "rimraf dist .parcel-cache"      
  
  
  do add this in every service worker file as eslint wont work on this /* eslint-disable */
  
  ' > addsdscript.txt

git init
git add .
git commit -m "first commit of the project"

start chrome 'www.github.com'





