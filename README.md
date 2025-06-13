# Project Overview

This repository contains two main sections:

1. **deep_learning/** – Notebooks related to earlier experiments with logistic regression and convolutional neural networks.
2. **battery_project/** – Material for reproducing a battery discharge dataset and comparing it with a MATLAB/Simulink battery model. A helper script is provided to download the full NASA dataset used in the examples.

See each subfolder for additional documentation.

If you want to keep the battery work separate, you can copy the entire
`battery_project` folder into its own repository. The unit tests inside
`battery_project/tests` will still run with `pytest`.

## Testing
Simple unit tests validate that the example dataset and helper scripts are
present. After cloning the repository, run:

```bash
pytest
```

This checks the sample CSV format and ensures the MATLAB download script
contains the expected commands.
