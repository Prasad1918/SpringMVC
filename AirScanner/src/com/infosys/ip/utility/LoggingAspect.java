package com.infosys.ip.utility;

import java.util.Arrays;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;




/**
 * The Class LoggingAspect.
 */
@Aspect
@Component
public class LoggingAspect {

	private final Logger logger = LogManager.getLogger(getClass());

	/**
	 * Log around all methods.
	 *
	 * @param joinPoint
	 *            the join point
	 * @return the object
	 * @throws Throwable
	 *             the throwable
	 */
	@Around("execution(* com.infosys.ip.*.*(..))")
	public Object logAroundAllMethods(ProceedingJoinPoint joinPoint) throws Throwable {
		long startTime = System.currentTimeMillis();
		String className = joinPoint.getSignature().getDeclaringTypeName();
		String methodName = joinPoint.getSignature().getName();
		logger.info(className + "----" + methodName + "---" + "Entering in to " + methodName + " with param "
				+ Arrays.toString(joinPoint.getArgs()));

		Object result = joinPoint.proceed();

		long endTime = System.currentTimeMillis();
		logger.info(className + "----" + methodName + "---" + "Exiting " + methodName + " with result " + result
				+ "--- execution completed in " + (endTime - startTime) + " ms ");

		return result;
	}

	/**
	 * Log db exceptions.
	 *
	 * @param joinPoint
	 *            the join point
	 * @param exception
	 *            exception object
	 * @return none
	 * */
	/*@AfterThrowing(pointcut = "execution (* com.infosys.irs.*.*(..))", throwing = "exception")
	public void logRepositoryExceptions(JoinPoint joinPoint, Exception exception) throws Exception {
		String className = joinPoint.getSignature().getDeclaringTypeName();
		String methodName = joinPoint.getSignature().getName();

		logger.error(className + "----" + methodName + "---" + exception.getMessage());
		throw exception;
	}
*/
	
}