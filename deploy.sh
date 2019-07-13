rm function.zip
# zip function.zip lambda_function.py 

# zip packages
cd venv/lib/python3.7/site-packages/
zip -r9 ${OLDPWD}/function.zip .

# zip handler
cd $OLDPWD
zip -g function.zip lambda_function.py 

echo "[INFO] all file is zip, going to upload to AWS S3"
aws lambda update-function-code --function-name helloworld-python  --zip-file fileb://function.zip