#[starknet::interface]
trait ISomeContract<TContractState> {}

#[starknet::contract]
mod SomeContract {
    struct Storage {}
    
    fn valid_1(a: felt252) -> felt252 {
        a
    }

    fn valid_2(a: i32, b: usize, c: i32) {
        assert(a == 8, 'some_message');
        if c == 8 { 
            // Do something
        }

        if b == 8 {
            // Do something
        }
    }

    // ruleid: unused-argument
    fn invalid_1(a: felt252) {
        // Do something
    }

    // ruleid: unused-argument
    fn invalid_2(a: i32, b: usize, c: i32) {
        assert(a == 8, 'some_message');
        if c == 8 { 
            // Do something 
        }
    }


}