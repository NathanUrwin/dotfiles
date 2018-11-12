# Projects

The list of all my past, present, and future projects.

## Table of Contents

- [Table of Contents](#table-of-contents)
- [Dashboard](#dashboard)
- [Past](#past)
- [Present](#present)
- [Future](#future)
- [Snippets](#snippets)

## [Dashboard](https://techissue.pgs.com/secure/Dashboard.jspa)

### [Ansible: Ansible Automation and Deployment](https://techissue.pgs.com/browse/CIKILDE-135)

- [ ] [Setup and automate CI developer environment on macos](https://techissue.pgs.com/browse/CIKILDE-175) (-> Automate the CI developer environment setup on macOS (and Windows 10?))*
  - [x] **Vagrantfile** and **bin/setup** proof-of-concept prototype
  - [ ] **dev.yml** playbook for development environment setup
    - [x] Target [macOS Mojave (Darwin)](https://www.apple.com/macos/mojave/)
      - Pre-installed [Pulse Secure](https://www.pulsesecure.net/)
      - Pre-installed [Microsoft Office](https://www.office.com/)
        - [Microsoft Excel](https://products.office.com/en-us/excel)
        - [Microsoft Lync](https://products.office.com/en-us/previous-versions/microsoft-lync-2013)
        - [Microsoft OneNote](https://products.office.com/en-us/onenote/digital-note-taking-app)
        - [Microsoft Outlook](https://products.office.com/en-us/outlook/email-and-calendar-software-microsoft-outlook)
        - [Microsoft PowerPoint](https://products.office.com/en-us/powerpoint)
        - [Microsoft Word](https://products.office.com/en-us/word)
      - Require [Docker](https://www.docker.com/)
      - Require [runMacOSinVirtualBox](https://github.com/AlexanderWillner/runMacOSinVirtualBox) (Contributors)
    - [x] Install [OSX Command Line Tools](https://github.com/elliotweiser/ansible-osx-command-line-tools)
    - [x] Install [Homebrew](https://brew.sh/)
    - [x] Install [VirtualBox](https://www.virtualbox.org/)
    - [x] Install [Vagrant](https://www.vagrantup.com/)
    - [ ] TODO: Install [Anaconda](https://www.anaconda.com/) -> [Python](https://www.python.org/)
      - Insert **pgs-root-ca.pem** into Python Venv OpenSSL CA Bundle
      - Insert **pgs-root-ca.pem** into Python Venv Certifi CA Bundle
    - [ ] TODO: Install [NVM](https://github.com/creationix/nvm) -> [NPM](https://www.npmjs.com/)
    - [ ] TODO: Install [Jabba](https://github.com/shyiko/jabba) ->  [Java](https://www.java.com/en/)
    - [ ] TODO: Install [Liferay](https://www.liferay.com/) with [Apache Tomcat](http://tomcat.apache.org/)
    - [ ] TODO: Install [Slack](https://slack.com/)
    - [ ] TODO: Install [Google Chrome](https://www.google.com/chrome/)
    - [ ] TODO: Install [Mozilla Firefox](https://www.mozilla.org/en-US/firefox/)
    - [ ] TODO: Install [Opera Browser](https://www.opera.com/)
    - [ ] TODO: Install [Zoom.us](https://zoom.us/)
    - [ ] TODO: Install [Eclipse IDE](https://www.eclipse.org/ide/)
    - [ ] TODO: Install [MySQL Workbench](https://www.mysql.com/products/workbench/)
    - [ ] Install [FastX](https://www.starnet.com/fastx/)?
    - [ ] Install [KeePassX](https://www.keepassx.org/)?
    - [ ] Install [LibreOffice](https://www.libreoffice.org/)?
    - [ ] Install [GIMP](https://www.gimp.org/)?
    - [ ] Setup **~/.bash_profile**, etc ([dotfiles](https://lgitlab.lon.compute.pgs.com/nathanurwin/dotfiles))?
    - [ ] Prompt for IDE to install ? (i.e. [Visual Studio Code](https://code.visualstudio.com/), [Sublime Text](https://www.sublimetext.com/), etc?)
      - Install plugins ([awesome linters](https://github.com/caramelomartins/awesome-linters))
        - [.editorconfig](https://editorconfig.org/)
        - [Shellcheck](https://www.shellcheck.net/)
        - [Pylint](https://www.pylint.org/), [flake8](https://github.com/PyCQA/flake8), [black](https://github.com/ambv/black)
        - [Hadolint](http://hadolint.lukasmartinelli.ch/)
        - [Markdownlint](https://github.com/markdownlint/markdownlint)
        - [Ansible-linter](https://github.com/ansible/ansible-lint)
    - [ ] Target [Windows 10 (NT)](https://www.microsoft.com/en-us/windows/get-windows-10)?
  - [x] **site.yml** playbook for production server deployment
    - [x] Target [CentOS 7](https://www.centos.org/)
    - [x] Include GPFS, Luster, PANFS playbook/roles
    - [x] Include [IRIS Back]() playbook/role
    - [x] Include [IRIS Front]() playbook/role
    - [x] Include [Kilde Cron]() playbook/role
    - [x] Include [SDM]() playbook/role
    - [x] Include [SDM Scripts]() playbook/role
    - [x] Include [SpDird]() playbook/role
    - [x] Include [Stern]() playbook/role
    - [x] Include [Wharf]() playbook/role
    - [ ] TODO: Include [Stern GeoNet]() playbook/role (`stern-geonet.yml`?)
    - [ ] Target [Debian 9](https://www.debian.org/)? [Ubuntu 18](https://www.ubuntu.com/)?
- [ ] [Integrate Vagrant virtual machines for production server testing](https://techissue.pgs.com/browse/CIKILDE-176) (-> Integrate Vagrant virtual machines for local functional testing)*
  - [ ] Add [pytest](https://docs.pytest.org/en/latest/), [molecule](https://github.com/ansible/molecule), [testinfra](https://github.com/philpep/testinfra), [tox](https://github.com/tox-dev/tox) tests
  - [ ] **src.yml** playbook for installing codebases
  - [ ] **vm.yml** playbook for virtual machine setup
- [ ] Add user and developer documentation; Comment code

### [SDM Tools: Python interface for SDM](https://techissue.pgs.com/browse/CIKILDE-136)

- [x] [Refactoring code base to be pylint and flake-8 compliant.](https://techissue.pgs.com/browse/CIKILDE-168) (-> Refactor codebase to be pylint and flake8 compliant)*
- [ ] [Write Failing unit tests for every module and class for test-driven development](https://techissue.pgs.com/browse/CIKILDE-169) (-> Write failing tests for test-driven development)*
- [ ] [Write Passing tests with at least 70% code coverage](https://techissue.pgs.com/browse/CIKILDE-204) (-> Write passing tests with 70% code coverage goal)*
- [ ] Integrate (Evaluate?) code quality and static code analysis tools
- [ ] Add user and developer documentation; Comment code

## Past

- [nathanurwin/liferay-dev](https://lgitlab.lon.compute.pgs.com/nathanurwin/liferay-dev) -> TODO: Add to `louis/ansible` as playbook/role

## Present

- [louis/ansible](https://lgitlab.lon.compute.pgs.com/louis/ansible/tree/nathan) (-> ci/devops?)
- [louis/sdmPythonWrapper](https://lgitlab.lon.compute.pgs.com/louis/sdmPythonWrapper/tree/nathan) (-> sdm/pysdm?)

## Future

- [nathanurwin/py2copy](https://lgitlab.lon.compute.pgs.com/nathanurwin/py2copy) (-> sdm/py2copy?)
- [wharf_group/wharf](https://lgitlab.lon.compute.pgs.com/wharf_group/wharf) (-> kilde/wharf?)
- [kevin/kildeCron](https://lgitlab.lon.compute.pgs.com/kevin/kildeCron) (-> kilde/cron?)
- [kevin/stern](https://lgitlab.lon.compute.pgs.com/kevin/stern) (-> kilde/stern?)
- [iris/iris](https://lgitlab.lon.compute.pgs.com/iris/iris) (-> iris/iris-backend?)
- [iris/iris-frontend](https://lgitlab.lon.compute.pgs.com/iris/iris-frontend)?
- sdm/pytsm?
- nathanurwin/cookiecutter-pgs?

## Snippets

- [container-setup.sh](https://lgitlab.lon.compute.pgs.com/snippets/3)
