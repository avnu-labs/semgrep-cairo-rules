# Semgrep - Cairo Rules

Set of Cairo 1.0 rules to be used with Semgrep.

## How to Use

We assume that you have Semgrep already installed, otherwise you can refer to the following [doc](https://github.com/returntocorp/semgrep).

1. Get the last version of the rules that you can find on the [release page](https://github.com/avnu-labs/semgrep-cairo-rules/releases)
2. From the terminal, call Semgrep with the rule you've downloaded in 1.
```
semgrep scan --config path/to/rules.yaml path/to/cairo_code
```

## Contribution

We strongly encourage anyone who wants to participate in improving the security of Starknet smart contracts to contribute to this repository either by creating new rules or improving existing ones.

Here are the guidelines to contribute
1. Create/Modify rules in `rules/`
2. Add in `tests` one or several test case of your rule. We rely on the Semgrep testing facilities for our testing suite so please read the following [doc](https://semgrep.dev/docs/writing-rules/testing-rules) to understand how it works.
3. To test the rules you need to have Semgrep installed. Run the following command
```
semgrep scan --config rules --test tests
```
4. If all tests are `ok`, create a new file in `changelog.d` and document it according to `changelog.d/README.md`
5. Open a PR where you shortly describe the purpose of your change
