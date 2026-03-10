import pandas as pd

dados = "https://www.ispdados.rj.gov.br/Arquivos/BaseDPEvolucaoMensalCisp.csv"

df = pd.read_csv(dados, encoding= "latin1", sep=";")
print(df.head())

##print(df.head(10)) #mprime as 10 primeiras linhas do dataframe
##print(df.tail()) #imprime as 5 últimas linhas do dataframe

df_furto_celular_cisp = df.groupby("cisp")["furto_celular"].sum().reset_index()
print(df_furto_celular_cisp)
