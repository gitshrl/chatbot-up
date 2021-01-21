cd /opt/app

echo Set env variables
export PYTHONIOENCODING='utf8'

echo Start to train rasa
rasa train

echo Start rasa server with nlu model
rasa run --enable-api --cors "*" --debug -p $PORT

echo Start rasa x UI
rasa x
