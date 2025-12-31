#%%
# from google.cloud import storage
import requests
import json
from pyspark.sql import SparkSession
from pyspark.sql.functions import col, explode
#%%
# Set up API configuration and page request
api_key = 'aQTGsgvcVjteBUOA4zuHVGhiNKng3zX1Y0Cu4PNM'
base_url = "https://api.data.gov/ed/collegescorecard/v1/schools" 
all_data = []
params = {
    'api_key': api_key,
    'per_page': 100  # 每页100条数据
}
page = 1
#%%
while page <= 5:
    params['page']= page,  # 从第一页开始
    response = requests.get(base_url, params=params)
    if response.status_code != 200:
        print(f"Failed to fetch page {page}: response.status_code")
    data = response.json()
    if 'results' in data and len(data['results']) > 0:
        all_data.extend(data['results'])
        page += 1  # 获取下一页
    else:
        print("No more data available.")
        break
#%%
# Crate Spark Session and convert the list into pyspark dataframe
spark = SparkSession.builder \
    .appName("raw_data_clean") \
    .getOrCreate()

df = spark.createDataFrame(all_data)
df.show(truncate=False)