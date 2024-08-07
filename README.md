# Performance-Analysis-of-Zero-Knowledge-Proofs
## OS: Linux Ubuntu
IntelVTune Profiler Tool Installation
Commands for offline installation lntel web link
1.	wget https://registrationcenter-download.intel.com/akdlm/IRC_NAS/3ffac886-6281-46d7-8704-7aab66705926/l_oneapi_vtune_p_2024.2.0.708_offline.sh
sudo sh ./l_oneapi_vtune_p_2024.2.0.708_offline.sh

By default, the <install-dir> is:
$HOME/intel/oneapi/ when installed with user permissions;
/opt/intel/oneapi/ when installed with root permissions.
2.	source <install-dir>/setvars.sh
3.	Run the vtune-gui
4.	Set the following sysctl key controls to enable performance events collection by the tool
a.	echo -1 | sudo dd of=/proc/sys/kernel/perf_event_paranoid
b.	echo 0 | sudo dd of=/proc/sys/kernel/yama/ptrace_scope
c.	echo 0 | sudo dd of=/proc/sys/kernel/kptr_restrict
d.	echo 0 | sudo dd of=/proc/sys/kernel/nmi_watchdog
Perf Tool Installation perf wiki
1.	sudo apt-get update
2.	sudo apt-get upgrade
3.	sudo apt-get install linux-tools-common/ linux-tools-generic
4.	echo -1 | sudo dd of=/proc/sys/kernel/perf_event_paranoid
5.	perf -v
DynamoRIO Tool Installation web link
1.	Download the tar.gz file link
2.	Extract the tool tar -xzf filename.tar.gz
3.	Run commands for opcode mix
bin64/drrun -c samples/bin64/libopcodes.so -- <exe application command>
Circom library Installation Circom Documentation
1.	curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
2.	git clone https://github.com/iden3/circom.git
3.	cargo build –release
4.	cargo install --path circom
5.	Add installation directory to path by adding the following line in the .bashrc file
export PATH="$HOME/.cargo/bin:$PATH"
6.	circom --help

Snarkjs library Installation Github link
1.	sudo apt update
2.	Install nodejs: sudo apt install nodejs
3.	sudo apt install npm
4.	Add npm to path: export PATH=$HOME/.npm-global/bin:$PATH
5.	npm install -g snarkjs@latest
6.	snarkjs –help
Test scripts to run the experiments and setups
1.	Github link
2.	Update the paths as required
3.	Generate the required ZKP algorithm keys and powers of tau setup files using the steps in the snarkjs github
4.	Set cpu frequency using the following commands in admin mode
a.	echo 2000000 | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq
b.	echo 2000000 | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_min_freq
c.	cpupower frequency-set -g powersave
5.	Copy circom and input.json files to the folders/paths as required 
Execution time analysis
a.	Required tools: linux commands
Top-down microarchitecture analysis
a.	Required tools: Perf
Memory analysis
a.	Required tools:
I.	Loads and stores: IntelVTune Profiler
II.	LLC MPKI: Perf
III.	Memory bandwidth: IntelVTune Profiler
Code analysis
a.	Required tools:
I.	Function-level analysis: IntelVTune Profiler
II.	Instruction-level analysis: DynamoRIO
Scalability Analysis
b.	Required tools:
I.	Strong scaling: linux commands
II.	Weak scaling: linux commands
b.	Hyperthreading: use the below command to adjust status threading and online cpus.
I.	echo off | sudo tee /sys/devices/system/cpu/smt/control
II.	echo 0 | sudo tee /sys/devices/system/cpu/cpu6/online

