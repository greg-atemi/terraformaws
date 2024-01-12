import os
import s3fs
import logging
from dotenv import load_dotenv
import easygui

# Load environment variables from .env file
load_dotenv()

# Set up logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Retrieve AWS credentials from environment variables
aws_access_key_id = os.getenv("access_key")
aws_secret_access_key = os.getenv("s3_bucket")

# Replace these values with your S3 bucket information
bucket_name = "greg-bucket2024"
s3_key = "scripts/"

def upload_image_to_s3fs(image_path):
    try:
        # Initialize an S3 filesystem using s3fs
        s3 = s3fs.S3FileSystem(anon=False, key=aws_access_key_id, secret=aws_secret_access_key)

        # Extract the filename from the provided image path
        image_filename = os.path.basename(image_path)
        s3_object_path = f'{bucket_name}/{s3_key}{image_filename}'

        # Upload the image to S3 using s3fs
        with open(image_path, 'rb') as data:
            with s3.open(s3_object_path, 'wb') as s3_file:
                s3_file.write(data.read())

        # Get the S3 bucket domain name
        bucket_domain_name = f"{bucket_name}.s3.amazonaws.com"

        logger.info(f"Image uploaded successfully to S3.\n S3 Object Path: {s3_object_path}")
        logger.info(f"S3 Bucket Domain Name: {bucket_domain_name}")

    except Exception as e:
        logger.error(f"Error uploading image to S3: {str(e)}")

if __name__ == "_main_":
    try:
        # Prompt the user to select an image file
        image_path = easygui.fileopenbox(msg="Select an Image File", filetypes=[".png", ".jpg", "*.jpeg"])

        # Check if the user canceled the file selection
        if not image_path:
            raise ValueError("Image selection canceled.")

        # Upload the selected image to S3
        upload_image_to_s3fs(image_path)
        # print("Image uploaded successfully to S3")

    except Exception as e:
        logger.error(f"Error: {str(e)}")
