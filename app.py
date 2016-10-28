
from flask import Flask,request,abort,Response,jsonify
import requests

app = Flask(__name__)

@app.route('/drill/<url>', methods=["POST"])
def drill(url):
   headers = {"Content-Type": "application/json"}
   data = requests.post('http://localhost:8047/query.json', headers=headers, stream=True, data=request.data).content
   res = Response(response=data, status=200, mimetype="application/json") 
   return(res)

app.run('0.0.0.0', debug=True)
