use array::ArrayTrait;

#[contract]
mod SomeContract { 
    // ruleid: unused-arguments
    fn foo1(a: felt252) {
        // Do something
    }

    fn foo2(a: felt252) -> felt252 {
        a
    }

    // ruleid: unused-arguments
    fn foo3(a: i32, b: usize, c: i32) {
        assert(a == 8, 'some_message');
        if c == 8 { 
            // Do something 
        }
    }

    fn foo4(a: i32, b: usize, c: i32) {
        assert(a == 8, 'some_message');
        if c == 8 { 
            // Do something
        }

        if b == 8 {
            // Do something
        }
    }
}