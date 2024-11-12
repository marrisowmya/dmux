# dmux
A **1-to-8 Demultiplexer (1:8 Demux)** is a digital logic circuit that takes a single input and routes it to one of eight possible outputs based on the combination of three select lines. Here's a breakdown:

### 1-to-8 Demultiplexer Structure

1. **Inputs**:
   - **Data Input (D)**: The single data input that is routed to one of the outputs.
   - **Select Lines (S2, S1, S0)**: Three select lines control which of the eight output lines receives the input. With three select lines, there are \(2^3 = 8\) possible combinations, allowing for eight distinct outputs.

2. **Outputs**:
   - **Y0, Y1, Y2, ... Y7**: Eight output lines, one of which will be active at any time depending on the select line values.

### Truth Table for 1-to-8 Demultiplexer

The truth table below shows which output will be active for each combination of select lines:

| S2 | S1 | S0 | Output Active |
|----|----|----|---------------|
|  0 |  0 |  0 | Y0 = D       |
|  0 |  0 |  1 | Y1 = D       |
|  0 |  1 |  0 | Y2 = D       |
|  0 |  1 |  1 | Y3 = D       |
|  1 |  0 |  0 | Y4 = D       |
|  1 |  0 |  1 | Y5 = D       |
|  1 |  1 |  0 | Y6 = D       |
|  1 |  1 |  1 | Y7 = D       |

In this truth table:
- When `S2 S1 S0 = 000`, `Y0` receives the input signal `D`.
- When `S2 S1 S0 = 001`, `Y1` receives the input signal `D`.
- This pattern continues, with the input being directed to the output line corresponding to the binary value of `S2 S1 S0`.

### Implementation with Logic Gates

To implement a 1-to-8 demultiplexer using basic gates:
- Each output line \( Y_i \) is activated by an AND gate that combines the data input `D` with a specific combination of the select lines.
- For example, \( Y3 = D \cdot \overline{S2} \cdot S1 \cdot S0 \) would activate `Y3` only when `S2=0`, `S1=1`, and `S0=1`, with `D` being the input signal passed to it.

### Applications of 1-to-8 Demultiplexer

1. **Data Routing**: Directing a single data line to one of several outputs, as in memory address decoding.
2. **Binary to Decimal Conversion**: For systems requiring binary to a one-hot or decimal-like encoding.
3. **Signal Distribution**: Sending a signal to different parts of a circuit based on control inputs, common in control systems and digital communication systems.
