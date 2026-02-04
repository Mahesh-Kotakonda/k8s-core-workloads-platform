from flask import Flask, jsonify
import os
import socket

app = Flask(__name__)

BACKEND_VERSION = os.getenv("BACKEND_VERSION", "unknown")
ENVIRONMENT = os.getenv("ENVIRONMENT", "unknown")
HOSTNAME = socket.gethostname()

@app.route("/api/message", methods=["GET"])
def message():
    return jsonify({
        "service": "backend",
        "backend_version": BACKEND_VERSION,
        "environment": ENVIRONMENT,
        "pod": HOSTNAME,
        "message": f"Hello from BACKEND-{BACKEND_VERSION.upper()}"
    })

@app.route("/health", methods=["GET"])
def health():
    return jsonify({"status": "ok"}), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=3000)
