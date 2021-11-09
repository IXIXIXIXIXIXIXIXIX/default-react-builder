# default-react-builder
A simple Bash tool which invokes create-react-app and installs some Prettier and Eslint tools along with my usual configs.

## Installation
Clone repo and copy contents into `~/tools/new-react-project`

## Usage
`~/tools/new-react-project/react-new.sh [NEW PROJECT NAME]` where `[NEW PROJECT NAME]` is the name you want to give to the new project. The script will create a new directory named the same as the project and install a new react app, Prettier and ESlint in it. It will also copy some config files for the two latter packages into the directory.

## Dependencies
In addition to those that create-react-app installs, this script also installs the following packages as dev dependencies:

    "eslint": "^7.32.0",
    "eslint-config-airbnb": "^18.2.1",
    "eslint-config-prettier": "^8.3.0",
    "eslint-plugin-import": "^2.25.2",
    "eslint-plugin-jsx-a11y": "^6.4.1",
    "eslint-plugin-react": "^7.26.1",
    "eslint-plugin-react-hooks": "^4.2.0",
    "prettier": "2.4.1"
