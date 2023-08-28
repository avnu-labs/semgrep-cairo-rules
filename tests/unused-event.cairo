#[starknet::interface]
trait ISomeContract<TContractState> {}

#[starknet::contract]
mod SomeContract {
    struct Storage {}
    
    // ruleid: unused-event
    #[event]
    fn MyUnusedEvent(value: u256) {}

    #[event]
    fn MyUsedEvent(value: u256) {}

    #[external]
    fn use_event(amount: u256) {
        MyUsedEvent(amount);
    }
}