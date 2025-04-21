What is in the .pth file
A file with a .pth extension typically contains a serialized PyTorch state dictionary. A PyTorch state dictionary is a Python dictionary that contains the state of a PyTorch model, including the model's weights, biases, and other parameters.

The .pth extension is commonly used to save PyTorch state dictionaries to disk. You can use the torch.save() function to save a PyTorch state dictionary to a file with a .pth extension. For example, you can save the state of a PyTorch model called model to a file called model.pth like this:

https://medium.com/@yulin_li/what-exactly-is-the-pth-file-9a487044a36b

I have seen in some code examples, that people use .pwf as model file saving format. But in PyTorch documentation .pt and .pth are recommended. I used .pwf and worked fine for small 1->16->16 convolutional network.

My question is what is the difference between these formats? Why is .pwf extension not even recommended in PyTorch documentation and why do people still use it?



There are no differences between the extensions that were listed: .pt, .pth, .pwf

https://stackoverflow.com/questions/59095824/what-is-the-difference-between-pt-pth-and-pwf-extentions-in-pytorch
