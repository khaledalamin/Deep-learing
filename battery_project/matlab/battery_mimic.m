%% Battery mimic example using batteryBuilder
% This script shows the basic steps to create a Simscape battery
% model using a public dataset.
% The dataset used is the NASA Lithium-Ion Battery Aging Dataset.

% Read dataset. If the official NASA data has been downloaded using
% `dataset/download_nasa_dataset.m`, load it; otherwise fall back to the
% small sample CSV included in this repo.
sampleFile = '../dataset/battery_sample.csv';
nasaFile   = '../dataset/nasa_raw/B0005.mat';

if exist(nasaFile, 'file')
    raw = load(nasaFile);
    cycle = raw.B0005.cycle(1);   % first discharge cycle
    time_s      = cycle.time;
    voltage_V   = cycle.voltage_measured;
    current_A   = cycle.current_measured;
    temperature = cycle.temperature_measured;
else
    data = readtable(sampleFile);
    time_s      = data.Time_s;
    voltage_V   = data.Voltage_V;
    current_A   = data.Current_A;
    temperature = data.Temperature_C;
end

% Create a battery cell based on dataset nominal values
cell = batteryCell('GenericPouch', ...
    'NominalVoltage', 3.7, ...
    'RatedCapacity', 2.0);

% Build a simple cell model using batteryBuilder
builder = batteryBuilder(cell, 'NumCellsSeries', 1, 'NumCellsParallel', 1);

% Generate a Simscape model
modelName = 'battery_discharge_model';
open_system(builder.buildSimscape(modelName));

% The generated model contains a current source. Replace it with the
% discharge current profile from the dataset for comparison
% (in Simulink, use 'From Workspace' or 'Signal Builder').

% After running the simulation, compare the voltage response:
figure;
plot(time_s, voltage_V, 'o'); hold on;
% simulatedVoltage is obtained from the Simulink run
% plot(simTime, simulatedVoltage);
legend('Dataset Voltage','Simulated Voltage');
xlabel('Time [s]'); ylabel('Voltage [V]');

title('Dataset vs. Simulated Discharge');
