use array::ArrayTrait;

#[contract]
mod SomeContract { 
    fn foo1() {
        // ruleid: unused-variable
        let x = 8;
    }

    fn foo2() {
        let x = 8;
        assert(x == 8, 'some_message');
    }

    fn foo3() {
        // ruleid: unused-variable
        let x = 9;
        assert(true, 'some_message');
        let x = 8;
        assert(x == 8, 'some_message');
    }

    fn foo4(z: i32) {
        assert(true, 'some_message');
        
        let x = 9;
        if x == z {
            // Do something
        }
    }

    fn foo5(z: i32) -> felt252 {
        assert(true, 'some_message');

        let x = 9;
        if z == 10 {
            x
        } else {
            4
        }
    }
}