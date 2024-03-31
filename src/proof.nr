use dep::std::bigint::{BigInt};
use dep::std::ops::{Add, Sub, Mul, Div};
use dep::std::cmp::Eq;

global ROUND_CONSTANTS_SIZE = 64;

struct MimcStarkInputs {
    input: Field,
    output: Field,
}

//m_root, l_root, main_branches, linear_comb_branches, fri_proof = proof
//bytes   bytes   bytes[][]      bytes[][]             bytes[][]

struct StarkProof {
    m_root: [u8; 32],
    l_root: [u8; 32],
    main_branches:[[[u8; 128];4]; 30],
    linear_comb_branches:[[[u8;128];4]; 10],
    fri_proof: [[[u8;128];8];1],
}
