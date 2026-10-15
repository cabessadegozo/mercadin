import pandas as pd

df = pd.read_csv("SuperMarket Analysis.csv")


print(df.columns.tolist())
print(df.dtypes)
print(df.head())