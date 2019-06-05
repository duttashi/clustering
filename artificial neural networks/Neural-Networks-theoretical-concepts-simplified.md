### Neural Networks: A refresher

Neural Network (or Artificial Neural Network) has the ability to learn by examples. ANN is an information processing model inspired by the biological neuron system. It is composed of a large number of highly interconnected processing elements known as the neuron to solve problems. It follows the non-linear path and process information in parallel throughout the nodes. A neural network is a complex adaptive system. Adaptive means it has the ability to change its internal structure by adjusting weights of inputs.

**USAGE**

The neural network was designed to solve problems which are easy for humans and difficult for machines such as identifying pictures of cats and dogs, identifying numbered pictures. These problems are often referred to as pattern recognition. Its application ranges from optical character recognition to object detection.

In this tutorial, you are going to cover the following topics:

- Introduction to neural network
- Forward Propagation and Back Propagation
- Activation Function
- Implementation of the neural network in R
- Use-cases of NN
- Pros and Cons
- Conclusion

#### Introduction to Neural Network (NN)

NN is algorithms are inspired by the human brain to performs a particular task or functions. NN perform computations through a process by learning. The neural network is a set of connected input/output units in which each connection has a weight associated with it. In the learning phase, the network learns by adjusting the weights to predict the correct class label of the given inputs.

The human brain consists of billions of neural cells that process information. Each neural cell considered a simple processing system. The Interconnected web of neurons known as biological neural network transmits information through electrical signals. This parallel interactive system makes the brain to think and process information. Dendrites of a neuron receive input signals from another neuron and respond output based on those inputs to an axon of some other neuron. Based on those inputs, fire an output signal via an axon. 

![plot1](https://github.com/duttashi/clustering/blob/master/figures/nn-1.png)

Dendrites receive signals from other neurons. Cell body sums all the inputs signals to generate output. Axon through output When the sum reaches to a threshold. Synapses is a point of interaction neurons. It transmits electrical or chemical signals to another neuron. Synapse is derived from the Greek word which means conjunction.

##### Feedforward and Feedback Artificial Neural Networks

There are **two main types of artificial neural networks**: `Feedforward` and `feedback` artificial neural networks. Feedforward neural network is a network which is not recursive. Neurons in this layer were only connected to neurons in the next layer, and they are don't form a cycle. In Feedforward signals travel in only one direction towards the output layer. (Source)

Feedback neural networks contain cycles. Signals travel in both directions by introducing loops in the network. The feedback cycles can cause the network's behavior change over time based on its input. Feedback neural network also known as recurrent neural networks. 

![plot2](https://github.com/duttashi/clustering/blob/master/figures/nn-2.png)

##### Activation Functions

Activation function defines the output of a neuron in terms of a local induced field. Activation functions are a single line of code that gives the neural nets non-linearity and expressiveness. There are many activation functions. Some of them are as follows (Source):

- **Identity function** is a function that maps input to the same output value. It is a linear operator in vector space. Also, known straight line function where activation is proportional to the input.

- **Binary Step Function**, if the value of Y is above a certain value known as the threshold, the output is True(or activated), and if it’s less than the threshold, then the output is false (or not activated). It is very useful in the classifier.

- **Sigmoid Function** called S-shaped functions. Logistic and hyperbolic tangent functions are commonly used sigmoid functions. There are two types of sigmoid functions.

	- **Binary Sigmoid Function** is a logistic function where the output values are either binary or vary from 0 to 1.
	- **Bipolar Sigmoid Function** is a logistic function where the output value varies from -1 to 1. Also known as Hyperbolic Tangent Function or tanh.
- **Ramp Function**: The name of the ramp function is derived from the appearance of its graph. It maps negative inputs to 0 and positive inputs to the same output.
- **ReLu** stands for the rectified linear unit (ReLU). It is the most used activation function in the world. It output 0 for negative values of x.

References

[article-1](https://www.datacamp.com/community/tutorials/neural-network-models-r)