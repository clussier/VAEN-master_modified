pip install tensorflow
conda install -c conda-forge/label/gcc7 pydot
conda install -c conda-forge pydotplus
pip install graphviz
conda install -c conda-forge ipython

pip install keras-tqdm

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
pip install tensorflow==1.0.1

conda install -c anaconda pydot

conda install -c conda-forge numpy=1.14.4

#conda install -c conda-forge pydotplus
pip install graphviz
conda install -c conda-forge ipython
conda install -c conda-forge tqdm
conda install -c conda-forge ipywidgets
conda install -c conda-forge pandas
conda install -c conda-forge matplotlib
conda install -c conda-forge seaborn

conda install -c conda-forge numpy=1.14.4

#  Install jupyter
python3 -m pip install jupyter
jupyter notebook

pip3 install tqdm
