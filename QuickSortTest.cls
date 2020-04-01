/**
 * @File Name          : QuickSortTest.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 31/3/2020, 11:44:04 am
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    30/3/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
@isTest public class QuickSortTest {
    @isTest public static void testQuickSort(){
        //List<Integer> integerList=new List<Integer>();
   
   	 List<integer> arrayList=new List<integer>{356,20,25};
       
       List<Integer> resultList = QuickSort.sort(arrayList, 0, 2);
        QuickSort.partition(arrayList, 0, 2);
         QuickSort.print(arrayList);
       
        System.assertEquals(arrayList, resultList, 'Passed');
    }
  
}