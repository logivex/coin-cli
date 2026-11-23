# coin-cli

[![CI](https://github.com/logivex/coin-cli/actions/workflows/ci.yml/badge.svg)](https://github.com/logivex/coin-cli/actions/workflows/ci.yml)
[![Go Report Card](https://goreportcard.com/badge/github.com/logivex/coin-cli)](https://goreportcard.com/report/github.com/logivex/coin-cli)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Fast CLI for crypto market data from CoinGecko: table/JSON/CSV output, filters, caching and watch mode

## Install

```sh
go install github.com/logivex/coin-cli/cmd/coin@latest
```

Prebuilt binaries are available on the [Releases](https://github.com/logivex/coin-cli/releases) page.

## Usage

```sh
coin -n 20                      # top 20 coins
coin -ids bitcoin,ethereum -c eur
coin -gainers 10 -compact
coin -format csv -o coins.csv
coin -watch 30s
```

## Configuration

| Variable | Description |
|---|---|
| `COINGECKO_API_KEY` | Optional CoinGecko demo API key (higher rate limits) |
| `NO_COLOR` | Disable colored output |

## Development

```sh
make build   # ./bin/coin
make test
make lint
```

## Disclaimer

Data is provided by the [CoinGecko API](https://www.coingecko.com/en/api).
This project is not affiliated with CoinGecko. Nothing here is financial advice.

## License

[MIT](LICENSE)
