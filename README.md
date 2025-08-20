
  <h1>🌿 Poaching Detection in Karnataka using Machine Learning 🤖</h1>
</div>

## 📄 Overview

This project presents a machine learning-based system to combat **wildlife poaching** in Karnataka's diverse ecosystems. Traditional surveillance methods, such as ranger patrols, are often insufficient for monitoring large forest areas due to resource constraints and the unpredictable nature of poaching activities. This system addresses these challenges by using a **Long Short-Term Memory (LSTM)** neural network to predict high-risk poaching zones.

By analyzing animal movement data and dynamic environmental factors, the LSTM model can forecast animal movements and identify potential poaching hotspots, offering a scalable and adaptable solution to support conservation efforts.

## ✨ Features

* **Predictive Modeling**: Utilizes an LSTM-based Regression Neural Network to forecast animal movement trajectories and pinpoint areas at high risk for poaching.
* **Data-Driven Insights**: The model is trained on high-quality animal movement data from GPS tracking devices, which includes details like timestamps, latitude, longitude, and habitat type.
* **Spatial Mapping**: Generates heatmaps by superimposing animal movement trajectories on habitat data to visualize high-activity zones, which are likely targets for poachers.
* **Performance Metrics**: The model's accuracy is evaluated using **Mean Squared Error (MSE)** and **Mean Absolute Error (MAE)**, with experimental results showing high prediction accuracy.
* **Resource Optimization**: The system's predictions can be used to optimize ranger patrols and allocate resources more effectively to critical areas, thereby improving conservation efforts.

## 🛠️ Methodology

The project's methodology follows a systematic workflow:

1.  **Data Collection and Preprocessing**: High-quality animal movement data is collected from GPS-enabled tracking devices. The data is cleaned by eliminating superfluous features and using interpolation to handle noisy or missing values.
2.  **Feature Engineering**: Spatio-temporal features, such as daily and seasonal patterns, are derived. Environmental variables like weather and vegetation density are also incorporated to enhance predictive accuracy.
3.  **Model Training**: An LSTM-based Regression Neural Network is trained on the preprocessed and feature-engineered dataset. The **Adam optimizer** is used for efficient training, and **dropout layers** are included to prevent overfitting.
4.  **Model Evaluation**: The model's performance is assessed using MSE and MAE. The results showed a significant decrease in loss during training, with final validation MSE and MAE values of approximately 0.03 and 0.13, respectively.
5.  **High-Risk Zone Identification**: Based on the model's predictions, animal trajectories are projected onto maps to create heatmaps that highlight high-risk poaching zones.


---

## 📈 Results

* **Spatial Mapping**: The heatmaps successfully identified high-density animal zones in areas like tea plantations and forest margins in the Sakleshpura region of the Western Ghats.
* **Prediction Accuracy**: The LSTM model demonstrated strong performance with a final stabilized MSE loss of **0.03** and a validation MAE of approximately **0.13**.
* **Model Comparison**: In a performance comparison with other models (Decision Tree, Random Forest, and Neural Network), the LSTM model had the lowest MSE (**0.0328**) and MAE (**0.1248**), demonstrating its superior suitability for this task.

<div align="center">
  
</div>

---

## ⏭️ Future Work

Future research aims to increase the prediction accuracy and utility of the system:

* **Real-Time Deployment**: Implementing the system for real-time monitoring and prediction.
* **More Environmental Parameters**: Incorporating additional environmental data, such as seasonal patterns and weather changes.
* **Expanded Datasets**: Enlarging the datasets to include a wider range of species, greater geographical regions, and extended observation periods.
* **Enhanced Spatial Mapping**: Improving spatial mapping tools with advanced GIS interfaces for more detailed and clear visualizations of animal paths and high-risk areas.



## 📜 License

This project is licensed under the MIT License - see the LICENSE.md file for details.
