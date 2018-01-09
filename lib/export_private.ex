defmodule ExportPrivate do
  @moduledoc """
  Export private functions for tests.

  To export private functions when in `:test` environment:

  1. Add this to your dependencies:

      ```
      {:export_private, ">= 0.0.0"}
      ```

  2. `use` it in your modules:

      ```
      defmodule MyModule do
        use ExportPrivate

        # This function will be exported when Mix.env() == :test.
        defp private_func, do: :test
      end
      ```

  And yeah, that’s it.
  """

  defmacro __using__(_) do
    quote do
      import Kernel, except: [defp: 2]
      import ExportPrivate
    end
  end

  defmacro defp(call, do: block) do
    if Mix.env() == :test do
      quote do
        def unquote(call), do: unquote(block)
      end
    else
      quote do
        defp unquote(call), do: unquote(block)
      end
    end
  end
end
