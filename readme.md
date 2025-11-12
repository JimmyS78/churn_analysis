# 🧩 Projet Data Analytics : Prédiction et analyse du churn client

## 🎯 Objectif
Analyser et prédire la probabilité de churn des clients pour une entreprise de télécommunication.  
Identifier les segments les plus à risque et proposer des leviers d’action.

---

## 🧰 Stack Technique
- **SQL (PostgreSQL)** → stockage, nettoyage, création de vues  
- **Python (pandas, scikit-learn, seaborn)** → exploration et modélisation  
- **Power BI** → visualisation et dashboard interactif  

---

## 📊 Données
Source : [Telco Customer Churn – Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)

Variables clés :  
- Informations client (âge, contrat, services souscrits)  
- Charges mensuelles / totales  
- Churn (Yes/No)

---

## ⚙️ Pipeline
1. Import du CSV dans SQL  
2. Nettoyage et création de vues analytiques  
3. Analyse exploratoire et feature engineering (Python)  
4. Modélisation prédictive (régression logistique)  
5. Dashboard Power BI connecté à la base SQL

---

## 📈 Insights Clés
- Les contrats **mensuels** présentent un taux de churn > 40 %.  
- Les clients à **charges mensuelles élevées** et **courte ancienneté** sont les plus à risque.  
- Les offres **Internet Fiber Optic** ont un churn plus élevé que DSL.

---

## 📊 Dashboard Power BI
- KPI : taux de churn global  
- Histogramme : churn par contrat  
- Heatmap : churn par type d’Internet  
- Table : top 10 segments à risque  

---

## 🚀 Comment exécuter le projet
1. Importer le CSV dans une base SQL (`postgresql`)
2. Exécuter les scripts SQL dans `/sql`
3. Lancer le notebook Python `/notebooks/churn_analysis.ipynb`
4. Ouvrir le fichier Power BI `/powerbi/dashboard.pbix`
5. Configurer la connexion SQL pour lire les vues créées

---

## 📷 Exemple de Dashboard
<img width="1048" height="613" alt="image" src="https://github.com/user-attachments/assets/2cef2173-3519-4a64-802c-c9a56f8aa02d" />


---

## 👤 Auteur
SHI Jimmy 
Projet personnel de Data Analytics – Full Stack Data Analyst  

Stack : **SQL + Python + Power BI**

