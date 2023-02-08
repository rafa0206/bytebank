import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  const Editor({
    Key? key,
    required TextEditingController controlador,
    required String rotulo,
    required String dica,
    IconData? icone,
  })  : _controlador = controlador,
        _rotulo = rotulo,
        _dica = dica,
        _icone = icone,
        super(key: key);

  final TextEditingController _controlador;
  final String _rotulo;
  final String _dica;
  final IconData? _icone;

  // Editor(this._controlador, this._rotulo, this._dica);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controlador,
        style: const TextStyle(fontSize: 24),
        decoration: InputDecoration(
          icon: _icone != null ? Icon(_icone) : null,
          labelText: _rotulo,
          hintText: _dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}