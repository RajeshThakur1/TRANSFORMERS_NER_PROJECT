#echo [$(date)]: "START"
#echo [$(date)]: "creating environment"
#conda create --prefix ./env python=3.7 -y
#echo [$(date)]: "activate environment"
#source activate ./env
#echo [$(date)]: "create folder and file structure"

for DIR in data_ingestion data_preperation data_validation model model_eval model_trainer
do
    echo "Creating", src/"NER_"$DIR
    mkdir -p src/"NER_"$DIR
    echo "Creating __init__.py inside the above folder"
    touch src/"NER_"$DIR/"__init__.py" src/"NER_"$DIR/$DIR".py"
    echo "from src.NER_"$DIR"."$DIR" import *" >> src/"NER_"$DIR/"__init__.py"
done
#pip install -r requirements.txt
#echo [$(date)]: "export conda environment"
#conda env export > conda.yaml
#echo "# ${PWD}" > README.md
#echo [$(date)]: "first commit"
#git add .
#git commit -m "first commit"
#?echo [$(date)]: "END"

# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/