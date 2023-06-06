#[contract]
mod contract {
    // Storage
    struct Storage {
        // Some storage
        var1: u256,
    }

    // ruleid: constructor-attribute
    #[external]
    fn constructor(init_var: u256) {
        var1::write(init_var);
    }
    
    // ok: constructor-attribute
    #[external]
    fn some_function(init_var: u256) {
        var1::write(init_var);
    }
}
