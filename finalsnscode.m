%% Digital Guitar Synthesis - Realistic Composition (60s)
% Course: Signals and Systems (CS-215)
% LTI System Model using the Karplus-Strong Algorithm

clear; clc; close all;

%% 1. System Parameters (Modeling Physical Phenomena)
fs = 44100; % Sampling Frequency
alpha = 0.996; % Tonal quality/decay factor for LTI feedback loop

% Frequency Mapping for a Realistic Blues/Rock Riff
E2=82.41; G2=98.00; A2=110.00; B2=123.47; D3=146.83; E3=164.81;
rest = 0; % Modeling silence/pauses

%% 2. Modular Framework (Sequencing & Timing)
% Creating a complex signal processing architecture
melody = [E2, E2, G2, A2, A2, B2, D3, E3, rest, D3, B2, A2, G2, E2];
durs   = [0.6, 0.3, 0.4, 0.6, 0.3, 0.4, 0.5, 0.8, 0.2, 0.4, 0.4, 0.4, 0.4, 1.0];

% Repeat sequence to meet the 60-second synthesized song requirement
full_melody = repmat(melody, 1, 9);
full_durs   = repmat(durs, 1, 9);

song_signal = [];
fprintf('Synthesizing 60-second realistic composition... \n');

for i = 1:length(full_melody)
    if full_melody(i) == 0
        note = zeros(1, round(full_durs(i) * fs));
    else
        % Constructing individual LTI subsystems (Notes)
        note = karplus_strong(full_melody(i), full_durs(i), fs, alpha);
    end
    song_signal = [song_signal, note]; 
end

% Normalize to prevent audio clipping/distortion
song_signal = song_signal / max(abs(song_signal));

%% 3. Deliverables & Output
% Save as a standard digital media format (WAV)
audiowrite('Realistic_Guitar_Song.wav', song_signal, fs);
fprintf('Success! Saved as Realistic_Guitar_Song.wav\n');

% Visualization for the System Model Description (Deliverable 1)
t = (1:length(song_signal))/fs;
plot(t(1:round(fs*5)), song_signal(1:round(fs*5))); % Show first 5s
title('LTI System Output: Realistic Guitar Waveform');
xlabel('Time (s)'); ylabel('Amplitude');

% Play the final output for performance evaluation
soundsc(song_signal, fs);

%% 4. Karplus-Strong Function (The LTI Engine)
function y = karplus_strong(f, dur, fs, alpha)
% Construction of Delay Element (N) based on musical frequency
N = round(fs / f); 
num_samples = round(dur * fs);
y = zeros(1, num_samples);

% Excitation (Pluck): Modeling the physical string initial state
y(1:N) = 2 * rand(1, N) - 1;

% Feedback Loop & Averaging Filter (The LTI Engine)
for n = N+1 : num_samples
    % Difference Equation representing the LTI system:
    % y(n) = alpha * 0.5 * (y(n-N) + y(n-N+1))
    y(n) = alpha * 0.5 * (y(n-N) + y(n-N+1));
end
end