var host = db.serverStatus().host;
//var prompt = function() { return db+"@"+host+"> "; }
var prompt = function() {
  result = db.isMaster();
	if (result.ismaster) {
		role = "(P)";
	}
	else if (result.secondary) {
		role = "(S)";
	}
	// Add ReplSet States
	// http://www.kchodorow.com/blog/2011/06/27/ps1/
	//result = db.adminCommand({replSetGetStatus : 1})
	//return states[result.myState]+":"+db+"> ";
	return host + role + ":" + db + "> ";
}


function uptime () {
	return db.serverStatus().uptime;
}

function doccount () {
	return db.stats().objects;
}
