# CspReportParser

Plug parser module to handle csp-report bodies.
Documentation is available on [hex.pm](https://hexdocs.pm/csp_report_parser)

## Installation
The package can be installed by adding `csp_report_parser` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:csp_report_parser, "~> 0.1"}
  ]
end
```

Then just add the parser to your endpoint configuration:

```elixir
defmodule MyApp.Endpoint do
  # ...
  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json, :csp_report],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()
  # ...
end
```

## Acknowledgment
The majority of this code is based on the json parser implementation shipped with [Plug](https://github.com/elixir-plug/plug)

## Copyright and License
Mete is a basic measuring tool and telemetry writer for elixir using InfluxDB.  
Copyright (C) 2022 Hans Bernhard Gödeke

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

