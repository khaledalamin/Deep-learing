# Battery Project

This section contains the resources used for simulating and validating a battery model in MATLAB/Simulink.

The dataset referenced here is the publicly available **NASA Lithium-Ion Battery Aging Dataset** provided by the Prognostics Center of Excellence (PCoE). Because the full dataset is large, it is not included directly in this repository. Instead, run the helper script `dataset/download_nasa_dataset.m` to download and extract the data from the official NASA repository.

A small sample from the dataset is still provided in `dataset/battery_sample.csv` for quick experimentation and to illustrate the expected format.

## Workflow
1. **Download the real dataset**: From MATLAB, run `dataset/download_nasa_dataset` to retrieve the official files. The data will be placed in `dataset/nasa_raw/`.
2. **Mimic the dataset using `batteryBuilder`**: The MATLAB script in `matlab/battery_mimic.m` shows how to create a battery model that matches the test conditions of the dataset.
3. **Simulink discharge simulation**: Use the generated model in Simulink to reproduce the discharge cycle and compare it to the dataset.
4. **Result comparison**: After running the simulation, compare the simulated results with the original dataset using MATLAB plotting utilities.

For more details, refer to comments in `battery_mimic.m` and the download script.

### Tests
Run `pytest` from the repository root to perform a few sanity checks on the
sample dataset and download script.
