rm function.zip
# zip function.zip lambda_function.py 

# zip packages
zip -r9 ./function.zip .

echo "[INFO] all file is zip, going to upload to AWS S3"
aws lambda update-function-code --function-name helloworld-python  --zip-file fileb://function.zip