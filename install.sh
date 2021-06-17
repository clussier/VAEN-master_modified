pip install tensorflow
conda install -c conda-forge/label/gcc7 pydot
conda install -c conda-forge pydotplus
pip install graphviz
conda install -c conda-forge ipython
conda install -c conda-forge tqdm
git clone https://github.com/bstriner/keras-tqdm.git
cd keras-tqdm
python setup.py develop

from tensorflow.python.keras.optimizers import Adam


python -m pip install -r docs/requirements.txt
conda create -n ipywidgets_docs -c conda-forge python pip
cd docs
make clean
make html
nbstripout docs/source/examples/Widget\ List.ipynb

conda install -c conda-forge tensorflow


############################################################
##########     follow the version instruction     ##########
############################################################

conda create --name vaen python=3.6 pip
conda install -c anaconda keras=2.1.6=py36_0
pip install tensorflow==1.0

conda install -c anaconda pydot

#conda install -c conda-forge pydotplus
pip install graphviz
conda install -c conda-forge ipython
conda install -c conda-forge tqdm
conda install -c conda-forge ipywidgets

#  Install jupyter
python3 -m pip install jupyter
jupyter notebook
