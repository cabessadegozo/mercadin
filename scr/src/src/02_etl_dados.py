import pandas as pd

df = pd.read_csv("SuperMarket Analysis.csv")
#remover colunas e linhas totalmente vazias
df = df.dropna(axis=1, how="all")
df = df.dropna(axis=0, how="all")

#remover duplicatas completas
df = df.drop_duplicates().copy()

# Converter a data e a hora
df["DATA_HORA"] = pd.to_datetime(
    df["Date"].astype(str) + " " + df["Time"].astype(str),
    format="%d/%m/%Y %I:%M:%S %p",
    errors="coerce"
)
df = df.dropna(subset=["DATA_HORA"])
df.to_csv("supermarket_sales_tratado.csv", index=False, encoding="utf-8-sig")

