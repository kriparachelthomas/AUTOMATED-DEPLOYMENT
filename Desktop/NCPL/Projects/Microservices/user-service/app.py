from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/signup', methods=['POST'])
def signup():
    # Handle user signup
    return jsonify({"message": "User signed up successfully"}), 201

if __name__ == '__main__':
    print("Flask app is running!")
    app.run(host='0.0.0.0', port=5000)
