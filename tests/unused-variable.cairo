#[starknet::interface]
trait ISomeContract<TContractState> {}

#[starknet::contract]
mod SomeContract {
    #[storage]
    struct Storage {}

    fn valid_1() {
        let x = 0;
        assert(x == 0, 'foo');
    }

    fn valid_2() {
        let x = 0;
        if x == 0 {
            // Do something
        }
    }

    fn valid_3() {
        let x = 0;
        if true {
            // Do something
            if true {
               assert(x == 0, 'foo'); 
            }
        }
    }

    fn invalid_4() {
        let x = 0;
        let y = x;
        assert(y == 0, 'foo');
    }

    fn invalid_1() {
        // ruleid: unused-variable 
        let x = 0;
    }

    fn invalid_2() {
        let x = 0;
        // ruleid: unused-variable 
        let y = x;
    }

}