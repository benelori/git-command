# git-command
Provides utilities to set up project specific git shortcuts/aliases

## How it works

![How it works](./docs/how_it_works.svg)

## Automatic installation

```shell
sudo ./install.sh
```

This operation will copy the commands from the ```bin``` directory to ```/usr/local/bin``` and give them execution rights.
See more below.

## Manual installation

The scripts in the bin directory are the ones that will be executed from the CLI.
Please copy the contents of the bin folder into ```/usr/local/bin```

```shell
sudo cp ./bin/* /usr/local/bin/
```

Please add execution rights to the newly copied files.
```shell
./exec_rights.sh
```

The command scripts use the controller script, which will delegate commands to specific scripts located in a .git_cmd directory.

## Usage

Place the contents of .git_cmd_sample_dir into a .git_cmd folder of your choosing
The commands within the sample folder will create bugfix and feature branches tracking origin/main on any git project that is in a sub-directory
of the location where .git_cmd was created. Feel free to modify these scripts to your project specific branching strategy.
