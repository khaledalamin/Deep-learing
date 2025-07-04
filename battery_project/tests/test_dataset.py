import os
import csv

SAMPLE_FILE = os.path.join('battery_project', 'dataset', 'battery_sample.csv')
DOWNLOAD_SCRIPT = os.path.join('battery_project', 'dataset', 'download_nasa_dataset.m')


SAMPLE_FILE = os.path.join('battery_project', 'dataset', 'battery_sample.csv')
DOWNLOAD_SCRIPT = os.path.join('battery_project', 'dataset', 'download_nasa_dataset.m')

from pathlib import Path

BASE_DIR = Path(__file__).resolve().parents[1]
SAMPLE_FILE = BASE_DIR / 'dataset' / 'battery_sample.csv'
DOWNLOAD_SCRIPT = BASE_DIR / 'dataset' / 'download_nasa_dataset.m'
MATLAB_FILE = BASE_DIR / 'matlab' / 'battery_mimic.m'


def test_sample_file_exists():
    assert os.path.exists(SAMPLE_FILE)


def test_sample_file_columns_and_rows():
    with open(SAMPLE_FILE, newline='') as f:
        reader = csv.reader(f)
        rows = list(reader)
    assert rows[0] == ['Time_s', 'Voltage_V', 'Current_A', 'Temperature_C']
    assert len(rows) > 2  # header + at least one data row


def test_download_script_mentions_websave():
    with open(DOWNLOAD_SCRIPT) as f:
        content = f.read()
    assert 'websave' in content

MATLAB_FILE = os.path.join('battery_project', 'matlab', 'battery_mimic.m')

def test_matlab_uses_builder_functions():
    with open(MATLAB_FILE) as f:
        content = f.read()
    assert 'batteryCell' in content
    assert 'batteryBuilder' in content
    assert 'batteryBuilder' in content
