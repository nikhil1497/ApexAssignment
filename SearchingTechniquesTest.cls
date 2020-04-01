/**
 * @File Name          : SearchingTechniquesTest.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 31/3/2020, 11:05:47 am
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    31/3/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
@isTest
public class SearchingTechniquesTest {
	//Positive scenario
	//this will check key element is present in array
	//key is present at initial position
	@IsTest
	static void TestLinearPositiveFirst() {
        List<Integer> arrayElement = new List<Integer>{ 1, 5, 3, 2 };
        Integer result= SearchTechniques.linearSearch(arrayElement, 5);
        System.assertEquals(1, result);
	}

	//Positive scenario
	//this will check key element is present in array
	//key is present at last position
	@IsTest
	static void TestLinearPositiveSecond() {
		List<Integer> arrayElement = new List<Integer>{ 1, 5, 3, 2 };
		Integer result= SearchTechniques.linearSearch(arrayElement, 2);
        System.assertEquals(1, result);
	}

	//key is not present
	@IsTest
	static void TestLinearNegative() {
		List<Integer> arrayElement = new List<Integer>{ 1, 5, 3, 7, 2 };
		Integer result= SearchTechniques.linearSearch(arrayElement, 6);
        System.assertEquals(0, result);
	}


	//Positive scenario
	//this will check key element is present in array
	//key is less than middle element
	@IsTest
	static void TestBinaryPositiveFirst() {
		List<Integer> arrayElement = new List<Integer>{ 1, 2, 3, 5, 7 };
		Integer result = SearchTechniques.BinarySearch(arrayElement, 1);
        System.assertEquals(1, result);
	}

	//Positive scenario
	//this will check key element is present in array
	//key is greater than middle element
	@IsTest
	static void TestBinaryPositiveSecond() {
		List<Integer> arrayElement = new List<Integer>{ 1, 2, 3, 5, 7 };
		Integer result= SearchTechniques.BinarySearch(arrayElement, 5);
        System.assertEquals(1, result);
	}

	//this will check key element is present in array
	//Key is not present
	@IsTest
	static void TestBinaryNegative() {
		List<Integer> arrayElement = new List<Integer>{ 1, 2, 3, 5, 7 };
		Integer result= SearchTechniques.BinarySearch(arrayElement, 6);
        System.assertEquals(0, result);
	}
} 