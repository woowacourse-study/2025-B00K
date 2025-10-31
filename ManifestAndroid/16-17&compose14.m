## Activity & Task

### FLAG_ACTIVITY_NEW_TASK | FLAG_ACTIVITY_CLEAR_TOP를 함께 사용하는 이유  
새로운 태스크에서 액티비티를 시작하되, 이미 존재하는 동일한 액티비티가 있다면 중복 생성하지 않고 기존 액티비티 위의 모든 액티비티를 제거하고 재사용하기 위함.
<details>
<summary>정답 보기</summary>
기존 액티비티 인스턴스를 재활용하면서 백스택을 정리해, 불필요한 액티비티 중복 생성을 방지한다.
</details>

---

### 태스크(Task)란 무엇인가요?  
사용자가 앱 내에서 수행하는 작업의 단위로, 백스택에 의해 관리되는 액티비티의 집합.
<details>
<summary>정답 보기</summary>
하나의 태스크는 액티비티 백스택으로 구성된 사용자 작업의 흐름 단위이다.
</details>

---

### 후입선출(LIFO)이란?  
가장 나중에 들어온 항목이 가장 먼저 제거되는 구조.
<details>
<summary>정답 보기</summary>
백스택은 LIFO 구조로, 마지막에 추가된 액티비티가 먼저 종료된다.
</details>

---

### 백스택에 언제 푸시되고 언제 팝되나요?  
새로운 액티비티가 시작될 때 푸시(push), 사용자가 뒤로가기 또는 finish()를 호출하면 팝(pop).
<details>
<summary>정답 보기</summary>
startActivity 시 푸시, 뒤로가기 또는 finish() 시 팝된다.
</details>

---

### 싱글탑(SingleTop)과 뉴태스크(NewTask)를 함께 사용하는 이유  
이미 최상단에 있는 액티비티를 재사용하면서도, 새로운 태스크 컨텍스트에서 실행되도록 보장하기 위해.
<details>
<summary>정답 보기</summary>
중복 생성을 막으면서 독립적인 실행 환경(새 태스크)을 부여하기 위해 함께 사용한다.
</details>

---

## Bundle

### 번들이란 무엇인가요?  
액티비티 간 또는 프로세스 간에 데이터를 전달하기 위한 키-값 형태의 구조.
<details>
<summary>정답 보기</summary>
Bundle은 직렬화 가능한 데이터를 키-값 형태로 저장하는 컨테이너다.
</details>

---

### Bundle에 저장 가능한 값의 용량  
일반적으로 1MB 미만. 너무 크면 `TransactionTooLargeException` 발생.
<details>
<summary>정답 보기</summary>
안드로이드 Binder 트랜잭션 제한(약 1MB) 때문에 큰 데이터는 저장 불가하다.
</details>

---

### Bundle에 값을 저장할 때 직렬화가 필요한 이유  
객체를 메모리 형태가 아닌 바이트 스트림 형태로 변환해 프로세스 간 전달 가능하게 하기 위해.
<details>
<summary>정답 보기</summary>
직렬화를 통해 객체를 바이트로 변환해 시스템이 안전하게 복원·전달할 수 있다.
</details>

---

### onSaveInstanceState에 대용량 데이터를 저장하지 않는 이유  
복원 속도 저하 및 트랜잭션 크기 초과 위험이 있기 때문.
<details>
<summary>정답 보기</summary>
대용량 데이터는 ViewModel 등 메모리 내 상태로 관리하는 게 안전하다.
</details>

---

## ViewModel & Fragment Communication

### 프래그먼트 간 데이터 전달 방법  
공유 ViewModel, Navigation Component의 SafeArgs, Fragment Result API 등을 사용.
<details>
<summary>정답 보기</summary>
Fragment Result API나 Shared ViewModel을 활용하는 게 안전하고 권장된다.
</details>

---

### Fragment Result API를 사용하는 이유  
직접 참조 없이 안전하게 프래그먼트 간 통신 가능.
<details>
<summary>정답 보기</summary>
수명주기 안전성을 보장하면서 느슨한 결합으로 데이터 전달 가능하다.
</details>

---

## Coroutine & Compose

### rememberCoroutineScope란?  
컴포저블 함수의 생명주기를 따라가는 CoroutineScope를 제공.
<details>
<summary>정답 보기</summary>
컴포지션이 취소되면 코루틴도 자동 취소되어 메모리 누수를 방지한다.
</details>

---

### rememberCoroutineScope에 Job을 직접 할당하면 안 되는 이유  
이미 내부에서 Job을 관리하고 있기 때문에 외부에서 덮어쓰면 취소 관리가 깨짐.
<details>
<summary>정답 보기</summary>
내부 Job이 컴포지션과 연결되어 있어 외부 Job을 주입하면 수명주기 제어가 꼬인다.
</details>

---

### 컴포저블 함수 내에서 직접 CoroutineScope를 생성하면 위험한 이유  
컴포지션이 재구성될 때 새 스코프가 계속 생성되어 누수 발생.
<details>
<summary>정답 보기</summary>
재컴포지션 시 새 스코프가 반복 생성되어 코루틴 누수 및 중복 실행 위험이 있다.
</details>

---

### snackbar 등 UI 이벤트에 rememberCoroutineScope를 사용하는 이유  
일시적인 UI 동작을 안전하게 처리하기 위해 컴포지션 범위에 맞는 코루틴 스코프를 사용.
