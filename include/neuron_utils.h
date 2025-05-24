#ifndef _MAP_UTILS_H
#define _MAP_UTILS_H

struct Neuron {
  float weight;
  float bias;
};


/*
 * Linear neuron formula:
 * output = bias + Σ (weight_i * input_i) => y = Σ (w_n * x_n) + b
 * where:
 *  - output is the neuron's output,
 *  - bias is the constant term,
 *  - weight_i is the weight for the i-th input,
 *  - input_i is the i-th input,
 *  - Σ denotes the sum over all inputs (i = 1 to n).
 */
float calcInput(struct Neuron* neuron, const double* input);


/*
 * Single input => output = weigght * input + bias => y = wx + b
 */
float calcSingleInput(struct Neuron* neuron, int input);



#endif
