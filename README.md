# Three Phase Power Calculation
This  investigates the performance of a balanced three-phase system with two parallel loads (Y and Delta connected) fed through a line with known impedance. The objective is to determine current, power, and voltage profiles across the system using manual calculations and MATLAB/Simulink simulation. Emphasis is placed on validating analytical results through computational modeling.

## Problem Statement
A three-phase line has an impedance of 2+j4 Ω. It supplies two balanced three-phase loads connected in parallel:
Load 1: Y-connected with impedance 30+j40Ω per phase.
Load 2: Delta-connected with impedance 60−j45 Ω per phase.
The system is energized by a three-phase balanced supply with line voltage of 207.85 V. Taking phase voltage Va as reference, determine:
- The current, real power, and reactive power drawn from supply.
- The Line voltage at the combined load.
- The current per phase in each load.
- The total real and reactive power for each load and the line.

## Tech Stacks
- **Software:** MATLAB & Simulink.
- **Models:** Simulink models created for three-phase source, line impedance, and load configurations.
- **Outputs:** Voltage and current waveforms (line and phase).
- **Scope readings:** Numerical results from simulation blocks.
