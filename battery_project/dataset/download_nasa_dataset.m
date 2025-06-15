%% Download NASA Lithium-Ion Battery Aging Dataset
% This script downloads the official dataset from the NASA Prognostics
% Center of Excellence (PCoE) repository and extracts it to the
% `dataset/nasa_raw` directory. Run this once before using
% `battery_mimic.m` with the real data.
%
% The dataset is relatively large (hundreds of MB). Ensure you have
% sufficient disk space and a stable internet connection.

url = 'https://ti.arc.nasa.gov/c/13/'; % URL may change; update if needed
scriptDir = fileparts(mfilename('fullpath'));
zipFile   = fullfile(scriptDir, 'NASA_Battery_Data.zip');
outputDir = fullfile(scriptDir, 'nasa_raw');

if ~isfolder(outputDir)
    mkdir(outputDir);
end

fprintf('Downloading dataset...\n');
websave(zipFile, url);

fprintf('Extracting dataset...\n');
unzip(zipFile, outputDir);
fprintf('Done. Files extracted to %s\n', outputDir);
