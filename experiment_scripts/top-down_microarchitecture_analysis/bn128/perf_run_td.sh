#compile -command line:
perf stat -M TopdownL1 circom circuit_1024.circom --r1cs --wasm --sym --c

#Witness-command line:

perf stat -M TopdownL1 /usr/bin/node circuit_1024_js/generate_witness.js circuit_1024_js/circuit_1024.wasm input.json circuit_1024_js/witness.wtns

#Setup-command line:

perf stat -M TopdownL1 snarkjs groth16 setup circuit_1024.r1cs ../../ptaufiles/powersOfTau28_hez_final_11.ptau circuit_1024_0000.zkey

#Prove: command line
perf stat -M TopdownL1 snarkjs groth16 prove circuit_1024_final.zkey circuit_1024_js/witness.wtns proof_1024.json public_1024.json


#Verify: command line
perf stat -M TopdownL1 snarkjs groth16 verify verification_1024_key.json public_1024.json proof_1024.json


#----------------End of 1024---------------------------------------------------------------

#compile -command line:
perf stat -M TopdownL1 circom circuit_2048.circom --r1cs --wasm --sym --c

#Witness-command line:

perf stat -M TopdownL1 /usr/bin/node circuit_2048_js/generate_witness.js circuit_2048_js/circuit_2048.wasm input.json circuit_2048_js/witness.wtns

#Setup-command line:

perf stat -M TopdownL1 snarkjs groth16 setup circuit_2048.r1cs ../../ptaufiles/powersOfTau28_hez_final_12.ptau circuit_2048_0000.zkey

#Prove: command line
perf stat -M TopdownL1 snarkjs groth16 prove circuit_2048_final.zkey circuit_2048_js/witness.wtns proof_2048.json public_2048.json


#Verify: command line
perf stat -M TopdownL1 snarkjs groth16 verify verification_2048_key.json public_2048.json proof_2048.json

#----------------End of 2048----------------------------------------------------------------------------------------------------------------------------------------------------------

#compile -command line:
perf stat -M TopdownL1 circom circuit_4096.circom --r1cs --wasm --sym --c

#Witness-command line:

perf stat -M TopdownL1 /usr/bin/node circuit_4096_js/generate_witness.js circuit_4096_js/circuit_4096.wasm input.json circuit_4096_js/witness.wtns

#Setup-command line:

perf stat -M TopdownL1 snarkjs groth16 setup circuit_4096.r1cs ../../ptaufiles/powersOfTau28_hez_final_13.ptau circuit_4096_0000.zkey

#Prove: command line
perf stat -M TopdownL1 snarkjs groth16 prove circuit_4096_final.zkey circuit_4096_js/witness.wtns proof_4096.json public_4096.json


#Verify: command line
perf stat -M TopdownL1 snarkjs groth16 verify verification_4096_key.json public_4096.json proof_4096.json

#----------------End of 4096---------------------------------------------------------------

#compile -command line:
perf stat -M TopdownL1 circom circuit_8192.circom --r1cs --wasm --sym --c

#Witness-command line:

perf stat -M TopdownL1 /usr/bin/node circuit_8192_js/generate_witness.js circuit_8192_js/circuit_8192.wasm input.json circuit_8192_js/witness.wtns

#Setup-command line:

perf stat -M TopdownL1 snarkjs groth16 setup circuit_8192.r1cs ../../ptaufiles/powersOfTau28_hez_final_14.ptau circuit_8192_0000.zkey

#Prove: command line
perf stat -M TopdownL1 snarkjs groth16 prove circuit_8192_final.zkey circuit_8192_js/witness.wtns proof_8192.json public_8192.json

#Verify: command line
perf stat -M TopdownL1 snarkjs groth16 verify verification_8192_key.json public_8192.json proof_8192.json

#----------------End of 8192---------------------------------------------------------------

#compile -command line:
perf stat -M TopdownL1 circom circuit_16384.circom --r1cs --wasm --sym --c

#Witness-command line:

perf stat -M TopdownL1 /usr/bin/node circuit_16384_js/generate_witness.js circuit_16384_js/circuit_16384.wasm input.json circuit_16384_js/witness.wtns

#Setup-command line:

perf stat -M TopdownL1 snarkjs groth16 setup circuit_16384.r1cs ../../ptaufiles/powersOfTau28_hez_final_15.ptau circuit_16384_0000.zkey

#Prove: command line
perf stat -M TopdownL1 snarkjs groth16 prove circuit_16384_final.zkey circuit_16384_js/witness.wtns proof_16384.json public_16384.json


#Verify: command line
perf stat -M TopdownL1 snarkjs groth16 verify verification_16384_key.json public_16384.json proof_16384.json


#----------------End of 16384---------------------------------------------------------------

#compile -command line:
perf stat -M TopdownL1 circom circuit_32768.circom --r1cs --wasm --sym --c

#Witness-command line:

perf stat -M TopdownL1 /usr/bin/node circuit_32768_js/generate_witness.js circuit_32768_js/circuit_32768.wasm input.json circuit_32768_js/witness.wtns

#Setup-command line:

perf stat -M TopdownL1 snarkjs groth16 setup circuit_32768.r1cs ../../ptaufiles/powersOfTau28_hez_final_16.ptau circuit_32768_0000.zkey

#Prove: command line
perf stat -M TopdownL1 snarkjs groth16 prove circuit_32768_final.zkey circuit_32768_js/witness.wtns proof_32768.json public_32768.json


#Verify: command line
perf stat -M TopdownL1 snarkjs groth16 verify verification_32768_key.json public_32768.json proof_32768.json

#----------------End of 32768---------------------------------------------------------------

#compile -command line:
perf stat -M TopdownL1 circom circuit_65536.circom --r1cs --wasm --sym --c

#Witness-command line:

perf stat -M TopdownL1 /usr/bin/node circuit_65536_js/generate_witness.js circuit_65536_js/circuit_65536.wasm input.json circuit_65536_js/witness.wtns

#Setup-command line:

perf stat -M TopdownL1 snarkjs groth16 setup circuit_65536.r1cs ../../ptaufiles/powersOfTau28_hez_final_17.ptau circuit_65536_0000.zkey

#Prove: command line
perf stat -M TopdownL1 snarkjs groth16 prove circuit_65536_final.zkey circuit_65536_js/witness.wtns proof_65536.json public_65536.json


#Verify: command line
perf stat -M TopdownL1 snarkjs groth16 verify verification_65536_key.json public_65536.json proof_65536.json

#----------------End of 65536---------------------------------------------------------------

#compile -command line:
perf stat -M TopdownL1 circom circuit_131072.circom --r1cs --wasm --sym --c

#Witness-command line:

perf stat -M TopdownL1 /usr/bin/node circuit_131072_js/generate_witness.js circuit_131072_js/circuit_131072.wasm input.json circuit_131072_js/witness.wtns


#Setup-command line:

perf stat -M TopdownL1 snarkjs groth16 setup circuit_131072.r1cs ../../ptaufiles/powersOfTau28_hez_final_18.ptau circuit_131072_0000.zkey


#Prove: command line
perf stat -M TopdownL1 snarkjs groth16 prove circuit_131072_final.zkey circuit_131072_js/witness.wtns proof_131072.json public_131072.json



#Verify: command line
perf stat -M TopdownL1 snarkjs groth16 verify verification_131072_key.json public_131072.json proof_131072.json

#----------------End of 131072---------------------------------------------------------------

#compile -command line:
perf stat -M TopdownL1 circom circuit_262144.circom --r1cs --wasm --sym --c

#Witness-command line:

perf stat -M TopdownL1 /usr/bin/node circuit_262144_js/generate_witness.js circuit_262144_js/circuit_262144.wasm input.json circuit_262144_js/witness.wtns

#Setup-command line:

perf stat -M TopdownL1 snarkjs groth16 setup circuit_262144.r1cs ../../ptaufiles/powersOfTau28_hez_final_19.ptau circuit_262144_0000.zkey

#Prove: command line
perf stat -M TopdownL1 snarkjs groth16 prove circuit_262144_final.zkey circuit_262144_js/witness.wtns proof_262144.json public_262144.json

#Verify: command line
perf stat -M TopdownL1 snarkjs groth16 verify verification_262144_key.json public_262144.json proof_262144.json

#----------------End of 262144---------------------------------------------------------------


