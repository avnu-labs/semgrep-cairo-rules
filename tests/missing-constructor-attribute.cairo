#[starknet::interface]
trait IValidContract<TContractState> {}

#[starknet::contract]
mod ValidContract {
    #[storage]
    struct Storage {}

    #[constructor]
    fn constructor(ref self: ContractState) {
        // Do something
    }
}

#[starknet::interface]
trait IInvalidContract<TContractState> {}

#[starknet::contract]
mod InvalidContract {
    #[storage]
    struct Storage {}

    // ruleid: missing-constructor-attribute
    fn constructor(ref self: ContractState) {
        // Do something
    }
}