import 'package:flutter/material.dart';
export 'login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_balance_wallet_rounded, size: 72, color: Colors.black),
          Text(
            'My Wallet',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Senha de Segurança')),
          ),
          Padding(
              padding: EdgeInsets.only(top: 24),
              child: SizedBox(
                width: 200, // <-- match_parent
                height: 40, // <-- match-parent
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Text('Entrar'),
                  onPressed: () => Navigator.pushReplacementNamed(context, '/homepage'),
                ),
              )),
        ],
      ),
    );
  }
}
