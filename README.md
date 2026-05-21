Digital Guitar Synthesis using the Karplus-Strong Algorithm

This project demonstrates the implementation of a digital guitar sound synthesis system using the Karplus-Strong Algorithm in MATLAB. The system is modeled as a Linear Time-Invariant (LTI) system and simulates the behavior of a plucked guitar string using delay elements, feedback loops, and filtering techniques.

The project was developed as part of the Signals and Systems (CS-215) course.


---

Project Overview

The main objective of this project is to generate realistic guitar-like sounds digitally by applying signal processing concepts. The implementation uses white noise as the excitation signal and processes it through a feedback-based delay system to create natural string vibration and decay.

The final output is a synthesized guitar melody saved as a .wav audio file.


---

Features

Digital guitar sound synthesis using the Karplus-Strong Algorithm

MATLAB implementation of an LTI system

Realistic plucked-string sound generation

Delay-based pitch control

Feedback filtering for natural decay

Melody sequencing and note timing control

Audio waveform visualization

WAV audio file generation



---

Technologies Used

MATLAB

Digital Signal Processing Concepts

Signals and Systems (LTI Modeling)



---

System Concept

The system works by:

1. Generating a short burst of random noise to simulate a guitar string pluck.


2. Passing the signal through a delay line.


3. Applying a feedback averaging filter repeatedly.


4. Producing a decaying waveform similar to a real acoustic guitar string.



The delay length determines the pitch of the note, while the feedback factor controls sustain and tonal quality.


---

Mathematical Model

The implemented system follows the Karplus-Strong difference equation:

y(n) = \alpha \times 0.5 \times [y(n-N) + y(n-N+1)]

Where:

N = delay length related to note frequency

α = decay factor controlling sustain

y(n) = output signal



---

Output

The generated waveform shows the natural decay characteristics of a plucked guitar string. The synthesized melody is exported as:

Realistic_Guitar_Song.wav


---

How to Run

1. Open MATLAB.


2. Load the project files.


3. Run the MATLAB script:



guitar_synthesis.m

4. The program will:

Generate the synthesized melody

Display the waveform

Save the output audio as a WAV file

Play the generated sound





---

Results

The system successfully produces realistic guitar-like tones with smooth decay and clean output quality. The implementation demonstrates practical applications of:

LTI systems

Feedback systems

Delay elements

Digital audio synthesis

Signal processing techniques



---

Learning Outcomes

Through this project, the following concepts were explored and implemented:

Digital signal processing fundamentals

Time-invariant system modeling

Audio synthesis techniques

MATLAB-based simulation

Waveform analysis and visualization



---

Contribution

This project was completed as part of a group assignment. The core system design, MATLAB implementation, signal processing logic, waveform generation, testing, report compilation, and overall integration were primarily handled by me, while my group members contributed during discussions, review, and presentation-related activities.


---

License

This project is created for academic and educational purposes.
