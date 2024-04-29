
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
→ List는 요소를 수정할 수 있지만, list[0] = 바꿀 내용
→ Tuple의 요소는 수정할 수 없음, tuple[0] = 바꿀 내용

* 딕셔너리 형태 : { keys : values , keys : values }
→ 딕셔너리이름.keys()
→ 딕셔너리이름.values()
→ 딕셔너리이름.items() → keys + values

* set 을 사용할 경우 형태가 딕셔너리 형태로 바뀌기 때문에 list 로 바꿔줘야한다.
  
s1 = {10,20,30,40,50}
s2 = {40,70,80,90,100}

# 합집합 연산자 | : Shift + \
result = s1 | s2
print(result)

# 합집합 연산자 union
result = s1.union(s2)
print(result)

# 교집합 연산자 & : Shift + 7
result = s1 & s2
print(result)

result = s1.intersection(s2)
print(result)

# 차집합
result = s1 - s2
print(result)
result = s2.difference(s1)
print(result)

# 대칭 차집합
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

# 복합 대입 연산자

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












