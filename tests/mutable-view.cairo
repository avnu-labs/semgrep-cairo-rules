#[starknet::interface]
trait ISomeContract<TContractState> {}

#[starknet::contract]
mod SomeContract {
    struct Storage {
        value: felt252,
    }

    fn valid_1(val: felt252) {
        mutate_state(val);
        read_state();
    }

    fn valid_2(val: felt252) {
        value::write(val);
    }

    #[view]
    fn valid_3(val: felt252) {
        read_state();
    }

    // ruleid: mutable-view
    #[view]
    fn invalid_1(val: felt252) {
       write_state(val);
    }

    // ruleid: mutable-view
    #[view]
    fn invalid_2(val:felt252) {
        value::write(val);
    }

    // ruleid: mutable-view
    #[view]
    fn invalid_3(val: felt252) {
        if val == 0 {
            // Do something
        }

        value::write(val);
    }

    // ruleid: mutable-view
    #[view]
    fn invalid_4(val: felt252) {
        if val == 0 {    
            value::write(val);
        }
    }

    // ruleid: mutable-view
    #[view]
    fn invalid_5(val: felt252) {
        if val == 0 {
            // Do something
        }

        write_state(val);
    }

    fn write_state(val: felt252) {
        value::write(val);
    }

    #[view]
    fn read_state() -> felt252 {
        value::read()
    }
}