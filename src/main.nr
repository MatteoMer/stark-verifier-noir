mod verifier;
mod proof;

use proof::{MimcStarkInputs, StarkProof};

//constants: pub [Field; 64],
//steps: pub Field,
//input: pub Field,
//output: pub Field,
fn main(inputs: pub MimcStarkInputs, proof: pub StarkProof) {
    let i = inputs;
    // TODO: Compute domains 
    // TODO: Verify FRI proof (low degree polynomial)
    // TODO: Compute the random points to check
    // TODO: Verify merkle paths
    // TODO: Random checks to verify consistency
}
