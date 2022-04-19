import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  _card() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      height: 240,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      ),
      child: Column(
        children: [_head(), _footer(), _botao()],
      ),
    );
  }

  _head() {
    return Container(
      width: double.infinity,
      height: 140,
      padding: EdgeInsets.only(
        left: 20,
      ),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4),
          topRight: Radius.circular(4),
        ),
        color: Colors.lightBlue[300],
      ),
      child: Row(
        children: [_titulo(), _porcentagem()],
      ),
    );
  }

  _titulo() {
    return Container(
      width: 250,
      margin: EdgeInsets.only(
        top: 45,
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Desenvolvimento de Sistemas Móveis',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Spacer(),
            Text(
              'Turma: 0658-A-51N - Graduação',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            Spacer(flex: 5)
          ],
        ),
      ),
    );
  }

  _porcentagem() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 3.0, color: Colors.yellow),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('100%',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ],
      ),
    );
  }

  _footer() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Spacer(flex: 2),
          Icon(Icons.star_rounded, color: Colors.grey[300], size: 35),
          Spacer(),
          Icon(Icons.chat_bubble, color: Colors.grey[300], size: 30),
          Spacer(),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }

  _botao() {
    return Container(
      width: double.infinity,
      height: 30,
      margin: EdgeInsets.only(top: 8, left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.green[800],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Entrar na Sala',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  _tag() {
    return Container(
      width: 80,
      height: 20,
      margin: const EdgeInsets.only(top: 15),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20)),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '152103',
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          _card(),
          _tag(),
        ],
      );
}
