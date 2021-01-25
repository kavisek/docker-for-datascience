import dash
import dash_html_components as html
import dash_core_components as dcc
import plotly.graph_objects as go
import pandas as pd
from dash.dependencies import Input, Output
from flask import Flask, render_template
app = Flask(__name__)

df = pd.read_csv('data/stockdata2.csv', index_col=0, parse_dates=True)
df.index=pd.to_datetime(df['Date'])

@app.route('/', methods=("POST", "GET"))
def html_table():

   return render_template('view.html',  tables=[df.to_html(classes='data')], titles=df.columns.values)

if __name__ == '__main__':
   app.run(host='0.0.0.0',debug=True,port=5000)