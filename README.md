Scripts to set up EasyBuild + Lmod environment for hands-on tutorial sessions.

* install required/useful OS packages on top of a minimal Linux environment
* install/configure Lmod
* install/configure EasyBuild
* kickstart by installing foss toolchain and a couple of software packages using EasyBuild

## Procedure

1. Download VirtualBox image to start from

  * http://virtualboxes.org/images/centos/
  * CentOS 6.6 minimal x86_64

2. Set root password

  * original: `reverse`
  * updated (using `passwd`): `root`

3. Set hostname

  ```shell
  $ hostname eb_lmod
  ```

4. Add `eb_lmod` user

  ```shell
  $ useradd eb_lmod
  $ passwd eb_lmod
  ```

  * password: `eb_lmod`

5. Add `eb_lmod` user to sudoers

  ```shell
  $ visudo
  # add line like:
  # eb_lmod ALL=(ALL) ALL
  ```

6. Log out & login in with `eb_lmod` account

7. Configure & install OS packages

  ```shell
  $ sudo yum -y install git
  $ git clone https://github.com/boegel/eb_lmod
  $ cd eb_lmod
  $ sudo ./setup_loginscreen.sh
  $ sudo ./install_pkgs_CentOS-6.6.sh
  ```

8. Install modules tool

Pick a modules tool (installing both is fine, Lmod will preferred):

  * environment modules

    ```shell
    $ ./install_environment-modules.sh
    ```

  * Lmod

    ```shell
    $ ./install_Lmod.sh
    ```

9. Install & configure EasyBuild

note: no `sudo` required anymore!

  ```shell
  $ ./install_EasyBuild.sh
  $ ./setup_bashrc.sh; source ~/.bashrc
  $ ./setup_vimrc.sh
  ```

10. Build and install `foss/2015a` toolchain

  ```shell
  $ eb foss-2015a.eb -dr
  ```

11. Install applications using `foss/2015a`

```shell
  $ eb WRF-3.6.1-foss-2015a-dmpar.eb -dr
  ```

12. Set up Lmod spider cache

# TODO
