## 질문

- 사이드 이펙트란 용어의 정의가 무엇인가?

[ LaunchedEffect ]
- 사이드 이펙트 사용해본 적 있는지?, 있다면 그 api 에 대해서 설명해주세요.
- LaunchedEffect 가 무엇인지 설명해주세요.
- 뷰모델의 init 과 LaunchedEffect 의 동작 차이가 무엇일까요 ?
- LaunchedEffect 에서 suspend 함수를 실행시킬 수 있는 방법이 왜일까요 ?
- 그렇다면 왜 매개변수에서 coroutine scope 를 받게 만들었을지 유추해보세요.

[ DisposableEffect ]
- 컴포즈에서 메모리 해제해주려면 어떻게 해야 할까요?
- DisposableEffect 라는 것이 어떤 역할을 할 지 유추해보세요.

[ 데이터 전달 ]
- Activity 와 Fragment 의 주요한 차이가 무엇이라고 생각하나요?
- activity <-> activity / fragment - fragment 데이터 전달에 대해서 간략하게 설명해주세요.
= 공유 뷰모델을 사용하기 위해서 어떻게 viewModel 을 선언해야 하나요?
- fragment 에 생성자로 데이터를 전달하면 안 되나요?
- fragmentFactory 가 무엇인가요?
- 그렇다면 hilt 를 사용해서 fragment 생성자 주입이 가능하나요?

[ 화면 구성 변경 ] 
- 화면구성이 일어났을 때 액티비티의 생명주기는 어떻게 되나요?
- 다시 onDestory 후에 onCreate 부터 실행하는 이유가 무엇인가요?
- 구성 변경이 일어났을 때 액티비티가 재생성되는 걸 막을 수 있나요?
- 구성 변경이 일어났을 때 데이터 손실을 막기 위한 방법으로 어떤 방법을 사용하는지, 그 이유도 같이 얘기해주세요.
- 뷰모델은 어떻게 구성변경이 일어나도 데이터를 가지고 있을 수 있나요?
- onSaveInstanceState()와 onRestoreInstanceState() 가 따로 존재하는 이유가 무엇일까요 ?

## 토바에의 소감
- 자신만의 playground 가 필요할 것 같다. ( 해봐야 하는 부분에 대해서 직접 사용해 볼 놀이터 만들기 )
