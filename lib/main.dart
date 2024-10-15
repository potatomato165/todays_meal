import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MenuRecommenderApp());
}

class MenuRecommenderApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      title: 'Menu Recommender',
      theme: ThemeData( //화면의 전체 테마, 꾸미는 다양한 요소
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(), //처음 나오는 화면
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List<String> southGate = [ //남문 식당 리스트 //final 불변
    '수저가/ 추천 메뉴: 고기짬뽕',
    '코코카츠/ 추천 메뉴: 카츠동',
    '코코카츠/ 추천 메뉴: 김치치즈동',
    '코코카츠/ 추천 메뉴: 코코카츠',
    '김밥천국/ 추천 메뉴: 치즈돈까스',
    '김밥천국/ 추천 메뉴: 순두부찌개',
    '용싸키친/ 추천 메뉴: 스테이크덮밥',
    '용싸키친/ 추천 메뉴: 철판치즈김치볶음밥',
    '용싸키친/ 추천 메뉴: 닭갈비덮밥',
    '용싸키친/ 추천 메뉴: 돈가스카레우동',
    '용싸키친/ 추천 메뉴: 소고기차오면',
    '봉구스밥버거/ 추천 메뉴: 봉구킹',
    '세아마라탕/ 추천 메뉴: 마라탕',
    '바른치킨/ 추천 메뉴: 반반바른치킨',
    '태광식당/ 추천 메뉴: 제육볶음',
    '정밥/ 추천 메뉴: 제육덮밥',
    '김숙성/ 추천 메뉴: 김숙성 스페셜',
    '포엔띠우/ 추천 메뉴: 퍼보',
    '포엔띠우/ 추천 메뉴: 후띠우',
    '프랭크버거/ 추천 메뉴: 베이컨치즈버거세트',
    '와규와규/ 추천 메뉴: 와규 국밥',
    '와규와규/ 추천 메뉴: 와규 불고기 전골',
    '멘야요시/ 추천 메뉴: 야끼소바',
    '멘야요시/ 추천 메뉴: 매운미소라멘',
    '죽마고우/ 추천 메뉴: 고등어정식',
    '죽마고우/ 추천 메뉴: 제육볶음&김치찌개정식',
    '남원추어탕/ 추천 메뉴: 추어탕',
    '짜장상회/ 추천 메뉴: 짜장면',
    '짜장상회/ 추천 메뉴: 볶음밥',
    '용궁설렁탕/ 추천 메뉴: 설렁탕',
    '서강순대국뼈해장국/ 추천 메뉴: 순대국'

  ];

   List<String> mainGate = [ //정문 식당 리스트
    '마포쌈밥/ 추천 메뉴: 쌈밥정식',
    '이태리부대찌개/ 추천 메뉴: 부대전골',
    '매운쭈꾸미찐쭈/ 추천 메뉴: 쭈꾸미',
    '서강곱창/ 추천 메뉴: 야채곱창',
    '포옹남/ 추천 메뉴: 쌀국수',
    '핵밥/ 추천 메뉴: 돈코츠라멘',
    '써브웨이/ 추천 메뉴: 이탈리안BMT(파마산오레가노, 모짜렐라치즈, 야채 피클 빼고 다, 아보카도 추가, 소금, 후추 , 올리브유)',
    '노고산숯불갈비/ 추천 메뉴: 돼지갈비',
    '거북이의주방/ 추천 메뉴: 돈까스카레',
    '장수보감/ 추천 메뉴: 반계탕',
    '홍두깨칼국수/ 추천 메뉴: 칼국수',
    '덕승루/ 추천 메뉴: 양꼬치무한리필',
    '덕승루/ 추천 메뉴: 간짜장',
    '벌떼식당/ 추천 메뉴: 제육볶음',
    '뜸들이다/ 추천 메뉴: 삼겹살카레',
    '뜸들이다/ 추천 메뉴: 도란도란',
    '청석골감자탕/ 추천 메뉴: 뼈해장국',
    '청석골감자탕/ 추천 메뉴: 물냉면',
    '퐁타이/ 추천 메뉴: 소고기 쌀국수',
    '퐁타이/ 추천 메뉴: 팟타이 꿍',
    '피자몰/ 추천 메뉴: 피자뷔페',
    '로운샤브샤브/ 추천 메뉴: 샤브새브무한리필',
    '카츠업/ 추천 메뉴: 치즈불카츠',
    '카츠업/ 추천 메뉴: 맵크반반카츠',
    '정육면체/ 추천 메뉴: 홍탕 우육면',
    '렌게/ 추천 메뉴: 진한육수라멘',
    '덮당/ 추천 메뉴: 김치짜글이덮당',
    '덮당/ 추천 메뉴: 목살덮당',
    '수엠부'
  ];

   List<String> backGate = [ //후문 식당 리스트
    '마포광안리/ 추천 메뉴: 회덮밥',
    '마포광안리/ 추천 메뉴: 육회비빔밥',
    '톨/ 추천 메뉴: 마제돌솥밥',
    '신촌맛집떡볶이돈까스/ 추천 메뉴: 수제돈까스',
    '신촌맛집떡볶이돈까스/ 추천 메뉴: 떡볶이',
    '미가/ 추천 메뉴: 육회비빔밥',
    '미가/ 추천 메뉴: 제육덮밥',
    '샨샨/ 추천 메뉴: 짬뽕',
    '샨샨/ 추천 메뉴: 마파두부덮밥',
    '을밀대/ 추천 메뉴: 평양냉면',
    '떡밀밀/ 추천 메뉴: 밀밀떡볶이',
    '재모식당/ 추천 메뉴: 돈까스',
    '재모식당/ 추천 메뉴: 제육덮밥',
    '재모식당/ 추천 메뉴: 돼지불백',
    '순이네바지락칼국수/ 추천 메뉴: 칼국수',
    '양지분식/ 추천 메뉴: 라볶이',
    '진스키친/ 추천 메뉴: 리조또',
    '마포만두/ 추천 메뉴: 갈비만두, 떡볶이',
    '더바스켓/ 추천 메뉴: 치킨세트',
    '홍콩반점/ 추천 메뉴: 짜장밥',
    '홍콩반점/ 추천 메뉴: 고기짜장',
    '정든그릇/ 추천 메뉴: 정든카츠',
    '정든그릇/ 추천 메뉴: 연어덮밥',
    '남매밥상/ 추천 메뉴: 화덕고등어구이',
    '남매밥상/ 추천 메뉴: 직화제육볶음'


  ];

  String gate = '정문';  // 초기 드롭다운 선택 값
  String choocheon = '추천을 받아보세요!';

  void _recommendMenu() {
    final random = Random();
    setState(() {
      if (gate == '남문') { //각 문마다 식당 개수를 숫자로 해서 랜덤으로 돌려 인덱스로 사용
        choocheon = southGate[random.nextInt(southGate.length)];
      } else if (gate == '정문') {
        choocheon = mainGate[random.nextInt(mainGate.length)];
      } else if (gate == '후문') {
        choocheon = backGate[random.nextInt(backGate.length)];
      }});
  }

  @override
  build(context) {
    return Scaffold( //기본상중하 구조 만들기
      body: Column(//세로방향
        children: [
          Container(
            padding: EdgeInsets.all(16.0),//여백
            color: Colors.yellow,
            child: Row(
              children: [
                Image.asset(
                  'assets/sogang_logo.png',
                  width: 80,
                  height: 80,
                ),
                SizedBox(width: 10),//컨테이너보다 가벼움, 똑같이 네모
                Text(
                  '오메추(오늘 메뉴 추천)',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child:Container( color: Colors.yellow,
             child: Center(
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //중앙으로 정렬
                children: <Widget>[
                   SizedBox(height: 100, width: 100,
                      child:Image.asset('assets/alos.webp')),
                  Container(color:Colors.yellow, //색을 바꾸고자 했으나 노랑이 가장 어울림
                  child: DropdownButton<String>(
                    value: gate,
                    items: <String>['남문', '정문', '후문'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        gate = newValue!;
                        choocheon = '오늘의 메뉴 추천!';
                      });
                    },
                  ),
                 ),
                  SizedBox(height: 20),
                  Text(
                    choocheon,
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                    ElevatedButton(
                    onPressed: _recommendMenu,
                    child: Text('오메추 슛!')
                  ),
                    ],
              ),
            ),
          ),
          ),
          ],
      ),
    );
  }
}
