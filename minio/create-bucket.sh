#!/bin/bash

write_policy_file(){
    cat > "$1" <<POLICY
    {
    "Version": "2012-10-17",
    "Statement": [
        {
        "Action": [
            "s3:ListBucket",
            "s3:DeleteObject",
            "s3:GetObject",
            "s3:PutObject"
        ],
        "Effect": "Allow",
        "Resource": [
            "arn:aws:s3:::${S3_BUCKET}/*",
            "arn:aws:s3:::${S3_BUCKET}"
        ],
        "Sid": "AllowThisBucketOnly"
        }
    ]
    }
POLICY
}

policy_file=/tmp/allowthisbucketonly.json

sleep 5 \
&& /usr/bin/mc alias set minio "${S3_ENDPOINT}" minioadmin minioadmin \
&& mc admin user add minio "${S3_ACCESS_KEY_ID}" "${S3_SECRET_ACCESS_KEY}" \
&& write_policy_file "$policy_file" \
&& mc admin policy add minio allowthisbucketonly "$policy_file" \
&& mc admin policy set minio allowthisbucketonly user="${S3_ACCESS_KEY_ID}" \
&& mc mb minio/"${S3_BUCKET}" \
&& exit 0;