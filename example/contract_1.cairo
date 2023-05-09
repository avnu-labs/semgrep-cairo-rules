use starknet::ContractAddress;

trait ERC20{}

#[contract]
mod some_contract {
    // Storage

    #[external]
    fn transfer_token(from: ContractAddress, to: ContractAddress, amount: u256) -> bool {
        // Do some operations
        
        ERC20::transfer();
        balances::write(from, balances::read(from) - amount);

        // Do some more operations
        
        return true;
    }
}