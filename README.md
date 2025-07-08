# Linear Regression Neuron in C 

This project implements a simple linear regression neuron in C, designed to predict outputs for linear problems.

## About ℹ️

A linear regression neuron models the relationship between input(s) and output using weights and a bias. It calculates predictions using the formula:

\[
\text{output} = \sum_{i=1}^{n} (w_i \times x_i) + b
\]

- **\(w_i\)** = weights (coefficients)
- **\(x_i\)** = input features
- **\(b\)** = bias (intercept)

This formula corresponds to the equation of a straight line (or hyperplane for multiple inputs), where the weights represent the slope(s) and the bias represents the intercept. 📈

## Graphical Interpretation 📉

- The neuron’s prediction can be visualized as a line on a 2D graph when there is one input feature.
- The weight determines the angle (slope) of the line. ↗️  
- The bias shifts the line up or down (intercept). ⬆️⬇️  
- The goal of training this neuron is to find the best weight and bias so the line fits the data points as closely as possible.

## Usage 🛠️

The project provides a simple function to compute the neuron output given an input array, weights, and a bias.

---

<details>
<summary>🇧🇷 Tradução em Português</summary>

# Neurônio de Regressão Linear

Este projeto implementa um neurônio simples de regressão linear em C, projetado para prever saídas em problemas lineares.

## Sobre ℹ️

Um neurônio de regressão linear modela a relação entre entrada(s) e saída usando pesos e um bias. Ele calcula previsões usando a fórmula:

\[
\text{saída} = \sum_{i=1}^{n} (w_i \times x_i) + b
\]

- **\(w_i\)** = pesos (coeficientes)
- **\(x_i\)** = características de entrada 
- **\(b\)** = bias (interceptação)

Essa fórmula corresponde à equação de uma linha reta (ou hiperplano para múltiplas entradas), onde os pesos representam a inclinação e o bias o ponto de interceptação. 📈

## Interpretação Gráfica 📉

- A previsão do neurônio pode ser visualizada como uma linha em um gráfico 2D quando há uma única entrada. 
- O peso determina o ângulo (inclinação) da linha. ↗️  
- O bias desloca a linha para cima ou para baixo (interceptação). ⬆️⬇️  
- O objetivo do treinamento é encontrar o melhor peso e bias para que a linha se ajuste o máximo possível aos pontos de dados.

## Uso 🛠️

O projeto fornece uma função simples para calcular a saída do neurônio dado um array de entradas, pesos e um bias.

</details>

