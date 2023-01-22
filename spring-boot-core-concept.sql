***********************************************Spring Boot(Auto Config)*****************************************************
SpringBoot vs Spring :
SpringBoot :Spring Boot builds on top of Spring Framework.

@SpringBoootApplication
1) @SpringBootConfiguration, 2) @EnableAutoConfiguration , 3) @ComponenetScan

(B)
The @EnableAutoConfiguration annotation enables Spring Boot to auto-configure the application context.
Therefore, it automatically creates and registers beans based on both the included jar files in the classpath and the beans defined by us.

@EnableAutoConfiguration:  It attempts to automatically configure based on jar dependencies that have added in classpath based on inside starter POMs(it makes easy to add jars to class path).
With help of "@ConditionalOnClass"

spring-boot-autoconfigure.jar - implementation
and META-INF/spring.factories,sparing-autoconfigure-metadata.properties


e.g if HSQL or ORALCe in classpath then we do not do manually configured any database connection beans,
then SpringBoot auto-configures an in-memory database or Oracle database.
@Configuration
@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class}) --disables

https://www.marcobehler.com/guides/spring-boot-autoconfiguration

https://medium.com/empathyco/how-spring-boot-autoconfiguration-works-6e09f911c5ce#:~:text=Autoconfiguration%20is%20a%20feature%20that,the%20activation%20of%20some%20property.

@ConditionalOnClass - If .class file is Available in classpath
@ConditionalOnMissingClass

@ConditionalOnBean(DataSource.class)
@ConditionalOnMissingBean

@ConditionalOnJava(JavaVersion.EIGHT)
@ConditionalOnJndi("java:comp/env/ejb/myEJB")

@ConditionalOnProperty("my.property")
@ConditionalOnResouce("classpath:my.properties")
@ConditionalOnExpression
@ConditionalOnWebApplication

@ConditionalOnSingleCandidate
@ConditionalOnCloudPlatform(CloudPlatform.Heroku)

Three of the most important conditions are

@ConditionalOnClass. Checking for dependencies or rather specific classes of dependencies (think: Tomcat, HikariCP, etc) in classpath.

@ConditionalOnProperty. Self-explanatory.

@ConditionalOnMissingBean. If the user specified his own, e.g. DataSource, already, then Spring Boot won’t try to create its auto-configured one.

That is what is meant by "opinionated defaults" on the Spring Boot homepage.

***************************************************VALIDATION*START***********************************************


@Validated
class Controller {"above Class"}
  
@ExceptionHandler(ConstraintViolationException.class)
void m(){"above method"}
  
@NotNull-Field must not be null
@NotEmpty- List must not be empty
@NotBlank-String must not be empty
@Min and @Max -For numberic fields 
@Pattern:
@Email 

Custome validator 
@Target({ FIELD })
@Retention(RUNTIME)
@Constraint(validatedBy = IpAddressValidator.class)
@Documented
public @interface IpAddress {

  String message() default "{IpAddress.invalid}";

  Class<?>[] groups() default { };

  Class<? extends Payload>[] payload() default { };

}


class IpAddressValidator implements ConstraintValidator<IpAddress, String> {

@Override
  public boolean isValid(String value, ConstraintValidatorContext context) {
  
  }

}
class InputWithCustomValidator {

  @IpAddress
  private String ipAddress;
  
  // ...

}

*******************************************CustomeException***************************************************
https://reflectoring.io/bean-validation-with-spring-boot/
we create a global ControllerAdvice that handles all ConstraintViolationExceptions that bubble up to the controller level. In order to catch validation errors for request bodies as well, we will also handle MethodArgumentNotValidExceptions:


@ControllerAdvice
class ErrorHandlingControllerAdvice {

  @ExceptionHandler(ConstraintViolationException.class)
  @ResponseStatus(HttpStatus.BAD_REQUEST)
  @ResponseBody
  ValidationErrorResponse onConstraintValidationException(
      ConstraintViolationException e) {
    ValidationErrorResponse error = new ValidationErrorResponse();
    for (ConstraintViolation violation : e.getConstraintViolations()) {
      error.getViolations().add(
        new Violation(violation.getPropertyPath().toString(), violation.getMessage()));
    }
    return error;
  }

  @ExceptionHandler(MethodArgumentNotValidException.class)
  @ResponseStatus(HttpStatus.BAD_REQUEST)
  @ResponseBody
  ValidationErrorResponse onMethodArgumentNotValidException(
      MethodArgumentNotValidException e) {
    ValidationErrorResponse error = new ValidationErrorResponse();
    for (FieldError fieldError : e.getBindingResult().getFieldErrors()) {
      error.getViolations().add(
        new Violation(fieldError.getField(), fieldError.getDefaultMessage()));
    }
    return error;
  }

}

PUT() vs POST()
Idempotancy:If we make multiple identical requests and receive the same response every time, the APIs are generally called idempotent
when making multiple identical requests has the same effect as making a single request – then that REST API is called idempotent.

An Idempotenet HTTP method that can be invoked many times without the different outcomes.
It should not matter if the method has been called only once, or ten times over. The result should always be the same.