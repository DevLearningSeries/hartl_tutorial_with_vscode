# Ruby on Rails Hartl Tutorial configured for Visual Studio Code and a dev container
* [Ruby on Rails Tutorial Book](https://www.railstutorial.org/book)

*CAN IGNORE THE SECTION ON USING AWS' CLOUD IDE*

*PAGE 18 IS WHERE THE GOOD STUFF STARTS*

* This is a preconfigured environment to make getting started with Hartl easier.
* Use **[gitpod](https://www.gitpod.io/)** to get up and running immediately or locally using a devcontainer
* Works with Visual Studio Code, Docker and vscode dev containers. If using locally, will also need a git client.
## Getting started with Gitpod
* [Open With Gitpod](https://gitpod.io/#https://github.com/DevLearningSeries/hartl_tutorial_with_vscode)
## Getting started with Vscode devcontainers
* Need Docker installed locally
### Getting started
* Works best with Visual Studio Code
  * Install Visual Studio Code. https://code.visualstudio.com
* Install Docker Desktop for Mac OS. https://www.docker.com/products/docker-desktop 
* Fork the Ruby On Rails Tutorial. - https://github.com/DevLearningSeries/hartl_tutorial_with_vscode
* Clone onto your machine.
* Open the project with Visual Studio Code.
* Run the dev container. Click on *Reopen in Container*.
  * ![Open In Container](docs/images/open_in_container.png)
* Can also open the dev container in by pressing `command + shift + p` and selecting *Reopen in Container*.
  * ![Reopen in Container](docs/images/reopen_in_container.png)
* Wait for container to build.
* Terminal prompt will show when ready.
* Check rails version `rails -v`

## Creating your first rails app
* Create a new rails app. `rails new hello_app`
* *CD* into *hello_app*
* Run `rails server`
* Will be able to see the page at http://localhost:3000/ - Ports are automatically forwarded to local environment.

*Ready for Ruby on Rails Tutorial.*

## Configuration for devcontainer
* Rails
* Postgres
* Nodejs/yarn
* Heroku CLI
* Git
* Developer gems for Ruby installed
  * RuboCop
  * Solargraph
* Visual Studio Code Extensions
  * Name: Auto Add Brackets in String Interpolation
  * Name: Code Spell Checker
  * Name: docs-yaml
  * Name: EditorConfig for VS Code
  * Name: ESLint
  * Name: GitHub Pull Requests and Issues
  * Name: gitignore
  * Name: GitLens — Git supercharged
  * Name: Path Intellisense
  * Name: PostgreSQL
  * Name: Prettier - Code formatter
  * Name: Rails DB Schema
  * Name: Rails Routes
  * Name: Ruby
  * Name: Solargraph
  * Name: Ruby Syntax Replacer
  * Name: ruby-linter
  * Name: ruby-rubocop
  * Name: ruby-symbols
  * Name: SQLTools
  * Name: SQLTools PostgreSQL/Redshift Driver
  * Name: Text Power Tools
  * Name: Visual Studio IntelliCode
  * Name: YAML
  * Name: DotENV
  * Name: endwise
  * Name: GitHub Repositories
  * Name: Material Product Icons
  * Name: Peacock
  * Name: Rails Syntax Highlighting
  * Name: VSCode Ruby
  * Name: vscode-icons  


