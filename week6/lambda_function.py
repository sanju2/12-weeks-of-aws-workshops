import json

def lambda_handler(event, context):

    print("Received Event:")
    print(json.dumps(event, indent=2))

    bucket = event['Records'][0]['s3']['bucket']['name']
    file = event['Records'][0]['s3']['object']['key']

    print(f"Bucket : {bucket}")
    print(f"File   : {file}")

    return {
        "statusCode": 200,
        "body": "Success"
    }