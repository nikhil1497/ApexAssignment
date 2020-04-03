/**
 * @File Name          : SortingList.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 3/4/2020, 12:49:15 pm
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    3/7/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public class SortingList 

{
    /**
     * printList prints the element and put them in the list
     * @actions
	 * - Check if size of list >0.
	 * - If list size is >0, sort the list.
	 * - For all other scenario, return empty list.
     * @param  count Number of elements you want to put in an array
     * @return      myList returns the List
     */
    public static List<String> printList(Integer count)
    {
        System.debug('the list is of size=='+count);
        List<String> myList=new List<String>();   //Defined a List where the data will be stored
        for(Integer i=0;i<count;i++)
        {
            myList.add('Test'+i); //Adding the data in the List
        }
        System.debug(myList);
        if(!myList.IsEmpty()){                  //Checks if the List is Empty or not
        return myList;                          // Returns the output List of given datatype
        }else{
            return myList;                      //Returns Empty List
        }      
    }


    /**
     * listInParameter program displays the elements of the list
     * @param  myList List to be displayed
     * @return        Here we are returning elements of the list
     */
    public static Integer listInParameter(List<Integer> myList)
    {

        for(Integer i=0;i<myList.size();i++)
        {
            system.debug(' '+myList[i]);
        }
        return myList.size();
    }


    /**
     * printAscendingList used to sort the List in Ascending order
     * @actions
	 * - Check if size of list >0.
	 * - If list size is >0, sort the list.
	 * - For all other scenario, return empty list.
	 *
     * @param  integerList integerList is the List to be sorted
     * @return        returns the given List in ascending order
     */
    public static List<Integer> printAscendingList(List<integer> integerList){        
        /**
         * Nested for loop comparing two values 
         * 
         */   
        if(!integerList.IsEmpty()&&integerList!=null){               //Check if the List is not empty
        for(Integer i = 0 ; i < integerList.size() ; i ++) {
            for(integer j = i+1 ; j <= integerList.size() -1 ; j ++ ){
                integer x = 0 ;
                if(integerList[i] >  integerList[j]){
                        x = integerList[i]  ;
                        integerList[i] = integerList[j]  ; 
                        integerList[j]  = x;                    //Swap method
                }
            }
        }
        system.debug(integerList) ;
        
        return integerList;         //Returns the given List in the Ascending Order
    }
    return integerList;             //Returns The empty List
}


    /**
     * printDescendingList program sorts the list in descending order
     * @actions
	 * - Check if size of list >0.
	 * - If list size is >0, sort the list.
	 * - For all other scenario, return empty list.
	 *
     * @param  integerList integerList is the List to be sorted
     * @return        return the given list in descending order
     */
    public static List<Integer> printDescendingList(List<integer> integerList){   
        if(!integerList.IsEmpty()&&integerList!=null){       //Check if the List is not empty
        for(Integer i = 0 ; i < integerList.size() ; i ++) {
                for(integer j = i+1 ; j <= integerList.size() -1 ; j ++ ){
                integer x = 0 ;
                        if(integerList[i] <  integerList[j]){
                                x = integerList[i];
                                integerList[i] = integerList[j];
                                integerList[j] = x;     //SWAP the values when If condition satisfies
                        
                        }
                
                }
        }
        system.debug(integerList) ;
           
        return integerList;                  //Returns the List in Descending Order
    }
    return integerList;                     //Returns the Empty List
}


    /**
     * printMax prints maximum number from the list
     * 
	 * @actions
	 * - Check if size of list >0.
	 * - If list size is >0, find Maximum number.
	 * - For all other scenario, return 0.
	 *
     * @param  myList myList is the List passed as parameter
     * @return        Max variable returns the maximum number from the list
     */
    public static Integer printMax(List<Integer> integerList)
    {
        If(!integerList.IsEmpty())
        {     //Checks if the List is not Empty
            for(Integer i = 0 ; i < integerList.size() ; i ++) 
            {
                for(integer j = i+1 ; j <= integerList.size() -1 ; j ++ )
                {
                        integer x = 0 ;
                        if(integerList[i] <  integerList[j])
                        {
                                x = integerList[i];
                                integerList[i] = integerList[j];
                                integerList[j] = x;     //SWAP the values when If condition satisfies
                        
                        }
                
                }
            }
            system.debug('Given List in Descending Order===>'+integerList) ;
            
            integer max=integerList[0];
            System.debug('Maximum number in the List is====>'+max);
            return max;                     //Returns the Maximum Number from the list
        }
        return 0;                       //Returns 0 if the list is empty
    }
  

    
    /**
     * printMin prints Minimum number from the list
	 * @actions
	 * - Check if size of list >0.
	 * - If list size is >0, find minimum number.
	 * - For all other scenario, return 0.
     * @param  integerList integerList is the List passed as parameter
     * @return        Min variable returns the Minimum number from the list
     */
    public static Integer printMin(List<Integer> integerList)
    {
        if(!integerList.IsEmpty()){             //Check if the List is not empty

        for(Integer i = 0 ; i < integerList.size() ; i ++) 
        {
            for(integer j = i+1 ; j <= integerList.size() -1 ; j ++ )
            {
                integer x = 0 ;
                if(integerList[i] >  integerList[j])
                {
                        x = integerList[i]  ;
                        integerList[i] = integerList[j]  ; 
                        integerList[j]  = x;                    //SWAP the values when If condition satisfies
                }
            }
        }
        System.debug('Given List in Ascending Order===>'+integerList);
        integer Min=integerList[0];
        System.debug('Minimum number in the list ========>'+Min);
        return Min;                              //Returns the minimum value from the List
        }
        return 0;       //Returns 0 if the list is empty
    }




   /**
	 * This method is used to find occurence of each number in the integer list.
	 *
	 * @actions
	 * - Check if size of list >0.
	 * - If list size is >0, find occurences of each number.
	 * - For all other scenario, return empty map.
	 *
	 * @param myList - List of integers.

	 *
	 * @return - map of occurences
	 **/
    public static map<integer,integer> integprintOccurence(List<Integer> myList)
    {
        Map<Integer,Integer> myMap = new Map<Integer,Integer>();
        if(myList.size()>0){
            for(Integer key : myList)
            {
                if(!myMap.containsKey(key))     // If key is not present in the List, 
                {
                    myMap.put(key,0);
                }
            Integer currentInt=myMap.get(key)+1;        //Number of occurence of that key stored in integer currentInt
            myMap.put(key,currentInt);              // Put the values key and it's occurence in map

            }
        }
        
        System.debug('Number : Accurance'+myMap);
        if(!myMap.IsEmpty()){                   //Check if the Map is not empty
        return myMap;                           //Returns The map of values present in the given List and their occurence
        }
        return myMap;                             //Returns the empty map

    }
    //Done


/**
	 * This method is used to find occurence of each number in the integer list.
	 *
	 * @actions
	 * - Check the parameters principle,year,amount are >0
	 * - If Value of parameters  >0, Calculate the simple Interest .
	 * - For all other scenario, return 0.
	 *
	 * @param principle - decimal - priciple amount.
	 * @param  year- decimal- number of years
	 *@param rate- decimal intrest rate
	 * @return - Simple Interest in Decimal
	 **/
	//this method receive parameters and calculates simple interest
    public static Decimal simpleInterest(Decimal principle,Decimal rate,Decimal year)
    {
        if(principle>0 && rate>0 && year>0){                        //Checks if all the passed parameters are positive 
        Decimal SimpleInterest=(principle * rate * year)/100;       //Formula for calculating Simple Interest
        System.debug('Simple Interest Earned==='+SimpleInterest);
        Decimal Total=principle+SimpleInterest;                     //Stores the total amount with interest
        System.debug('Total amount after'+year+'year(s)===>'+total);
        return SimpleInterest;                                      //Returns the Simple Interest Earned
    }else{
        return 0;                                                   //Returns 0 if interest rate or year or amount is 0
        }
    }


 
    /**
     * acccountTraditionalSearch Searches All the account present in the org and displays it Using Traditional For Loop
     * 
	 * @actions
	 * -This Method fetch account record upto limit and display using Traditional For Loop.
	 *
	 * @return - Size Of Record List
     */
    public static void acccountTraditionalSearch()
    {
       List<Account> accs = [SELECT  Id
                                    , Name
                                    ,Industry
                                    ,Website
                            FROM
                                    Account ];      //Queries all the accounts from the org
        for (Integer i = 0; i < accs.size(); i++)
        {
            System.debug(accs[i]);             //Displays the Account Records
        }
 
    }


    
    /**
     * accountAdvanceSearch Methods displays all the accounts present in the org using Advance For Loop
     * @actions
	 * -This Method fetch account record upto limit and display using Advance for Loop.
	 *
	 * @return - Size Of Record List
     */
    public static void accountAdvanceSearch(){
        for(Account act : [SELECT Id
                                  , Name
                                  , Industry
                                  , Website 
                           FROM   Account ])                //Queries all the accounts from the org
        {
            if(act.id!=Null)
            System.debug('Accounts=========>'+act);         //Displays the Account Records
		}
    }


    
    /**
     * printAccountsUsingWhileLoop Methods Prints All the accounts present in the org
     * @actions
	 * -This Method fetch account record upto limit and display using While Loop.
	 *
	 * @return - Size Of Record List
     */
    public static void printAccountsUsingWhileLoop()
    {
        List<Account> accountList=[SELECT  Id
                                         , Name
                                         , Industry
                                         , Website
                                   FROM
                                           Account ];  //Queries all the accounts from the org
        Integer i=0;
        while(i<accountList.size())
        {
            System.debug(accountList[i]);           //Displays the Account Records
            i++;

        }
        
    }

}