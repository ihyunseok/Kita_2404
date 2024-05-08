
**1일차**
  Hugging Face / 오픈소스 모아놓은 사이트
  Upstage 
  * AI Hub : AI 개발지원 > AI바우처 지원 에서 업체 확인 가능
  * 한국데이터산업진흥원 : 데이터 바우처 지원사업 확인 가능
  * Nipa

**2일차**
\t : Tab 
\n : 행 바꿈 (명령어 앞에는 못 씀(만약에 쓸 경우 (~~, '\n'), 수식하는 문어 앞에다가 쓸 수 있음

* 인덱스는 0번째부터 시작하며 → [0]
  대괄호 안에 :가 하나 있는 경우
  → [0:t] 0번째 인덱스부터 t번째 인덱스까지 인덱싱됨.
  → [0:] t가 없는 경우 마지막 인덱스까지 인덱싱됨.

* 인덱스 수정 시 해당 인덱스 번호를 바꿀 내용으로 전환하기
  → list[t] = 내용
* 인덱스 삭제 시 del list[t] 로 하면 삭제됨.
* Extend : 반복 가능한 개체의 모든 요소를 리스트에 추가 가능 (1~t개)
  → list.extend([추가할 내용])
* append : 단일 요소만 추가 가능
  → list.append([단일내용])
* insert : 원하는 내용을 원하는 위치에 넣을 수 있음
  → list.insert(**삽입하려는 인덱스 번호, 삽입하려는 내용**) 

**3일차**

add : +
sub : -
mul : *
truediv : /
floordiv : // (몫)
mod : % (나머지)

* 리스트의 최댓값 / 최솟값
  → 다른 리스트 이름 = Max(해당 리스트이름) / 다른 리스트 이름 = Min(해당 리스트 이름)

* 리스트의 합계와 평균
  → Total = **Sum**(리스트 이름) / average = total / **len**(리스트 이름) 

** 리스트와 튜플의 차이 (List / Tuple)
List의 형태 : [ ]
Tuple의 형태 : ( ) / 소괄호가 없는 경우도 type : Tuple 
→ List는 요소를 수정할 수 있지만, list[] = 바꿀 내용
→ Tuple의 요소는 수정할 수 없음, tuple[] = 바꿀 내용

* 딕셔너리 형태 : { keys : values , keys : values }
→ 딕셔너리이름.keys()
→ 딕셔너리이름.values()
→ 딕셔너리이름.items() → keys + values

* set 을 사용할 경우 형태가 딕셔너리 형태로 바뀌기 때문에 list 로 바꿔줘야한다.
  
s1 = {10,20,30,40,50}
s2 = {40,70,80,90,100}

### 합집합 연산자 | : Shift + \
result = s1 | s2
print(result)

### 합집합 연산자 union
result = s1.union(s2)
print(result)

### 교집합 연산자 & : Shift + 7
result = s1 & s2
print(result)

result = s1.intersection(s2)
print(result)

### 차집합
result = s1 - s2
print(result)
result = s2.difference(s1)
print(result)

### 대칭 차집합
result = s1 ^ s2
print(result)
result = s1.symmetric_difference(s2)
print(result)

**4일차**

# 사용자 함수의 형태
1. 입력값, 출력값 모두 있는 경우
2. 입력값만 있는 경우
   → return를 두 개 사용하는 경우 else에 끝나는 return 결과값에는 None이 나온다. (결과 항목에 Print를 붙이는 경우) 
4. 출력값만 있는 경우
5. 입출력값이 없는 경우


**소문자 / 대문자**

- 소문자 : word = word.lower()
- 대문자 : word = word.upper()

### 복합 대입 연산자

+=  -=  *=  /=  %=

**문자열 포멧**
- %()d : 정수
- %()f : 실수
- %()s : string

**2진수 / 8진수 / 16진수**

- 2진수  : 0b
- 8진수  : 0o
- 16진수 : 0x
→ 10 : A / 11 : B / 12 : C / 13 : D / 14 : E / 15 : F

* 10진수를 2진수로 만드는 명령어
→ bin()

* 10진수를 8진수로 만드는 명령어
→ oct()

* 10진수를 16진수로 만드는 명령어
→ hex()

**5일차**

### 문자열을 , . ? ! (공백) 이 있는 리스트로 만들 때

import re
re.split('[ , . ? !]+' 문자열변수) 를 사용한다.
→ ( + )는 '대괄호 안에 있는 기호들이 1번 이상 사용할 경우' 라는 뜻이다.

* 10의 비트 길이를 계산
int = 10 
→ int.bit_length()

* 함수의 이름 출력하기
→ print(함수이름._ _ name _ _ )

#### break / continue
→ break :해당 반복문의 조건에서 멈추고 진행
→ continue : 해당 반복문의 조건은 건너뛰고 진행

**6일차**

- random.sample(sequence, k) : sequence: 리스트, 집합, range() 등 random의 범위가 될 sequence 입력 / k: 반환될 리스트의 크기 입력\
→ sample은 중복 없이 요소를 선택 할 수 있음. 
- random.choice(sequence) for i in range(k)

```
** 5개의 과일 중 2개의 과일 랜덤으로 출력

import random
mylist = ["apple", "banana", "cherry", "orange", "blueberry"]
print(random.sample(mylist, k=2))

#### result
['orange', 'blueberry']
```
```
** 0에서 99 중 10개의 숫자를 랜덤으로 출력

import random
data_list = random.sample(range(100), 10)
print(data_list)

#### result
[75, 20, 98, 60, 5, 47, 4, 21, 90, 52]
```
### f-string 내에서 { } 사용 시 변수 뿐만 아니라 Python 표현식도 올 수 있음.

## 표현식(Expression)
- 하나 이상의 값, 변수, 연산자, 함수 호출 등을 조합하여 평가(evaluate)될 때 값을 생성하거나 반환하는 코드 
- 표현식은 계산되어 값이 되는 모든 것을 의미

## 표현식의 예시:
- 수치 계산: 2 + 3는 5라는 값을 반환
- 문자열 조합: "Hello " + "World"는 "Hello World"라는 문자열을 생성
- 논리 연산: x > 5는 x의 값에 따라 True 또는 False를 반환
- 함수 호출: sum([1, 2, 3])은 리스트의 합인 6을 반환
- 조건식: x if x > 0 else -x는 x가 양수면 x를, 음수면 -x를 반환

## 현재 시간 코드
```
import datetime
import pytz

tz = pytz.timezone('Asia/Seoul')
now = datetime.datetime.now(tz)
now_time = now.hour
```

## 가위바위보 게임 코드
```
# Q. 3승할 때까지 진행하게 되는 가위바위보 게임 만들기

import random

com_hand = ['가위', '바위', '보']
win_case = {'가위':'바위', '바위':'보', '보':'가위'}
win_number = 0

print('가위 바위 보 게임을 시작합니다. 3승 시 종료')
print('!주의! : 오타는 패배로 간주됩니다.')

while True:
  com_select = com_hand[random.randint(0,2)]
  you_select = input('가위바위보 입력 : ')
  print(f'컴퓨터는 {com_select}입니다.')
  if win_case[com_select] == you_select:
      win_number += 1
      print(f'이겼습니다. 현재 {win_number}승 입니다.')
  else:
    if com_select == you_select:
      print('비겼습니다.')
    else:
      print('졌습니다.')
  if win_number == 3:
    print('3승을 달성하여 게임을 종료합니다.')
    break
```

### **7일차**

* 행 : len[x]
* 열 : len[0]


### **8일차**
```
def string_statistice(user_input):
    length = len(user_input)

    # 가장 자주 등장하는 문자 찾기
    from collections import Counter
    frequency = Counter(user_input)
    most_common = frequency.most_common(1)[0][0]

    # 숫자 개수 세기
    num_count = sum(c.isdigit() for c in user_input)

    # 대문자 개수 세기 
    uppercase_count = sum(c.isupper() for c in user_input)

    # 소문자 개수 세기
    lowercase_count = sum(c.islower() for c in user_input)

    # 결과 출력
    print(f"입력된 문자열의 길이 : {length}")
    print(f"가장 자주 등장하는 문자 : {most_common}")
    print(f"숫자의 갯수 : {num_count}")
    print(f"대문자의 갯수 : {uppercase_count}")
    print(f"소문자의 갯수 : {lowercase_count}")

user_input = input("")
string_statistice(user_input)
```

* lambda 함수 사용 시
→ map : / x : (수식) / 수식의 대한 **결과값을 저장**한다.
→ filter : / x: (조건) / **조건을 만족하는 x값을 저장**한다.

* 코드로 URL 가져오기 
```
먼저 requests 패키지와 BeautifulSoup 모듈을 가져옵니다. 이러한 모듈은 각각 HTTP 요청을 보내고 웹 페이지의 HTML을 파싱하는 데 사용됩니다.
fetch_website_content 함수를 정의합니다. 이 함수는 URL을 입력으로 받아와서 해당 웹페이지의 내용을 가져오고 출력합니다.
requests.get(url)을 사용하여 해당 URL에 GET 요청을 보냅니다.
요청이 성공하면(상태 코드 200), BeautifulSoup을 사용하여 HTML을 파싱하고 페이지의 제목을 출력합니다.
요청이 실패하면(상태 코드가 200이 아닌 경우), 오류 메시지와 함께 상태 코드를 출력합니다.
코드는 마지막으로 사용자로부터 URL을 입력 받고, 이 URL을 fetch_website_content 함수에 전달하여 해당 웹사이트의 내용을 가져옵니다.
코드를 실행하면 사용자가 입력한 URL의 웹페이지 제목이 출력됩니다. 만약 페이지가 존재하지 않거나 접근할 수 없는 경우 오류 메시지가 출력됩니다.
```

```
import requests
from bs4 import BeautifulSoup

def fetch_website_content(url):
  # URL에서 데이터를 가져옵니다.
  response = requests.get(url)
  if response.status_code == 200:
      soup = BeautifulSoup(response.text, 'html.parser')
      
      print("Page Title : ", soup.title.string if soup.title else "No title found")
  else:
      print("Failed to retrieve the webpage")
      print("Status code:", response.status_code)

if __name__ == "__main__":       

  url = input("")
  fetch_website_content(url)
```

* 실행 가능한 숫자를 입력받아서 (숫자,연산 기호) 계산해주는 명령어 : eval
```
print(eval(input('연산을 입력하세요. : ')))

expression = input('계산할 수식을 입력하세요. : ')
result = eval(expression)
print(f"계산 결과 : {result}")

data = [1,2,3,4,5]
operation = input("실행할 리스트 연산을 입력하세요 (예: 'data.append(6), 'data.pop()): > ")
eval(operation)
print(f'수정된 데이터 : {data}')
```
* **startswith() 함수는 문자열이 지정된 접두사로 시작하는지 여부를 확인합니다.**

* **9일차**

* str.upper or lower 메서드 : 문자열의 모든 문자를 대문자 / 소문자로 변경
  ```
  new_words = list(map(str.upper, words))
  ```
