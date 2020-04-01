/**
 * @File Name          : SortingTechniquesTest.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 31/3/2020, 11:37:22 pm
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    31/3/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
@isTest
public with sharing class SortingTechniquesTest {
    
    //Positive Scenario     
    //Sort list of different elements
	@IsTest
	static void testBubbleSort() {
		List<Integer> testData = new List<Integer>{ 2, 1, 7, 4, 9 };
        List<Integer> testOutput = new List<Integer>{ 1, 2, 4, 7, 9 };
        List<Integer> testResult = SortingTechniques.bubbleSortMethod(testData);
		System.assertEquals(testOutput, testResult);
    } 
    
    //Negative Scenario
    //empty list of elements
	@IsTest
	static void testBubbleSortTechnique() {
		List<Integer> testdata = new List<Integer>{ };
		List<Integer> testoutput = new List<Integer>{ };
		List<Integer> testresult = SortingTechniques.bubbleSortMethod(testdata);
		System.assertEquals(testoutput, testresult);
	}

	//Positive Scenario
	//Sort list of different elements
	@IsTest
	static void testInsertionSortPositive() {
		List<Integer> testdata = new List<Integer>{ 2, 1, 7, 4, 9 };
		List<Integer> testoutput = new List<Integer>{ 1, 2, 4, 7, 9 };
		List<Integer> testresult = SortingTechniques.insertionSort(testdata);
		System.assertEquals(testoutput, testresult);
	}

	//empty list of elements
	@IsTest
	static void testInsertionSortNegative() {
		List<Integer> testdata = new List<Integer>{ };
		List<Integer> testoutput = new List<Integer>{ };
		List<Integer> testresult = SortingTechniques.insertionSort(testdata);
		System.assertEquals(testoutput, testresult);
	}

	//Positive Scenario
	//Sort list of different elements
	@IsTest
	static void testSelectionSortPositive() {
		List<Integer> testdata = new List<Integer>{ 2, 1, 7, 4, 9 };
		List<Integer> testoutput = new List<Integer>{ 1, 2, 4, 7, 9 };
		List<Integer> testresult = SortingTechniques.selectionSort(testdata);
		System.assertEquals(testoutput, testresult);
    }
    
	//empty list of elements
	@IsTest
	static void testSelectionSortNegative() {
		List<Integer> testdata = new List<Integer>{ };
        List<Integer> testoutput = new List<Integer>{ };

		List<Integer> testresult = SortingTechniques.selectionSort(testdata);
		System.assertEquals(testoutput, testresult);
	}
}


