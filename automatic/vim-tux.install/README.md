# ![Vim Tux](https://cdn.jsdelivr.net/gh/pauby/ChocoPackages@c134fd7/icons/vim-tux.svg "Vim Logo") [Vim Tux (Install)](https://chocolatey.org/packages/vim-tux.install)

A highly configurable text editor for efficiently creating and changing any kind of text (tux build).

Vanilla build of vim, compiled with all features enabled. 'Right click &gt; edit with vim' support included. Vim and gVim launchers are added to PATH.

## Package Parameters

The following package parameters can be set:

* `/InstallDir`       - Install to a specific location.
* `/InstallPopUp`     - Install into the context menu "Edit with gVim", powered by `GVimExt.dll`.
* `/RestartExplorer`  - Kill explorer.exe before each update to free up the in-use `GVimExt.dll`.
* `/NoCreateBatFiles` - Do not create batch files in `C:\Windows` (vim.bat, vimdiff.bat, etc).

For example `choco install vim-tux.portable --package-parameters="'/InstallDir=C:\MyFolder /InstallPopUp /RestartExplorer'"`

Please visit the [official site](https://tuxproject.de/projects/vim/), [docs](https://www.vim.org/docs.php) and [mailing list](http://www.vim.org/maillist.php) for more information.
Build provided by TuxProject.de - consider donating to help support their server costs.

## Notes

* The [Vim mailing list Url](http://www.vim.org/maillist.php) causes Package Validation to regularly fail, so it was removed from the metadata.
* This is an automatically updated package. If you find it is out of date by more than a week, please contact the maintainer(s), to let the know the package is no longer updating, using:
    * The 'Contact Maintainers' link on the package page, or
    * The 'Package Source' link on the package page and raising an issue.

### Antivirus Detections

* The x86 edition was removed from the package due to consistently high AV detections stopping the package from being approved.
* The embedded binaries are regularly flagged by antivirus engines. Please see these GitHub issues for information: [1](https://github.com/vim/vim/issues/2933), [2](https://github.com/vim/vim/issues/2961), [3](https://github.com/vim/vim-win32-installer/issues/36), [4](https://github.com/vim/vim-win32-installer/issues/53) and [5](https://github.com/vim/vim/issues/2895). If in doubt, do not install the package.
* If you find missing versions, please check the 'Version History' section on the package page. If the versions are rejected it is likely due to very high AV counts.
