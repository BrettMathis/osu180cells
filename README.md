# OSU gf180mcuC 3.3V standard cell caravel test - ffra

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![UPRJ_CI](https://github.com/efabless/caravel_project_example/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_project_example/actions/workflows/user_project_ci.yml)


## An 8-bit ffra adder implementation using OSU standard cells

This design is an adder implementation of Anton Blanchard's [vlsiffra](docs/source/index.rst) architecture. The purpose of this is to make OpenLane's gf180mcuC pdk and overall flow compatible with a 3.3V standard cell kit, as well as to test the functionality of OSU's standard cell library for the gf180 process node.

The use of this design is very simple, and should be compatible with any external controller. Caravel's GPIO is setup exclusively with user input settings, so that the IO of the chip and be interacted with directly.

In comparison to the other ffra branch in this repo, this branch's implementation of the ffra design doesn't utilize level-shift cells with the expectation that the input voltage will only utilize the required 3.3V input voltage powered from the gf180mcu_fd_sc_mcu9t5v0 PDKs IO pads. 

To build the ffra design:
```bash
make ffra
```

To build the user_project_wrapper:
```bash
make user_project_wrapper
```

To run the pre-check prior to design submission to the shuttle:
```bash
make precheck
make run-precheck
```

