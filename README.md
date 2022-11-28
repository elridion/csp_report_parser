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
    MIT License

    Copyright (c) Hans Bernhard Gödeke

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.

