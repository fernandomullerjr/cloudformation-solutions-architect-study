

aws cloudformation create-stack --stack-name web-stack \
--template-url https://tfstate-816678621138.s3.amazonaws.com/web-stack.json \
--parameters ParameterKey=KeyName,ParameterValue=fernando-Virginia \
--capabilities CAPABILITY_NAMED_IAM

fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$ aws cloudformation create-stack --stack-name web-stack \
> --template-url https://tfstate-816678621138.s3.amazonaws.com/web-stack.json \
> --parameters ParameterKey=KeyName,ParameterValue=fernando-Virginia \
> --capabilities CAPABILITY_NAMED_IAM
{
    "StackId": "arn:aws:cloudformation:us-east-1:816678621138:stack/web-stack/d8465a80-b477-11ec-8efb-0ac35cd460dd"
}
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$





aws cloudformation describe-stacks

fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$ aws cloudformation describe-stacks
{
    "Stacks": [
        {
            "StackId": "arn:aws:cloudformation:us-east-1:816678621138:stack/web-stack-NetworkStack-140X2VI96S3AQ/dc8e8b80-b477-11ec-9405-0e6110ea02d9",
            "StackName": "web-stack-NetworkStack-140X2VI96S3AQ",
            "Description": "AWS CloudFormation Sample Template that creates a VPC with DNS and public IPs enabled and two public subnets. Exports VPC and public subnet IDs.",
            "CreationTime": "2022-04-05T00:32:24.032000+00:00",
            "DeletionTime": "2022-04-05T00:32:40.543000+00:00",
            "RollbackConfiguration": {},
            "StackStatus": "DELETE_IN_PROGRESS",
            "DisableRollback": true,
            "NotificationARNs": [],
            "Capabilities": [
                "CAPABILITY_NAMED_IAM"
            ],
            "Tags": [],
            "ParentId": "arn:aws:cloudformation:us-east-1:816678621138:stack/web-stack/d8465a80-b477-11ec-8efb-0ac35cd460dd",
            "RootId": "arn:aws:cloudformation:us-east-1:816678621138:stack/web-stack/d8465a80-b477-11ec-8efb-0ac35cd460dd",
            "DriftInformation": {
                "StackDriftStatus": "NOT_CHECKED"
            }
        },
        {
            "StackId": "arn:aws:cloudformation:us-east-1:816678621138:stack/web-stack/d8465a80-b477-11ec-8efb-0ac35cd460dd",
            "StackName": "web-stack",
            "Description": "AWS CloudFormation Template that creates a launch template, Auto Scaling group, and an Application Load Balancer.",
            "Parameters": [
                {
                    "ParameterKey": "KeyName",
                    "ParameterValue": "fernando-Virginia"
                },
                {
                    "ParameterKey": "WebserverCapacity",
                    "ParameterValue": "2"
                },
                {
                    "ParameterKey": "SSHLocation",
                    "ParameterValue": "0.0.0.0/0"
                },
                {
                    "ParameterKey": "InstanceType",
                    "ParameterValue": "t2.small"
                }
            ],
            "CreationTime": "2022-04-05T00:32:16.591000+00:00",
            "DeletionTime": "2022-04-05T00:32:25.711000+00:00",
            "RollbackConfiguration": {},
            "StackStatus": "ROLLBACK_IN_PROGRESS",
            "DisableRollback": false,
            "NotificationARNs": [],
            "Capabilities": [
                "CAPABILITY_NAMED_IAM"
            ],
            "Tags": [],
            "DriftInformation": {
                "StackDriftStatus": "NOT_CHECKED"
            }
        }
    ]
}
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$




- Stack apresentou erros.
- Falha ao tentar criar a PublicVPC e o InternetGateway.



aws cloudformation delete-stack --stack-name web-stack


aws cloudformation create-stack --stack-name web-stack \
--template-url https://tfstate-816678621138.s3.amazonaws.com/web-stack.json \
--parameters ParameterKey=KeyName,ParameterValue=fernando-Virginia \
--capabilities CAPABILITY_NAMED_IAM


fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$ aws cloudformation create-stack --stack-name web-stack \
> --template-url https://tfstate-816678621138.s3.amazonaws.com/web-stack.json \
> --parameters ParameterKey=KeyName,ParameterValue=fernando-Virginia \
> --capabilities CAPABILITY_NAMED_IAM
{
    "StackId": "arn:aws:cloudformation:us-east-1:816678621138:stack/web-stack/ef91ead0-b47a-11ec-afcd-0ae34c42e8a1"
}
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$




- Haviam erros no JSON:
/home/fernando/cursos/aws/Chapter14-TheOperationalExcellencePillar/Web-stack-COM-PROBLEMA.json

- Foi corrigido o JSON e criado 1 novo:
/home/fernando/cursos/aws/Chapter14-TheOperationalExcellencePillar/web-stack.json



-

- Stack apresentou erros.
- Falha ao tentar criar a PublicVPC e o InternetGateway.
"StackStatus": "DELETE_IN_PROGRESS",




aws cloudformation create-stack --stack-name web-stack \
--template-url https://tfstate-816678621138.s3.amazonaws.com/web-stack.json \
--parameters ParameterKey=KeyName,ParameterValue=fernando-Virginia \
--capabilities CAPABILITY_NAMED_IAM


2022-04-04 22:21:04 UTC-0300	web-stack	
ROLLBACK_IN_PROGRESS	The following resource(s) failed to create: [NetworkStack, InstanceRole]. Rollback requested by user.
2022-04-04 22:21:03 UTC-0300	NetworkStack	
CREATE_FAILED	Resource creation cancelled
2022-04-04 22:21:03 UTC-0300	InstanceRole	
CREATE_FAILED	API: iam:CreateRole User: arn:aws:iam::816678621138:user/fernandomjunior is not authorized to perform: iam:CreateRole on resource: arn:aws:iam::816678621138:role/InstanceRole with an explicit deny




fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$ aws s3 ls

An error occurred (AccessDenied) when calling the ListBuckets operation: Access Denied
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$ export AWS_PROFILE=fernandomuller
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$ aws s3 ls
2022-04-02 19:13:00 tfstate-816678621138
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$



Seguiu com problema


fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$ aws cloudformation create-stack --stack-name web-stack \
> --template-url https://tfstate-816678621138.s3.amazonaws.com/web-stack.json \
> --parameters ParameterKey=KeyName,ParameterValue=fernando-Virginia \
> --capabilities CAPABILITY_NAMED_IAM

You must specify a region. You can also configure your region by running "aws configure".
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$ aws configure
AWS Access Key ID [****************SIOE]:  
AWS Secret Access Key [****************BYEv]:  
Default region name [None]: us-east-1
Default output format [None]: json
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$ aws cloudformation create-stack --stack-name web-stack --template-url https://tfstate-816678621138.s3.amazonaws.com/web-stack.json --parameters ParameterKey=KeyName,ParameterValue=fernando-Virginia --capabilities CAPABILITY_NAMED_IAM

An error occurred (AlreadyExistsException) when calling the CreateStack operation: Stack [web-stack] already exists
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$ aws cloudformation create-stack --stack-name web-stack --template-url https://tfstate-816678621138.s3.amazonaws.com/web-stack.json --parameters ParameterKey=KeyName,ParameterValue=fernando-Virginia --capabilities CAPABILITY_NAMED_IAM
{
    "StackId": "arn:aws:cloudformation:us-east-1:816678621138:stack/web-stack/03bb1000-b47f-11ec-845e-0e2dc6386985"
}
fernando@debian10x64:~/cursos/aws/Chapter14-TheOperationalExcellencePillar$





aws cloudformation describe-stacks