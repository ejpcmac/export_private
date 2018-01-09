# ExportPrivate

[![hex.pm version](http://img.shields.io/hexpm/v/export_private.svg?style=flat)](https://hex.pm/packages/export_private)

An Elixir module for exporting private functions in tests.

## Usage

To export private functions when in `:test` environment:

1. Add this to your dependencies:

    ```elixir
    {:export_private, ">= 0.0.0"}
    ```

2. `use` it in your modules:

    ```elixir
    defmodule MyModule do
      use ExportPrivate

      # This function will be exported when Mix.env() == :test.
      defp private_func, do: :test
    end
    ```

And yeah, that’s it.
