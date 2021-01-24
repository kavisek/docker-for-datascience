
import dash
import dash_html_components as html
import dash_core_components as dcc
import plotly.graph_objects as go
import pandas as pd
from dash.dependencies import Input, Output

# Load data
df = pd.read_csv('data/stockdata2.csv', index_col=0, parse_dates=True)
df.index = pd.to_datetime(df['Date'])

# render dataframe as html
html = df.to_html()
print(html)

#write html to file
text_file = open("index.html", "w")
text_file.write(html)
text_file.close()