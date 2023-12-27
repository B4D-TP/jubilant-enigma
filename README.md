# Demo Module

This is a Demo PowerShell module that contains public and private functions.

## Structure

The module is structured into a `Source` directory with `Public` and `Private` subdirectories. The `Public` directory contains the functions that are exposed to the user, while the `Private` directory contains helper functions that are only used internally by the module.

## Public Functions

- `Function1.ps1`: Description of what Function1 does.
- `Function2.ps1`: Description of what Function2 does.

## Private Functions

- `HelperFunction1.ps1`: Description of what HelperFunction1 does.
- `HelperFunction2.ps1`: Description of what HelperFunction2 does.

## Usage

To use this module, import it using the `Import-Module` cmdlet:

```powershell
Import-Module ./DemoModule.psm1
```

Then, you can call the public functions like so:

```powershell
Function1
Function2
```

## Development

This project includes a `.vscode` directory with `settings.json` and `launch.json` files for development in VS Code. However, you can use any text editor or IDE that you prefer.

## Contributing

If you would like to contribute to this project, please feel free to submit a pull request or open an issue.
