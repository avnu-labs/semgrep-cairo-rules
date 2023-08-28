#[starknet::interface]
trait ISomeContract<TContractState> {}

#[starknet::contract]
mod SomeContract {
    struct Storage {}
    
    #[external]
    fn valid_1(amount: felt252) -> felt252 {
        valid_2(amount)
    }

    fn valid_2(amount: felt252) -> felt252 {
        amount + 1
    }

    // ruleid: unreachable-method
    fn invalid_1(amount: felt252) -> felt252 {
        amount + 2
    }

    // ruleid: unreachable-method
    fn invalid_2(amount: felt252) -> felt252 {
        valid_2(amount)
    }
}