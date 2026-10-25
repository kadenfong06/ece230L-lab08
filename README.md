# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Group 11: Kaden Fong and Ethan Mix

## Summary

For this lab, we worked with multiplexers and demultiplexers in Verilog. We used the MUX to pick which group of switches we wanted data from and the DEMUX to choose which LEDs to send that data to. We also used procedural blocks and case statements to make everything work. It was pretty cool seeing how we could control which switches connected to which LEDs just by pressing different buttons.

## Lab Questions

### In plain English describe the function and use of a multiplexer.

A multiplexer lets us choose between multiple inputs and send one of them through a single output. We use select bits to decide which input we want. For our lab, we just used the buttons to choose which group of switches we wanted to get data from.

### In plain English describe the function and use of a demultiplexer.

A demultiplexer is pretty much the opposite of a multiplexer. Instead of choosing an input, we're choosing where to send the data. In our lab, we used it to pick which group of LEDs would light up based on the data coming from the MUX.

### What other uses might these circuits have? (Think Shannon’s)

We could see these being used in things like phone networks or computers where you need to send data to different places. This also connects to Shannon's work with using switches and logic to control how information moves around. Instead of needing a separate connection for everything, you can use a MUX and DEMUX to control where information comes from and where it goes.