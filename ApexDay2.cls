/**
 * @File Name          : ApexDay2.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 3/4/2020, 12:15:48 pm
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    3/7/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
 **/
public class ApexDay2 {
    /**
     * getContact Method prints the contacts Having account Name is Eternus
     * 	
	 * This method is used to update contact count field of account object.
	 *
	 * @actions
	 * -count contacts of Account name Eternus and update the field on account object
	 *
	 * @return - size of Contacts
	 *
	 **/
    
   
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
     *  This method is used to fetch Account and contact record by querying on contact Object
	 *
	 * @actions
	 * -fetch account and contact informationwhere Account name is ESPLTEST
	 *
	 * @return - List of records
	 *
     */
    public static void childParent() {
        List < Contact > contactList = new List < Contact > ([Select Name
                                                    , Account.Name
                                                     from contact
                                                     where Name = 'ESPLTEST']);     // query on contact and displaying the Name field of account
        /**
         * for description
         * Iterates the list of contact fetched above and display each record
         */
        for (Contact c: contactList) {
            System.debug('Contact Name=='+contactList);
        }
        
    }
    
}