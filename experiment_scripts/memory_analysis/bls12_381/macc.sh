#compile -command line:
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_1024_compile_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- circom circuit_1024.circom --r1cs --wasm --sym --c --prime bls12381

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_1024_compile_macc -format=csv -report-output expo_1024_compile_macc_report.csv

#Witness-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_1024_wtns_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/circuit_1024_js -- /usr/bin/node generate_witness.js circuit_1024.wasm /home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/input.json witness.wtns

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_1024_wtns_macc -format=csv -report-output expo_1024_wtns_macc_report.csv

#Setup-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_1024_setup_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 setup circuit_1024.r1cs ../../ptaufiles/pot11_bls12381_final.ptau circuit_1024_0000.zkey

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_1024_setup_macc -format=csv -report-output expo_1024_setup_macc_report.csv

#Prove: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_1024_prove_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 prove circuit_1024_final.zkey circuit_1024_js/witness.wtns proof_1024.json public_1024.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_1024_prove_macc -format=csv -report-output expo_1024_prove_macc_report.csv


#Verify: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_1024_verify_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 verify verification_1024_key.json public_1024.json proof_1024.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_1024_verify_macc -format=csv -report-output expo_1024_verify_macc_report.csv


#----------------End of 1024---------------------------------------------------------------

#compile -command line:
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_2048_compile_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- circom circuit_2048.circom --r1cs --wasm --sym --c --prime bls12381

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_2048_compile_macc -format=csv -report-output expo_2048_compile_macc_report.csv

#Witness-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_2048_wtns_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/circuit_2048_js -- /usr/bin/node generate_witness.js circuit_2048.wasm /home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/input.json witness.wtns

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_2048_wtns_macc -format=csv -report-output expo_2048_wtns_macc_report.csv

#Setup-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_2048_setup_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 setup circuit_2048.r1cs ../../ptaufiles/pot12_bls12381_final.ptau circuit_2048_0000.zkey

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_2048_setup_macc -format=csv -report-output expo_2048_setup_macc_report.csv

#Prove: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_2048_prove_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 prove circuit_2048_final.zkey circuit_2048_js/witness.wtns proof_2048.json public_2048.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_2048_prove_macc -format=csv -report-output expo_2048_prove_macc_report.csv


#Verify: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_2048_verify_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 verify verification_2048_key.json public_2048.json proof_2048.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_2048_verify_macc -format=csv -report-output expo_2048_verify_macc_report.csv

#----------------End of 2048----------------------------------------------------------------------------------------------------------------------------------------------------------

#compile -command line:
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_4096_compile_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- circom circuit_4096.circom --r1cs --wasm --sym --c --prime bls12381

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_4096_compile_macc -format=csv -report-output expo_4096_compile_macc_report.csv

#Witness-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_4096_wtns_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/circuit_4096_js -- /usr/bin/node generate_witness.js circuit_4096.wasm /home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/input.json witness.wtns

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_4096_wtns_macc -format=csv -report-output expo_4096_wtns_macc_report.csv

#Setup-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_4096_setup_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 setup circuit_4096.r1cs ../../ptaufiles/pot13_bls12381_final.ptau circuit_4096_0000.zkey

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_4096_setup_macc -format=csv -report-output expo_4096_setup_macc_report.csv

#Prove: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_4096_prove_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 prove circuit_4096_final.zkey circuit_4096_js/witness.wtns proof_4096.json public_4096.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_4096_prove_macc -format=csv -report-output expo_4096_prove_macc_report.csv


#Verify: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_4096_verify_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 verify verification_4096_key.json public_4096.json proof_4096.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_4096_verify_macc -format=csv -report-output expo_4096_verify_macc_report.csv

#----------------End of 4096---------------------------------------------------------------

#compile -command line:
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_8192_compile_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- circom circuit_8192.circom --r1cs --wasm --sym --c --prime bls12381

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_8192_compile_macc -format=csv -report-output expo_8192_compile_macc_report.csv

#Witness-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_8192_wtns_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/circuit_8192_js -- /usr/bin/node generate_witness.js circuit_8192.wasm /home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/input.json witness.wtns

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_8192_wtns_macc -format=csv -report-output expo_8192_wtns_macc_report.csv

#Setup-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_8192_setup_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 setup circuit_8192.r1cs ../../ptaufiles/pot14_bls12381_final.ptau circuit_8192_0000.zkey

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_8192_setup_macc -format=csv -report-output expo_8192_setup_macc_report.csv

#Prove: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_8192_prove_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 prove circuit_8192_final.zkey circuit_8192_js/witness.wtns proof_8192.json public_8192.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_8192_prove_macc -format=csv -report-output expo_8192_prove_macc_report.csv


#Verify: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_8192_verify_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 verify verification_8192_key.json public_8192.json proof_8192.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_8192_verify_macc -format=csv -report-output expo_8192_verify_macc_report.csv

#----------------End of 8192---------------------------------------------------------------

#compile -command line:
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_16384_compile_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- circom circuit_16384.circom --r1cs --wasm --sym --c --prime bls12381

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_16384_compile_macc -format=csv -report-output expo_16384_compile_macc_report.csv

#Witness-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_16384_wtns_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/circuit_16384_js -- /usr/bin/node generate_witness.js circuit_16384.wasm /home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/input.json witness.wtns

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_16384_wtns_macc -format=csv -report-output expo_16384_wtns_macc_report.csv

#Setup-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_16384_setup_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 setup circuit_16384.r1cs ../../ptaufiles/pot15_bls12381_final.ptau circuit_16384_0000.zkey

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_16384_setup_macc -format=csv -report-output expo_16384_setup_macc_report.csv

#Prove: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_16384_prove_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 prove circuit_16384_final.zkey circuit_16384_js/witness.wtns proof_16384.json public_16384.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_16384_prove_macc -format=csv -report-output expo_16384_prove_macc_report.csv


#Verify: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_16384_verify_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 verify verification_16384_key.json public_16384.json proof_16384.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_16384_verify_macc -format=csv -report-output expo_16384_verify_macc_report.csv


#----------------End of 16384---------------------------------------------------------------

#compile -command line:
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_32768_compile_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- circom circuit_32768.circom --r1cs --wasm --sym --c --prime bls12381

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_32768_compile_macc -format=csv -report-output expo_32768_compile_macc_report.csv

#Witness-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_32768_wtns_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/circuit_32768_js -- /usr/bin/node generate_witness.js circuit_32768.wasm /home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/input.json witness.wtns

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_32768_wtns_macc -format=csv -report-output expo_32768_wtns_macc_report.csv

#Setup-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_32768_setup_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 setup circuit_32768.r1cs ../../ptaufiles/pot16_bls12381_final.ptau circuit_32768_0000.zkey

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_32768_setup_macc -format=csv -report-output expo_32768_setup_macc_report.csv

#Prove: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_32768_prove_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 prove circuit_32768_final.zkey circuit_32768_js/witness.wtns proof_32768.json public_32768.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_32768_prove_macc -format=csv -report-output expo_32768_prove_macc_report.csv


#Verify: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_32768_verify_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 verify verification_32768_key.json public_32768.json proof_32768.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_32768_verify_macc -format=csv -report-output expo_32768_verify_macc_report.csv

#----------------End of 32768---------------------------------------------------------------

#compile -command line:
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_65536_compile_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- circom circuit_65536.circom --r1cs --wasm --sym --c --prime bls12381

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_65536_compile_macc -format=csv -report-output expo_65536_compile_macc_report.csv

#Witness-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_65536_wtns_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/circuit_65536_js -- /usr/bin/node generate_witness.js circuit_65536.wasm /home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/input.json witness.wtns

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_65536_wtns_macc -format=csv -report-output expo_65536_wtns_macc_report.csv

#Setup-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_65536_setup_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 setup circuit_65536.r1cs ../../ptaufiles/pot17_bls12381_final.ptau circuit_65536_0000.zkey

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_65536_setup_macc -format=csv -report-output expo_65536_setup_macc_report.csv

#Prove: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_65536_prove_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 prove circuit_65536_final.zkey circuit_65536_js/witness.wtns proof_65536.json public_65536.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_65536_prove_macc -format=csv -report-output expo_65536_prove_macc_report.csv


#Verify: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_65536_verify_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 verify verification_65536_key.json public_65536.json proof_65536.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_65536_verify_macc -format=csv -report-output expo_65536_verify_macc_report.csv

#----------------End of 65536---------------------------------------------------------------

#compile -command line:
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_131072_compile_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- circom circuit_131072.circom --r1cs --wasm --sym --c --prime bls12381

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_131072_compile_macc -format=csv -report-output expo_131072_compile_macc_report.csv

#Witness-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_131072_wtns_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/circuit_131072_js -- /usr/bin/node generate_witness.js circuit_131072.wasm /home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/input.json witness.wtns

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_131072_wtns_macc -format=csv -report-output expo_131072_wtns_macc_report.csv

#Setup-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_131072_setup_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 setup circuit_131072.r1cs ../../ptaufiles/pot18_bls12381_final.ptau circuit_131072_0000.zkey

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_131072_setup_macc -format=csv -report-output expo_131072_setup_macc_report.csv

#Prove: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_131072_prove_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 prove circuit_131072_final.zkey circuit_131072_js/witness.wtns proof_131072.json public_131072.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_131072_prove_macc -format=csv -report-output expo_131072_prove_macc_report.csv


#Verify: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_131072_verify_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 verify verification_131072_key.json public_131072.json proof_131072.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_131072_verify_macc -format=csv -report-output expo_131072_verify_macc_report.csv

#----------------End of 131072---------------------------------------------------------------

#compile -command line:
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_262144_compile_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- circom circuit_262144.circom --r1cs --wasm --sym --c --prime bls12381

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_262144_compile_macc -format=csv -report-output expo_262144_compile_macc_report.csv

#Witness-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_262144_wtns_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/circuit_262144_js -- /usr/bin/node generate_witness.js circuit_262144.wasm /home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/input.json witness.wtns

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_262144_wtns_macc -format=csv -report-output expo_262144_wtns_macc_report.csv

#Setup-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_262144_setup_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 setup circuit_262144.r1cs ../../ptaufiles/pot19_bls12381_final.ptau circuit_262144_0000.zkey

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_262144_setup_macc -format=csv -report-output expo_262144_setup_macc_report.csv

#Prove: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_262144_prove_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 prove circuit_262144_final.zkey circuit_262144_js/witness.wtns proof_262144.json public_262144.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_262144_prove_macc -format=csv -report-output expo_262144_prove_macc_report.csv


#Verify: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_262144_verify_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 verify verification_262144_key.json public_262144.json proof_262144.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_262144_verify_macc -format=csv -report-output expo_262144_verify_macc_report.csv

#----------------End of 262144---------------------------------------------------------------

#compile -command line:
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_524288_compile_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- circom circuit_524288.circom --r1cs --wasm --sym --c --prime bls12381

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_524288_compile_macc -format=csv -report-output expo_524288_compile_macc_report.csv

#Witness-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_524288_wtns_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/circuit_524288_js -- /usr/bin/node generate_witness.js circuit_524288.wasm /home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/input.json witness.wtns

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_524288_wtns_macc -format=csv -report-output expo_524288_wtns_macc_report.csv

#Setup-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_524288_setup_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 setup circuit_524288.r1cs ../../ptaufiles/pot20_bls12381_final.ptau circuit_524288_0000.zkey

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_524288_setup_macc -format=csv -report-output expo_524288_setup_macc_report.csv

#Prove: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_524288_prove_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 prove circuit_524288_final.zkey circuit_524288_js/witness.wtns proof_524288.json public_524288.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_524288_prove_macc -format=csv -report-output expo_524288_prove_macc_report.csv


#Verify: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_524288_verify_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 verify verification_524288_key.json public_524288.json proof_524288.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_524288_verify_macc -format=csv -report-output expo_524288_verify_macc_report.csv

#----------------End of 524288---------------------------------------------------------------

#compile -command line:
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_1048576_compile_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- circom circuit_1048576.circom --r1cs --wasm --sym --c --prime bls12381

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_1048576_compile_macc -format=csv -report-output expo_1048576_compile_macc_report.csv

#Witness-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_1048576_wtns_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/circuit_1048576_js -- /usr/bin/node generate_witness.js circuit_1048576.wasm /home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381/input.json witness.wtns

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_1048576_wtns_macc -format=csv -report-output expo_1048576_wtns_macc_report.csv

#Setup-command line:

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_1048576_setup_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 setup circuit_1048576.r1cs ../../ptaufiles/pot21_bls12381_final.ptau circuit_1048576_0000.zkey

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_1048576_setup_macc -format=csv -report-output expo_1048576_setup_macc_report.csv

#Prove: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_1048576_prove_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 prove circuit_1048576_final.zkey circuit_1048576_js/witness.wtns proof_1048576.json public_1048576.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_1048576_prove_macc -format=csv -report-output expo_1048576_prove_macc_report.csv


#Verify: command line
/opt/intel/oneapi/vtune/2024.1/bin64/vtune -collect memory-access -r expo_1048576_verify_macc --app-working-dir=/home/sethi5/Desktop/ZKP_HW/ZKP_SW_ANALYSIS/memory_analysis/bls12381 -- /usr/local/bin/snarkjs groth16 verify verification_1048576_key.json public_1048576.json proof_1048576.json

/opt/intel/oneapi/vtune/2024.1/bin64/vtune -report summary -result-dir expo_1048576_verify_macc -format=csv -report-output expo_1048576_verify_macc_report.csv

#----------------End of 1048576---------------------------------------------------------------