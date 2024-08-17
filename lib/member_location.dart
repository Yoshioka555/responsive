import 'package:flutter/material.dart';
import 'package:labmaidfastapi/gemini/gemini_chat_page.dart';

//変更点
//新規作成
//作成した研究室の地図UIです
//仮でchatページに置いている
//適当な場所に配置しておいてください

class MemberLocation extends StatelessWidget {
  const MemberLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Lab Member Location'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: const Icon(Icons.psychology_alt),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatRoom()),
                  );
                },
              ),
            ),
          ],
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 15 / 9, // 画像のアスペクト比を設定
            child: LayoutBuilder(
              builder: (context, constraints) {
                double width = constraints.maxWidth;
                double height = constraints.maxHeight;
                return Container(
                  color: Colors.black12,
                  child: Stack(
                    children: [
                      // テレビ
                      Positioned(
                        left: width * 0.13,
                        top: height * 0,
                        child: Container(
                          width: width * 0.15,
                          height: height * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: FittedBox(child: Text('プロジェクター'))),
                        ),
                      ),
                      // 流し
                      Positioned(
                        left: width * 0,
                        top: height * 0.15,
                        child: Container(
                          width: width * 0.05,
                          height: height * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: Text('流し')),
                        ),
                      ),
                      // 棚
                      Positioned(
                        left: width * 0,
                        top: height * 0.3,
                        child: Container(
                          width: width * 0.05,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: Text('棚')),
                        ),
                      ),
                      // 冷蔵庫
                      Positioned(
                        left: width * 0,
                        top: height * 0.4,
                        child: Container(
                          width: width * 0.05,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: Text('冷蔵庫')),
                        ),
                      ),
                      // プリンター
                      Positioned(
                        left: width * 0,
                        top: height * 0.5,
                        child: Container(
                          width: width * 0.05,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: Text('プリンター')),
                        ),
                      ),
                      Positioned(
                        left: width * 0,
                        top: height * 0.6,
                        child: Container(
                          width: width * 0.05,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: Text('プリンター')),
                        ),
                      ),
                      // 長机
                      Positioned(
                        left: width * 0.13,
                        top: height * 0.15,
                        child: Container(
                          width: width * 0.15,
                          height: height * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.all(
                              Radius.elliptical(100, 200),
                            ),
                          ),
                          child: Center(child: Text('長机')),
                        ),
                      ),
                      // 本棚
                      Positioned(
                        left: width * 0.45,
                        top: height * 0,
                        child: Container(
                          width: width * 0.55,
                          height: height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: Text('本棚')),
                        ),
                      ),
                      // 機材置場
                      Positioned(
                        left: width * 0.35,
                        top: height * 0.9,
                        child: Container(
                          width: width * 0.05,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: Text('プリンター')),
                        ),
                      ),
                      Positioned(
                        left: width * 0.4,
                        top: height * 0.9,
                        child: Container(
                          width: width * 0.5,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: Text('機材置場')),
                        ),
                      ),
                      // サーバー
                      Positioned(
                        left: width * 0.9,
                        top: height * 0.9,
                        child: Container(
                          width: width * 0.05,
                          height: height * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: Text('サーバー')),
                        ),
                      ),
                      // その他の机の配置
                      Positioned(
                        left: width * 0.9,
                        top: height * 0.2,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.8,
                        top: height * 0.2,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.9,
                        top: height * 0.28,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.8,
                        top: height * 0.28,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.9,
                        top: height * 0.55,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.9,
                        top: height * 0.63,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.8,
                        top: height * 0.55,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.8,
                        top: height * 0.63,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      //左の机
                      Positioned(
                        left: width * 0.64,
                        top: height * 0.2,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.54,
                        top: height * 0.2,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.64,
                        top: height * 0.28,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.54,
                        top: height * 0.28,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.47,
                        top: height * 0.2,
                        child: Container(
                          width: width * 0.07,
                          height: height * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: Text('棚')),
                        ),
                      ),
                      Positioned(
                        left: width * 0.64,
                        top: height * 0.55,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.64,
                        top: height * 0.63,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.54,
                        top: height * 0.55,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.54,
                        top: height * 0.63,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.44,
                        top: height * 0.63,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.44,
                        top: height * 0.55,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.34,
                        top: height * 0.63,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width * 0.34,
                        top: height * 0.55,
                        child: Container(
                          width: width * 0.1,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
