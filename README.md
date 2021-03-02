# ZSH Profile Manager

## Installation

1. Copy `.env.example` to `.env` and update the values to match your system.
    * `cp .env.example .env`


## Usage

### Folder structure
Inside `env/`, you will find...

* `globals/`: shared by both your local and server profiles.
* `local/`: strictly for the local environment.
* `server/`: strictuly for the server environment.

Inside each of these, you may find...

* `creds/`: any credential files that should be accessed later; **files in this directory are always ingored**
* `shell/`: shell files to be automatically included and loaded into `.zshrc`
* `themes/`: any theme configuration file
* `.zshrc`: ZSH profile for that

### Hiding sensitive data

Any file within the `env/` directory that contains an underscore will be ignored by Git. This is to protect any sensitive data while still making the project usable. 

**Pro Tip**: Put the underscore at the very end of the filename to maintain a numeric load order.

#### Example directory with hidden files

* `01-shortcuts` _(Visible)_
* `02-verbs` _(Visible)_
* `03-launch-codes_` _(Ignored/Hidden by Git)_



## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)