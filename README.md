<div align="center">
  <img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExaGcxY2V6anU2bWwwajF4ZWVjY3F2cW01MWt4OGg3dG01c2E0c3V4eCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/VbnUQYqU7POc48WfB8/giphy.gif" alt="Wildlife and machine learning" width="200"/>
  <h1>🌿 Poaching Detection in Karnataka using Machine Learning 🤖</h1>
</div>

## 📄 Overview

[cite_start]This project presents a machine learning-based system to combat wildlife poaching in Karnataka's diverse ecosystems[cite: 211]. [cite_start]Traditional surveillance methods, such as ranger patrols, are often insufficient for monitoring large forest areas due to resource constraints and the unpredictable nature of poaching activities[cite: 7]. [cite_start]This system addresses these challenges by using a **Long Short-Term Memory (LSTM)** neural network to predict high-risk poaching zones[cite: 8].

[cite_start]By analyzing animal movement data and dynamic environmental factors, the LSTM model can forecast animal movements and identify potential poaching hotspots, offering a scalable and adaptable solution to support conservation efforts[cite: 8, 11].

## ✨ Features

* [cite_start]**Predictive Modeling**: Utilizes an LSTM-based Regression Neural Network to forecast animal movement trajectories and pinpoint areas at high risk for poaching[cite: 8, 101].
* [cite_start]**Data-Driven Insights**: The model is trained on high-quality animal movement data from GPS tracking devices, which includes details like timestamps, latitude, longitude, and habitat type[cite: 81, 83].
* [cite_start]**Spatial Mapping**: Generates heatmaps by superimposing animal movement trajectories on habitat data to visualize high-activity zones, which are likely targets for poachers[cite: 129, 130].
* [cite_start]**Performance Metrics**: The model's accuracy is evaluated using **Mean Squared Error (MSE)** and **Mean Absolute Error (MAE)**, with experimental results showing high prediction accuracy[cite: 10, 148].
* [cite_start]**Resource Optimization**: The system's predictions can be used to optimize ranger patrols and allocate resources more effectively to critical areas, thereby improving conservation efforts[cite: 10].

## 🛠️ Methodology

[cite_start]The project's methodology follows a systematic workflow[cite: 78]:

1.  [cite_start]**Data Collection and Preprocessing**: High-quality animal movement data is collected from GPS-enabled tracking devices[cite: 81]. [cite_start]The data is cleaned by eliminating superfluous features and using interpolation to handle noisy or missing values[cite: 85].
2.  **Feature Engineering**: Spatio-temporal features, such as daily and seasonal patterns, are derived. [cite_start]Environmental variables like weather and vegetation density are also incorporated to enhance predictive accuracy[cite: 90, 93].
3.  [cite_start]**Model Training**: An LSTM-based Regression Neural Network is trained on the preprocessed and feature-engineered dataset[cite: 97, 104]. [cite_start]The **Adam optimizer** is used for efficient training, and **dropout layers** are included to prevent overfitting[cite: 115, 117].
4.  [cite_start]**Model Evaluation**: The model's performance is assessed using MSE and MAE[cite: 132]. [cite_start]The results showed a significant decrease in loss during training, with final validation MSE and MAE values of approximately 0.03 and 0.13, respectively[cite: 156, 174].
5.  [cite_start]**High-Risk Zone Identification**: Based on the model's predictions, animal trajectories are projected onto maps to create heatmaps that highlight high-risk poaching zones[cite: 129, 130].

<div align="center">
  <img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExM3V4cG9yZ2dzZnFhdDNwd3h4amF4MW9zazJreW9xYmFpdW9zMTYxYzY4bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/kFnd8yLwVn5c8/giphy.gif" alt="Data analysis" width="400"/>
</div>

---

## 📈 Results

* [cite_start]**Spatial Mapping**: The heatmaps successfully identified high-density animal zones in areas like tea plantations and forest margins in the Sakleshpura region of the Western Ghats[cite: 141].
* [cite_start]**Prediction Accuracy**: The LSTM model demonstrated strong performance with a final stabilized MSE loss of **0.03** and a validation MAE of approximately **0.13**[cite: 156, 174].
* [cite_start]**Model Comparison**: In a performance comparison with other models (Decision Tree, Random Forest, and Neural Network), the LSTM model had the lowest MSE (**0.0328**) and MAE (**0.1248**), demonstrating its superior suitability for this task[cite: 190, 208].

<div align="center">
  <img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNmt2ZzE4eW85bGRoN2FkdXZ6cHNiaW50d3Z3cTh1cWc4amU2OXN0MyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l0O9zFwO6yE/giphy.gif" alt="Chart showing results" width="400"/>
</div>

---

## ⏭️ Future Work

[cite_start]Future research aims to increase the prediction accuracy and utility of the system[cite: 217]:

* [cite_start]**Real-Time Deployment**: Implementing the system for real-time monitoring and prediction[cite: 12].
* [cite_start]**More Environmental Parameters**: Incorporating additional environmental data, such as seasonal patterns and weather changes[cite: 217].
* [cite_start]**Expanded Datasets**: Enlarging the datasets to include a wider range of species, greater geographical regions, and extended observation periods[cite: 219].
* [cite_start]**Enhanced Spatial Mapping**: Improving spatial mapping tools with advanced GIS interfaces for more detailed and clear visualizations of animal paths and high-risk areas[cite: 220].

<div align="center">
  <img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNWRhZDR1MWF1ZGx3eGZlbzRpOHJzZjlqeDVkcGR5aGNhdGd4dGdkeCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/3oKIPnAiaMCws8nOs8/giphy.gif" alt="Future development" width="400"/>
</div>

## 📜 License

This project is licensed under the MIT License - see the LICENSE.md file for details.
