@isTest

public class userKnowledgeTest {
	static testMethod void insertNewUser() {
		User userToCreate = new User();

		userToCreate.FirstName = 'Jane';
		userToCreate.LastName = 'Smith';
		userToCreate.email = 'liz.kao@gmail.com';
		userToCreate.Username = 'usertest@de2015.com';
		userToCreate.Alias = 'jsmith';
		userToCreate.ProfileID = '00ej0000000yHXK';

	   userToCreate.TimeZoneSidKey    = 'America/Denver';
       userToCreate.LocaleSidKey      = 'en_US';
       userToCreate.EmailEncodingKey  = 'UTF-8';
       userToCreate.LanguageLocaleKey = 'en_US';

       insert userToCreate;

       List<User> knowledgeUsers = [SELECT Id FROM User
       								WHERE Username = 'usertest@de2015.com' AND
                                   	UserPermissionsKnowledgeUser = true];
       	System.assertEquals(1, knowledgeUsers.size());
       	
	}
}