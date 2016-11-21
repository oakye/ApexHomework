trigger UserKnowledge on User (before Insert) {
	for (User userInLoop : Trigger.new) {
		userInLoop.UserPermissionsKnowledgeUser = true;
	}
}
