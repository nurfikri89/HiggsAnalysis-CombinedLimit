HiggsAnalysis-CombinedLimit
===========================

### Official documentation

All documentation, including installation instructions, is hosted at
http://cms-analysis.github.io/HiggsAnalysis-CombinedLimit/

The source code of this documentation can be found in the `docs/` folder in this repository.

### Setup on MacOS (13.5) with conda


1. Checkout a specific tag of Combine 

```bash
git clone git@github.com:nurfikri89/HiggsAnalysis-CombinedLimit.git HiggsAnalysis/CombinedLimit
cd HiggsAnalysis/CombinedLimit
git fetch origin
git checkout v9.1.0-MacOS13p5_miniconda-dev
```

2. Compile with conda (https://cms-analysis.github.io/HiggsAnalysis-CombinedLimit/#standalone-compilation-with-conda)


a) Install mamba (if you have not done so) 

```bash
conda install --name base mamba # faster conda
```

and use mamba to create environment and install the dependecies


```bash
mamba env create -f conda_env.yml
```

b) Activate environment the first time and setup environments

```bash
conda activate combine
source set_conda_env_vars.sh
conda deactivate # Need to reactivate
conda activate combine

make CONDA=1 -j 4
```

The installation is complete. All you need to do next time is to just activate the `combine` conda environment.
