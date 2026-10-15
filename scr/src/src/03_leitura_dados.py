import pandas as pd

df = pd.read_csv("SuperMarket Analysis.csv")

#Qual filial apresentou o maior faturamento?
print(df.groupby("Branch")["Sales"].sum().idxmax())

#Qual filial realizou a maior quantidade de vendas?
print(df.groupby("Branch")["Invoice ID"].nunique().idxmax())

#Qual linha de produto apresentou o maior faturamento?
print(df.groupby("Product line")["Sales"].sum().idxmax())

#Qual linha de produto recebeu a melhor avaliação média?
print(df.groupby("Product line")["Rating"].mean().idxmax())

#Qual foi a forma de pagamento mais utilizada?
print(df["Payment"].value_counts().idxmax())

#Qual foi o valor médio das vendas?
print(df["Sales"].mean())

#Qual foi a maior venda registrada?
print(df["Sales"].max())

#Em qual dia da semana ocorreu a maior quantidade de vendas?
df["Date"] = pd.to_datetime(df["Date"])
print(df["Date"].dt.day_name().value_counts().idxmax())