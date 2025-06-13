import csv
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SAMPLE_FILE = ROOT / "dataset" / "battery_sample.csv"
DOWNLOAD_SCRIPT = ROOT / "dataset" / "download_nasa_dataset.m"
MATLAB_FILE = ROOT / "matlab" / "battery_mimic.m"


def test_sample_file_exists():
    assert SAMPLE_FILE.exists()


def test_sample_file_columns_and_rows():
    with open(str(SAMPLE_FILE), newline='') as f:
        reader = csv.reader(f)
        rows = list(reader)
    assert rows[0] == ['Time_s', 'Voltage_V', 'Current_A', 'Temperature_C']
    assert len(rows) > 2  # header + at least one data row


def test_download_script_mentions_websave():
    with open(str(DOWNLOAD_SCRIPT)) as f:
        content = f.read()
    assert 'websave' in content

def test_matlab_uses_builder_functions():
    with open(str(MATLAB_FILE)) as f:
        content = f.read()
    assert 'batteryCell' in content
    assert 'batteryBuilder' in content
