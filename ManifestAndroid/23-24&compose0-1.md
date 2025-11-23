# 면접 질문 & 주제 정리

## 🧵 스레드(Thread)

* **스레드란 무엇인가요?**

  * 프로세스 내에서 실행되는 최소 실행 단위.
* **크롬에서 스레드는?**

  * 크롬은 멀티 프로세스 구조이며, 각 프로세스 내부에서
    메인 스레드 / JS 스레드 / IO 스레드 / GPU 스레드 등이 독립적으로 동작.

---

## 🔁 루퍼(Looper) & 핸들러(Handler)

* **루퍼란?**

  * 스레드에서 메시지를 반복(loop)하며 처리하는 메시지 루프 시스템.
* **왜 루프(Loop)인가?**

  * 메시지 큐에서 메시지를 계속 꺼내 반복적으로 처리하기 때문.
* **핸들러의 역할은?**

  * 메시지/작업을 MessageQueue에 넣음
  * Looper가 가져오면 Handler가 처리 로직을 실행
* **HandlerThread란?**

  * 내부적으로 Looper를 가진 전용 스레드.

---

## 🧵 새로운 스레드에서 루퍼는 필요할까?

* **루퍼는 자동 생성되지 않음**
  → 개발자가 직접 Looper.prepare() / Looper.loop() 호출해야 함.
* **언제 루퍼가 필요한가?**

  * Handler를 사용하거나
  * 스레드가 메시지 기반으로 동작해야 할 때.
* **언제 필요하지 않은가?**

  * 단순 연산, I/O, 코루틴 launch 등 메시지 루프가 필요 없는 경우.

---

## ⚠️ 예외(Exception)

* **예외란 무엇인가요?**
  프로그램 실행 도중 발생한 비정상적 상황(오류).
* **프로젝트에서 사용한 예외 처리 방법**

  * `try/catch`
  * `runCatching { }`
  * `CoroutineExceptionHandler`
  * `Flow.catch {}`
  * 계층형 에러 처리: Result/Resource sealed class
  * Timber로 단계별 로그
  * Crashlytics로 실제 배포 후 예외 수집
* **예외를 트리 구조로 확인하는 방법**

  * Timber의 Log Tree 사용 (디버그/릴리즈 분리, Custom Tree)

---

## 🌀 코루틴 예외 처리

* `CoroutineExceptionHandler` 사용
* SupervisorJob: 자식 코루틴 예외 분리
* async/await는 예외가 지연됨
* Flow는 `catch`에서 처리
* scope.launch와 async의 예외 전파 차이 이해 필요

---

## 🧱 Jetpack Compose

### **Compose의 3가지 계층 구조**

1. **UI Layer** — Composable 함수들
2. **Runtime Layer** — State 관리, Recomposition
3. **Compiler Layer** — Compose 최적화 코드를 자동 생성

### **Compose Compiler의 일반적인 역할**

* Composable을 분석해
  **Recomposition이 필요한 부분만 다시 그리도록 최적화 코드 생성**

### **Compose 렌더링 파이프라인 (3단계)**

1. **Composition** – UI 트리 생성
2. **Layout** – 측정/배치
3. **Drawing** – 화면 렌더링

---

## ⚙️ KAPT vs KSP

* **KAPT**

  * Kotlin에서 Java Annotation Processor를 돌리기 위한 도구
  * 느리고, Java 기반이라 비효율적
* **KSP**

  * Kotlin 전용 심볼 분석 기반
  * 더 빠르고 Gradle 성능 최적화에 유리

---

# 🗣 팀 후기 & 피드백

## 🙋‍♂️ 뭉치 후기

* 일주일에 한 번 하니까 뇌가 깨워진다.
* 안드로이드 감을 안 잃게 도와준다.

## 🙋‍♂️ 페토 피드백

* 핸들러/루퍼 개념을 잘 이해하고 있어서 좋았다.

## 🙋‍♂️ 토바에 피드백

* 크롬 스레드 예시를 의도했는데
  정확하게 맞춰서 놀랐다.
  실무자의 감각이 느껴졌다.
