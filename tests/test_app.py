import sys
import os
import pytest

# Garante que a raiz do projeto esteja no sys.path
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))

def test_import_app():
    """
    Testa se o app.py importa sem erros
    e se a biblioteca Streamlit está acessível.
    """
    import app
    assert hasattr(app, "st"), "O módulo app não possui o atributo 'st'"
