trigger populateMobileTrigger on Student__c (before insert) {
  for (Student__c s: Trigger.new) {
    //check if mobile field is empty or null
    if (s.Mobile == null || s.Mobile.length() == 0) {
     //update mobile field with the phone number of the student
      s.Mobile = s.Phone_Number__c;
    }
  }
}