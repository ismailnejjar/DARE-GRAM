# DARE-GRAM
[CVPR 2023] Code for our paper DARE-GRAM : Unsupervised Domain Adaptation Regression by Aligning Inversed Gram Matrices

<img src="./images/main_methode.jpg" alt="alt text" width="200%" height="150%">

## Prerequisites
- Python3
- Numpy
- PyTorch == 1.12.1 (with CUDA and CuDNN (cu113))
- torchvision == 0.13.1
- PIL
- scikit-learn

Please create and activate the following conda envrionment. To reproduce our results, please kindly create and use this environment.

```python
# It may take several minutes for conda to solve the environment
conda update conda
conda env create -f environment.yml
conda activate daregram 
```

## Train and Test DARE-GRAM model
The program can be run with the default parameters using the following:

```python
#Train for dSprites
cd code/dsprites
sh dare_gram.sh

#Train for MPI3D
cd code/mpi3d
sh dare_gram.sh
```
Code was tested on a RTX 3090.

## Citation
Please cite our work if you find it useful.
```bibtex
@inproceedings{nejjar2023domain,
  title={DARE-GRAM : Unsupervised Domain Adaptation Regression by Aligning Inversed Gram Matrices},
  author={Nejjar, Ismail and Wang, Qin and Fink, Olga},
  booktitle={Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition.},
  year={2023}
}
```

## Acknowledgement 
+ RSD is used as our codebase and our DA baseline [official](https://github.com/thuml/Domain-Adaptation-Regression)  

## Data links
dSprites can be downloaded from: [here](https://drive.google.com/drive/folders/1HBZgMxf_KgbIench770SG_ii4PgxPkO0?usp=share_link)

MPI3D can be downloaded from [here](https://drive.google.com/drive/folders/12iHhUdVl-CyywQ8fkiM3UssF4ci_S0ZZ?usp=share_link).

The files should be unziped and put in distinctive folders (template was provided).

## Contact
For questions regarding the code, please contact ismail.nejjar@epfl.ch.
