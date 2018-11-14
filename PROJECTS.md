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

- [ ] [Setup and automate CI developer environment on macos](https://techissue.pgs.com/browse/CIKILDE-175) (-> Automate the CI developer environment setup on macOS)*
  - [x] **Vagrantfile** and **bin/setup** proof-of-concept prototype
  - [ ] **dev.yml** playbook for development environment setup
    - ~~Target [Windows 10 (NT)](https://www.microsoft.com/en-us/windows/get-windows-10)~~
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
    - [x] Install [Slack](https://slack.com/)
    - [x] Install [Google Chrome](https://www.google.com/chrome/)
    - [x] Install [Firefox](https://www.mozilla.org/en-US/firefox/)
    - [x] Install [Opera](https://www.opera.com/)
    - [x] Install [Zoom.us](https://zoom.us/) and [Zoom.us Outlook Plugin](https://support.zoom.us/hc/en-us/articles/200881399-Microsoft-Outlook-Plugin)
    - [x] Install [MySQL Workbench](https://www.mysql.com/products/workbench/)
    - [x] Install [KeePassX](https://www.keepassx.org/)
    - [x] Install [pyenv](https://github.com/pyenv/pyenv) and [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv)
      - [ ] TODO: Add to **~/.bash_profile**
      - [ ] TODO: Install Python 2.7.x
      - [ ] TODO: Install Python 3.4.x
      - [ ] TODO: Install Python 3.5.x
      - [ ] TODO: Install Python 3.6.x
      - [ ] TODO: Install Python 3.7.x
      - [ ] TODO: Insert **pgs-root-ca.pem** into Python Venv OpenSSL CA Bundle
      - [ ] TODO: Insert **pgs-root-ca.pem** into Python Venv Certifi CA Bundle
    - [x] Install [nvm](https://github.com/creationix/nvm)
      - [ ] TODO: Add to **~/.bash_profile**
      - [ ] TODO: Install Node.js 4.x.x (Argon)
      - [ ] TODO: Install Node.js 6.x.x (Boron)
      - [ ] TODO: Install Node.js 8.x.x (Carbon)
      - [ ] TODO: Install Node.js 10.x.x (Dubnium)
    - [ ] TODO: Install [jabba](https://github.com/shyiko/jabba)
    - [ ] TODO: Install [Liferay](https://www.liferay.com/) (with [Apache Tomcat](http://tomcat.apache.org/))
    - [ ] TODO: Install [Eclipse IDE](https://www.eclipse.org/ide/) (with [Liferay IDE](https://dev.liferay.com/de/develop/tutorials/-/knowledge_base/7-0/installing-liferay-ide))
    - [ ] TODO: Install [FastX](https://www.starnet.com/fastx/)
    - [x] Verify VirtualBox install
    - [x] Verify Vagrant install
    - [ ] TODO: Verify Slack install
    - [ ] TODO: Verify Google Chrome install
    - [ ] TODO: Verify Firefox install
    - [ ] TODO: Verify Opera install
    - [ ] TODO: Verfy Zoom.us and Zoom.us Outlook Plugin installs
    - [ ] TODO: Verify MySQL Workbench install
    - [ ] TODO: Verify KeePassX install
    - [ ] TODO: Verify pyenv and pyenv-virtualenv installs
    - [ ] TODO: Verify nvm install
    - [ ] TODO: Verify jabba install
    - [ ] TODO: Verify Liferay install
    - [ ] TODO: Verify Eclipse IDE install
    - [ ] TODO: Verify FastX install
    - [ ] TODO: Prompt for IDE to install? (i.e. [Visual Studio Code](https://code.visualstudio.com/), [Sublime Text](https://www.sublimetext.com/), etc?)
      - TODO: Install plugins ([awesome linters](https://github.com/caramelomartins/awesome-linters))
        - [.editorconfig](https://editorconfig.org/)
        - [Shellcheck](https://www.shellcheck.net/)
        - [Pylint](https://www.pylint.org/), [flake8](https://github.com/PyCQA/flake8), [black](https://github.com/ambv/black)
        - [Hadolint](http://hadolint.lukasmartinelli.ch/)
        - [Markdownlint](https://github.com/markdownlint/markdownlint)
        - [Ansible-linter](https://github.com/ansible/ansible-lint)

  - [x] **site.yml** playbook for production server deployment
    - [ ] Target [Ubuntu 18](https://www.ubuntu.com/)
    - [x] Target [CentOS 7](https://www.centos.org/)
    - [x] Include GPFS, Luster, PANFS playbook/roles
    - [x] Include [IRIS Back](https://lgitlab.lon.compute.pgs.com/iris/iris) playbook/role
    - [x] Include [IRIS Front](https://lgitlab.lon.compute.pgs.com/iris/iris-frontend) playbook/role
    - [x] Include [Kilde Cron](https://lgitlab.lon.compute.pgs.com/kevin/kildeCron) playbook/role
    - [x] Include [SDM](https://lgitlab.lon.compute.pgs.com/sdm/libsdm) playbook/role
    - [x] Include [SDM Scripts](https://lgitlab.lon.compute.pgs.com/louis/sdmPythonWrapper) playbook/role
    - [x] Include [SpDird](https://lgitlab.lon.compute.pgs.com/louis/sdmPythonWrapper/tree/master/services/sdmCreateDir) playbook/role
    - [x] Include [Stern](https://lgitlab.lon.compute.pgs.com/kevin/stern) playbook/role
    - [x] Include [Wharf](https://lgitlab.lon.compute.pgs.com/wharf_group/wharf) playbook/role
    - [ ] TODO: Include [Stern GeoNet](https://lgitlab.lon.compute.pgs.com/kevin/stern/tree/master/pgs/geonet) playbook/role (`stern-geonet.yml`?)
    - [ ] TODO: Include Liferay playbook/role (`liferay.yml`?)
- [ ] [Integrate Vagrant virtual machines for production server testing](https://techissue.pgs.com/browse/CIKILDE-176) (-> Integrate Vagrant virtual machines for local functional testing)*
  - [ ] Add [pytest](https://docs.pytest.org/en/latest/), [molecule](https://github.com/ansible/molecule), [goss](https://github.com/aelsabbahy/goss), [tox](https://github.com/tox-dev/tox) tests
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
