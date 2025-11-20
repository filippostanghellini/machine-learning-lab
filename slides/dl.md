---
title:
- Machine Learning
subtitle:
- Laboratory on pytorch
aspectratio:
- 43
institute:
- University of Trento
author:
- \href{https://samuelebortolotti.github.io/}{Samuele Bortolotti}
- \href{https://steveazzolin.github.io/}{Steve Azzolin}
date:
- 24 November, 2025
lang: en
section-titles:
- false
theme:
- Copenhagen
colortheme:
- default
navigation:
- horizontal
logo:
- imgs/unitn.pdf
fontsize:
- 10mm

---

# Set-up on Google Colab

Open the file on `Google Colaboratory`:

![QR code to open Colab](imgs/dl-qr.pdf){ height=1.5in }

Make sure to set the **runtime type to T4 GPU**.

---

# Take-home Exercise

As a self-assessment exercise, complete a classification task using **pytorch**:

**Steps:**

1. Choose a dataset.
2. Design an appropriate Neural Network.
3. Train and tune the network (visualize the train and val curves).
4. Perform hyperparameter optimization.
5. Evaluate the model on the test set.

---

# Suggested Datasets: MNIST

The dataset consists in handwritten digits: *1×28×28 grayscale*. It has *10* classes (digits ranging from 0 to 9)

```python
from torchvision import datasets, transforms
from torch.utils.data import DataLoader

transform = transforms.ToTensor()

trainset = datasets.MNIST(root="./data",
    train=True, download=True, transform=transform)
testset  = datasets.MNIST(root="./data",
    train=False, download=True, transform=transform)
```

---

# Suggested Datasets: Fashion-MNIST

The datasets consists in clothing items, same format as MNIST. It has *10* classes. 

```python
from torchvision import datasets, transforms
from torch.utils.data import DataLoader

transform = transforms.ToTensor()

trainset = datasets.FashionMNIST(root="./data", 
    train=True, download=True, transform=transform)
testset  = datasets.FashionMNIST(root="./data", 
    train=False, download=True, transform=transform)
```

# Suggested Datasets: EMNIST

The datasets is an extended version of MNIST, containing letters and digits. It has *26* classes (digits and letters).

```python
from torchvision import datasets, transforms
from torch.utils.data import DataLoader

transform = transforms.ToTensor()

trainset = datasets.EMNIST(root="./data", 
    split="letters", train=True, 
    download=True, transform=transform)
testset  = datasets.EMNIST(root="./data",
    split="letters", train=False, 
    download=True, transform=transform)
```

---

# Suggested Datasets: CIFAR-100

The dataset is consists in Natural RGB images: *3×32×32*. 

It is a bigger version of CIFAR-10 seen during class, it consists of *100* classes.

```python
from torchvision import datasets, transforms
from torch.utils.data import DataLoader

transform = transforms.ToTensor()

trainset = datasets.CIFAR100(root="./data",
    train=True, download=True, transform=transform)
testset  = datasets.CIFAR100(root="./data", 
    train=False, download=True, transform=transform)
```

**Suggestion**: build a deeper (more layer) network.
