from flask import Flask, render_template,  make_response

app = Flask(__name__, static_url_path="/static")


@app.route('/pst')
def do_pst_convert():
    response = make_response(render_template('pst_view.html'))
    return response


@app.route('/darcmail')
def do_darcmail_convert():
    response = make_response(render_template('darcmail_control.html'))
    return response


@app.route('/nlp-convert')
def do_nlp_convert():
    response = make_response(render_template('nlp_convert.html'))
    return response


@app.route('/')
def do_main():
    response = make_response(render_template('index.html'))
    return response


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True)