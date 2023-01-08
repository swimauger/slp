function neuron(input, weight)
  return input * weight
end

function calculate_error(prediction, output)
  return (prediction - output) ^ 2
end

function calculate_gradient(prediction, output)
  return 2 * prediction - 2 * output
end

input = 0.5
weight = 0.85
output = 0.3
epochs = 500
learning_rate = 0.01

for epoch = 1, epochs do
  print('Epoch', epoch)
  prediction = neuron(input, weight)
  gradient = calculate_gradient(prediction, output)
  weight = weight - gradient * learning_rate
  print('Prediction', prediction)
  print('Error', calculate_error(prediction, output), '\n')
end
