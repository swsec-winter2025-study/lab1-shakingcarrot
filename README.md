[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/7qQ1AKOH)
# CrackMe Reverse Engineering Challenge

## 목표
- 제공된 **CrackMe 프로그램**을 역분석하여 올바른 비밀번호(`correct answer`)를 찾습니다.
- 찾은 정답을 `crackmeXX.txt` 파일에 기록하고 프로그램을 실행해 검증합니다.
- 모든 결과를 확인하려면 `test.sh` 스크립트를 실행합니다.

---

## 단계별 진행

### 1. CrackMe 프로그램 분석
- `crackme01.bin`을 역분석하여 올바른 비밀번호를 찾습니다.
- 분석 방법 예시:
  - `strings crackme01.bin` 명령으로 문자열 확인
  - `objdump -d crackme01.bin` 또는 `gdb`로 디버깅
  - 조건문 로직 확인 후 정답 추론

### 2. 정답 기록
```bash
echo password1 > crackme01.txt
```

### 3. 프로그램 실행 및 검증
```bash
./crackme01.bin crackme01.txt
```
출력:
```
Yes, it is correct!
```

### 4. 전체 결과 확인
```bash
/bin/bash test.sh
```


