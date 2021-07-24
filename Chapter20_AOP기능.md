## 관점 지향 프로그래밍


</br>

##### 1. 개념  </br></br>
```
공통으로 사용하는 기능을 필요할 때마다 일일이 구현하는 것이 아니라 따로 빼내어 구현하는 것.
AOP는 메서드 안의 주기능과 보조 기능을 분리하고 선택적으로 메서드에 적용해서 사용.

                                                  [주 기능] 
                                       회원관리    상품관리    주문관리 
                     
                      - 로깅
                     |
       [보조 기능]   |- 보안
                     |
                      - 트랜잭션
```

</br>

##### 2. AOP 기능 사용하기</br>
```
aspect - 구현하고자 하는 보조 기능을 의미
advice - aspect의 실제 구현체(클래스)를 의미. 메서드 호출을 기준으로 여러 지점에서 실행
joinpoint - advice를 적용하는 지점을 의미. 스프링은 method 결합점만 제공
pointcut - advice가 적용되는 대상 지정. 패키지이름/클래스이름/메서드이름을 정규식으로 지정하여 사용
target - adivce가 적용되는 클래스를 의미
weaving - adivce를 주기능에 적용하는 것을 의미
```


</br>

##### 3. 스프링 API를 이용한 AOP 기능 구현 과정 </br>
```
1. 타깃 설정
2. 어드바이스 클래스 지정
3. 설정파일에서 포인트컷을 지정
4. 설정파일에서 어드바이스와 포인트컷을 결합하는 어드바이저 설정
5. 설정파일에서 스프링의 ProxyFactoryBean 클래스를 이용해 타깃에 어드바이스를 설정
6. getBean() 메서드로 빈 객체에 접근하여 사용
```


</br>

##### 4. 스프링 API에서 제공하는 여러가지 Advice인터페이스 </br>

```
MethodBeforeAdvice / void before(Method method, Object[] args, Object target) throws Throwable / 해당 메서드가 실행되기 전 실행
- Method method: 대상 객체에서 실행된 메서들르 나타내는 메서드 객체
- Object[] args: 메서드 인자 목록
- Object tagrget: 대상 객체

AfterReturnAdvice / void afterReturning(Object returnValue, Method method, Object[] args, Object target) throws Throwable / 해당 메서드가 실행된 후 실행
- Object returnValue: 대상 객체의 메서드가 반환하는 값

ThrowsAdvice / void afterThrowing(Method method, Object[] args, Object target, Exception ex) / 해당 메서드에서 예외 발생 시 실행
- Exception ex: 발생한 예외 타입

MethodInterceptor / Object invoke(MethodInvocation invocation) throws Throwable / 해당 메서드의 실행 전/후와 예외 발생 시 실행
-MethodInvocation invocatino: 대상 객체의 모든 정보를 담고 있는 객체(호출된 메서드, 인자 등)
```
