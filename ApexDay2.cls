/**
 * @File Name          : ApexDay2.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 30/3/2020, 10:28:57 pm
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    3/7/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
 **/
public class ApexDay2 {
    /**
     * getContact Method prints the contacts Having account Name is Eternus
     */
    public static void getContact() {
        List<Contact> ContactList =[SELECT Name
		                        	FROM Contact
		                        	Where Account.name = 'Eternus'];    //Queries The contact records ehere account name is eternus
        Integer ContactCount=ContactList.size();                        //Stores the count of Queried records
        		System.debug(ContactCount);

		List<Account> accList = [SELECT Name
		                              , ContactCount__c
		                         FROM Account
		                         WHERE Name = 'Eternus'];       //Query on accounts where account Name is Eternus
		for (Account a : accList){
			a.ContactCount__c = ContactCount;                 //    Stores the count of related contacts in the custom field
		}
		update accList;                                     //update the List of Account accList
        System.debug('contacts=='+contactList);
		System.debug(accList);
    }
    /**
     * childParent Method Show the relationship between parent and child
     */
    public static void childParent() {
        List < Contact > contactList = new List < Contact > ([Select Name
                                                    , Account.Name
                                                     from contact
                                                     where Name = 'ESPLTEST']);
        for (Contact c: contactList) {
            System.debug('Contact Name=='+contactList);
        }
        
    }
    
}