/**
 * @File Name          : ApexDay2Test.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 31/3/2020, 11:52:27 am
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    3/12/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
@isTest
public with sharing class ApexDay2Test 
{
    //Positive Scenario
    @isTest public static void testGetContact()
    {
        List<Contact> con=TestDataFactory.createContact(1);
        insert con;                 //Insert the List of Contact

        ApexDay2.getContact();
     
		
       
        System.assertEquals(1, con.size(), 'Passed');   // Checks the size of contacts having Account Name as Eternus with expected value
    }
    //Empty Scenario
    @isTest public static void testGetContactEmpty()
    {
        List<Contact> con=TestDataFactory.createContact(1);
        insert con;                 //Insert the List of Contact
        con[0].lastName='Test';
        ApexDay2.getContact();
     
		
       
        System.assertEquals(0, con.size(), 'Passed');   // Checks the size of contacts having Account Name as Eternus with expected value
    }
    
/*------------------------------------------------------------------------------------------------------------- */

    //Positive Scenario
    @isTest public static void testChildToParentRelationship()
    {
        List<Contact> contactList=TestDataFactory.createContact(2);     
        insert contactList;                     //Insert the Contact records
        contactList[0].lastName='ESPLTEST';
        update contactList;                     //Update the List of Contact

       contactList= ApexDay2.childParent();         

        integer size=contactList.size();
        
        System.assertEquals(1,size);                //Checks the size of contacts having lastname as ESPLTEST
	}
    //Empty Scenario
    @isTest public static void testChildToParentRelationshipEmpty()
    {
        List<Contact> contactList=TestDataFactory.createContact(2);     
        insert contactList;                     //Insert the Contact records
        contactList[0].lastName='Nikhil';
        update contactList;                     //Update the List of Contact

       contactList= ApexDay2.childParent();         

        integer size=contactList.size();
        
        System.assertEquals(0,size);                //Checks the size of contacts having lastname as ESPLTEST
	}
}