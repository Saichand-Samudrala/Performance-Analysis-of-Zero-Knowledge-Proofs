# Performance Analysis of Zero Knowledge Proofs

## OS: Linux Ubuntu

### Intel VTune Profiler Tool Installation

Commands for offline installation [Intel web link](https://registrationcenter-download.intel.com/akdlm/IRC_NAS/3ffac886-6281-46d7-8704-7aab66705926/l_oneapi_vtune_p_2024.2.0.708_offline.sh)

1. Download and run the installation script:
   ```bash
   wget https://registrationcenter-download.intel.com/akdlm/IRC_NAS/3ffac886-6281-46d7-8704-7aab66705926/l_oneapi_vtune_p_2024.2.0.708_offline.sh
   sudo sh ./l_oneapi_vtune_p_2024.2.0.708_offline.sh
   ```

   By default, the `<install-dir>` is:
   - `$HOME/intel/oneapi/` when installed with user permissions.
   - `/opt/intel/oneapi/` when installed with root permissions.

2. Source the environment variables:
   ```bash
   source <install-dir>/setvars.sh
   ```

3. Run the VTune GUI:
   ```bash
   vtune-gui
   ```

4. Set the following `sysctl` key controls to enable performance events collection by the tool:
   ```bash
   echo -1 | sudo dd of=/proc/sys/kernel/perf_event_paranoid
   echo 0 | sudo dd of=/proc/sys/kernel/yama/ptrace_scope
   echo 0 | sudo dd of=/proc/sys/kernel/kptr_restrict
   echo 0 | sudo dd of=/proc/sys/kernel/nmi_watchdog
   ```

### Perf Tool Installation

[Perf wiki](https://perf.wiki.kernel.org/index.php/Main_Page)

1. Update and upgrade your system:
   ```bash
   sudo apt-get update
   sudo apt-get upgrade
   ```

2. Install perf tools:
   ```bash
   sudo apt-get install linux-tools-common linux-tools-generic
   ```

3. Set `perf_event_paranoid`:
   ```bash
   echo -1 | sudo dd of=/proc/sys/kernel/perf_event_paranoid
   ```

4. Verify the installation:
   ```bash
   perf -v
   ```

### DynamoRIO Tool Installation

[DynamoRIO web link](http://dynamorio.org/)

1. Download the tar.gz file [link](http://dynamorio.org/download.html).

2. Extract the tool:
   ```bash
   tar -xzf filename.tar.gz
   ```

3. Run commands for opcode mix:
   ```bash
   bin64/drrun -c samples/bin64/libopcodes.so -- <exe application command>
   ```

### Circom Library Installation

[Circom Documentation](https://docs.circom.io/)

1. Install Rust:
   ```bash
   curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
   ```

2. Clone the Circom repository:
   ```bash
   git clone https://github.com/iden3/circom.git
   ```

3. Build the project:
   ```bash
   cargo build --release
   ```

4. Install Circom:
   ```bash
   cargo install --path circom
   ```

5. Add the installation directory to your PATH by adding the following line in the `.bashrc` file:
   ```bash
   export PATH="$HOME/.cargo/bin:$PATH"
   ```

6. Get help with Circom commands:
   ```bash
   circom --help
   ```

### Snarkjs Library Installation

[Github link](https://github.com/iden3/snarkjs)

1. Update your system:
   ```bash
   sudo apt update
   ```

2. Install Node.js:
   ```bash
   sudo apt install nodejs
   ```

3. Install npm:
   ```bash
   sudo apt install npm
   ```

4. Add npm to your PATH:
   ```bash
   export PATH=$HOME/.npm-global/bin:$PATH
   ```

5. Install Snarkjs:
   ```bash
   npm install -g snarkjs@latest
   ```

6. Get help with Snarkjs commands:
   ```bash
   snarkjs --help
   ```

### Test Scripts to Run the Experiments and Setups

1. [Github link](https://github.com/Saichand-Samudrala/Performance-Analysis-of-Zero-Knowledge-Proofs)
2. Update the paths as required.
3. Generate the required ZKP algorithm keys and powers of tau setup files using the steps in the Snarkjs Github.
4. Set CPU frequency using the following commands in admin mode:
   ```bash
   echo 2000000 | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq
   echo 2000000 | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_min_freq
   cpupower frequency-set -g powersave
   ```

5. Copy Circom and `input.json` files to the folders/paths as required.

### Execution Time Analysis

- Required tools: Linux commands

### Top-down Microarchitecture Analysis

- Required tools: Perf

### Memory Analysis

- Required tools:
  - Loads and stores: Intel VTune Profiler
  - LLC MPKI: Perf
  - Memory bandwidth: Intel VTune Profiler

### Code Analysis

- Required tools:
  - Function-level analysis: Intel VTune Profiler
  - Instruction-level analysis: DynamoRIO

### Scalability Analysis

- Required tools:
  - Strong scaling: Linux commands
  - Weak scaling: Linux commands

- Hyperthreading: Use the below command to adjust status threading and online CPUs:
   ```bash
   echo off | sudo tee /sys/devices/system/cpu/smt/control
   echo 0 | sudo tee /sys/devices/system/cpu/cpux/online
   ```

