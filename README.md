# Maplechange

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `maplechange` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:maplechange, "~> 0.1.0"}
  ]
end
```

TESTING

LINTING
dialyzer?
dialixir?


TYPESPECS?

ARCHITECTURE
Use def delegeate whenever possible

This module uses Genserver to run in it's own process. As such it should queue messages and not block the main execution thread.



# maplechange-elixir
