from flask import Flask, request, jsonify
import os
from flask_cors import CORS
import requests

app = Flask(__name__)
CORS(app)

# Create a directory to save uploaded files
UPLOAD_FOLDER = 'uploads'
os.makedirs(UPLOAD_FOLDER, exist_ok=True)

@app.route('/upload', methods=['POST'])
def upload_audio():
    files = request.files
    if not files:
        app.logger.error("No files found in the request.")
        return jsonify({"error": "No files found in the request"}), 400

    for file in files.values():
        if file.filename == '':
            app.logger.error("No file selected or empty filename.")
            return jsonify({"error": "No file selected or empty filename"}), 400

        # Save the uploaded file
        try:
            file_path = os.path.join(UPLOAD_FOLDER, file.filename)
            file.save(file_path)
            app.logger.info(f"File saved at: {file_path}")
        except Exception as e:
            app.logger.error(f"Error saving file: {str(e)}")
            return jsonify({"error": "Error saving file"}), 500

    return jsonify({"message": "Files received successfully"}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001, debug=True)