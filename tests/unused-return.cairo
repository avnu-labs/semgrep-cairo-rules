#[starknet::interface]
trait ISomeContract<TContractState> {}

#[starknet::contract]
mod SomeContract {
    struct Storage {}

    #[external]
    fn valid_1(amount: felt252) {
        let x = return_value(amount);
    }

    #[external]
    fn valid_2(amount: felt252) {
        no_return_value(amount);
    }

    #[external]
    fn valid_3(amount: felt252) -> felt252 {
        return_value(amount)
    }

    #[external]
    fn valid_4(amount: felt252) -> felt252 {
        if true {
            return_value(amount)
        }
    }

    #[external]
    fn invalid_1(amount: felt252) {
        return_value(amount)
    }

    #[external]
    fn invalid_2(amount: felt252) {
        if true {
            return_value(amount);
        }
    }

    #[external]
    fn invalid_3(amount: felt252) {
        loop {
            no_return_value(amount);
            break;
        }
    }

    fn return_value(amount: felt252) -> felt252 {
        amount
    }

    fn no_return_value(amount: felt252) {
        // Do something
    }
}