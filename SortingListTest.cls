/**
 * @File Name          : SortingListTest.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 31/3/2020, 10:20:21 am
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    3/12/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/

//Test Class For SortingList
@isTest
public class SortingListTest {
    /*-------------------------------------------Print Array--------------------------------------------------------------
    //Positive Scenario
    //Print number of elements in the list
    //expected is size of that List
    
    */
    @isTest public static void testPrintList()
    {
        List<String> myList=new List<String>();
        
        myList=SortingList.printList(10);
        System.assertEquals(10, myList.size(), 'Passed');
        
    }
    //Null Scenario
    //Print number of elements in the list
    //expected is size of that List

    @isTest public static void testPrintBlankList()
    {
        List<String> myList=new List<String>();
        System.Test.startTest();
        
        myList=SortingList.printList(0);
        System.Test.stopTest();
        System.assertEquals(0, myList.size(), 'Passed');
        
    }

    /*
----------------------------------------------------------------------------------------------------------------
*/
/*-------------------------------------------Ascending Order--------------------------------------------------------------
    //Positive Scenario
    //List of integers as input
    //expected is Sorted Array in Ascending Order
    
    */
@isTest public static void testprintAscendingList()
{
    
    List<Integer> myList=new List<Integer>{4,5,-8,443,3,2};
    List<Integer> outputList=new List<Integer>{-8,2,3,4,5,443};
    System.Test.startTest();
    List<Integer>sortedList=SortingList.printAscendingList(myList);
    System.Test.stopTest();
    System.assertEquals(outputList,sortedList);


    
}

    //Empty Scenario
    //Empty List as input
    //expected is size of that List
    @isTest public static void testprintAscendingListEmpty()
{
    
    List<Integer> myList=new List<Integer>{ };
    List<Integer> outputList=new List<Integer>{};
    System.Test.startTest();
    List<Integer>sortedList=SortingList.printAscendingList(myList);
    System.Test.stopTest();
    System.assertEquals(outputList,sortedList);


    
}
   /*
   
-------------------------------------------------------------------------------------------------------------------
*/ 
/*-------------------------------------------Descending Order--------------------------------------------------------------
    //Positive Scenario
    //List of integers as input
    //expected is Sorted Array in Descending Order
    
    */
        @isTest public static void testprintDescendingList()
        {
            List<Integer> myList=new List<Integer>{4,5,-8,443,3,2};
            List<Integer> outputList=new List<Integer>{443,5,4,3,2,-8};
            System.Test.startTest();
            List<Integer>sortedList=SortingList.printDescendingList(myList);
            System.Test.stopTest();
            System.assertEquals(outputList,sortedList);

    }
    //Empty Scenario
    //Empty List as input
    //expected is size of that List
    @isTest public static void testprintDescendingListEmpty()
{
    
    List<Integer> myList=new List<Integer>{ };
    List<Integer> outputList=new List<Integer>{};
    System.Test.startTest();
    List<Integer>sortedList=SortingList.printAscendingList(myList);
    System.Test.stopTest();
    System.assertEquals(outputList,sortedList);


    
}

/*
------------------------------------------------Maximum Number-------------------------------------------------------------------
*/
    //positive scenario
	//list of diff. number as a input
	//expected output  is minimum number
    @isTest public static void testPrintMax() 
    {
        List<Integer> myList=new List<Integer>{4,5,-8,443,3,2};

        SortingList.printMax(myList);
        Integer max=SortingList.printMax(myList);

        System.assertEquals(443, max, 'Passed');

  
    }

    //Empty List scenario
	//Empty List as input
	//expected output  is 0
    @isTest public static void testPrintMaxEmpty() 
    {
        List<Integer> myList=new List<Integer>{};

        SortingList.printMax(myList);
        Integer max=SortingList.printMax(myList);

        System.assertEquals(0, max, 'Passed');

  
    }
    
 /*
--------------------------------------Minimum Number------------------------------------------------------------
*/
    
    //positive scenario
	//list of diff. number as a input
	//expected output  is minimum number
    @isTest public static void testPrintMin() 
    {
        List<Integer> myList=new List<Integer>{4,5,-8,443,3,2};

        SortingList.printMax(myList);
        Integer Min=SortingList.printMin(myList);

        System.assertEquals(-8, Min, 'Passed');

  
    }

    //Empty List scenario
	//Empty List as input
	//expected output  is 0
    @isTest public static void testPrintMinEmpty() 
    {
        List<Integer> myList=new List<Integer>{};

        SortingList.printMax(myList);
        Integer Min=SortingList.printMax(myList);

        System.assertEquals(0, Min, 'Passed');

  
    }
 /*----------------------------------------Simple Interest------------------------------------------------- */   
    //Positive Scenario    
    //Expected is the Simple Interest
    @istest public static void testSimpleInterest()
    {
        
        Decimal SI=SortingList.simpleInterest(10,10,10);

        System.assertEquals(10, SI, 'Passed');
    
    }

    //Empty Scenario
    //Expected Simple Interest is 0
    @istest public static void testSimpleInterestEmpty()
    {
        
        Decimal SI=SortingList.simpleInterest(10,10,0);

        System.assertEquals(0, SI, 'Passed');
    
    }
    /*
    ------------------------------------------Traditional For Loop----------------------------------------------------
    */
    //Numbers of accounts as input
    //Expected is the size of Accounts
    @isTest public static void testAcccountTraditionalSearch()
    {
        List<Account> accs=TestDataFactory.createAccounts(15);
		insert accs;
        SortingList.acccountTraditionalSearch();


        System.assertEquals(15, accs.size(), 'Passed');
        
        
    }
    //Empty Scenario
    @isTest public static void testAcccountTraditionalEmptySearch()
    {
        List<Account> accs=TestDataFactory.createAccounts(0);
		insert accs;
        SortingList.acccountTraditionalSearch();


        System.assertEquals(0, accs.size(), 'Passed');
        
        
    }
    /*
    -------------------------------------------Advanced For Loop------------------------------------------------------------
    */
    //Numbers of accounts as input
    //Expected is the size of Accounts
    @isTest public static void testAccountAdvanceSearch()
    {
        List<Account> act=TestDataFactory.createAccounts(30);
		insert act;
        System.Test.startTest();
        SortingList.AccountAdvanceSearch();

        System.Test.stopTest();
        System.assertEquals(30, act.size(), 'Passed');
    }
    //Empty Scenario
    @isTest public static void testEmptyAccountAdvanceSearch()
    {
        List<Account> act=TestDataFactory.createAccounts(0);
		insert act;
        System.Test.startTest();
        SortingList.AccountAdvanceSearch();

        System.Test.stopTest();
        System.assertEquals(0, act.size(), 'Passed');
    }
    /*
    -------------------------------------------While Loop-----------------------------------------------------
    */
    //Numbers of accounts as input
    //Expected is the size of Accounts

    @isTest public static void testPrintAccountsUsingWhileLoop()
    {
        List<Account> accountList=TestDataFactory.createAccounts(5);
        SortingList.printAccountsUsingWhileLoop();
  
        System.assertEquals(5, accountList.size(), 'Passed');

    }

    //Empty Scenario

    @isTest public static void testPrintAccountsUsingWhileLoopEmptyCheck()
    {
        List<Account> accountList=TestDataFactory.createAccounts(0);
        SortingList.printAccountsUsingWhileLoop();
  
        System.assertEquals(0, accountList.size(), 'Passed');

    }

    /*
----------------------------------------------Print Numbers with their occurences in the List---------------------------------------------------------------
*/
//Accepts List as Parameter
//Numbers with their Occurences in the List
//Expected is Map of numbers and their Occurences
@isTest public static void testPrintOccurence(){
    List<Integer> myList=new List<Integer>{5,36,45,78};
       Map<Integer,Integer> myMap = new Map<Integer,Integer>();
       myMap.put(5,1);
       myMap.put(36,1);
      myMap.put(45,1);
      myMap.put(78,1);
   System.Test.startTest();
   Map<integer,integer> newMap= SortingList.integprintOccurence(myList);
       System.Test.stopTest();
       System.assertEquals(newMap,myMap);
    
   }

   //Empty Scenario
   //Empty List as input Parameter
   @isTest public static void testPrintOccurenceEmpty(){
    List<Integer> myList=new List<Integer>{};
       Map<Integer,Integer> myMap = new Map<Integer,Integer>();
   System.Test.startTest();
   Map<integer,integer> newMap= SortingList.integprintOccurence(myList);
       System.Test.stopTest();
       System.assertEquals(newMap,myMap);
    
   }
}