component displayname="extension provider" output="false" {

	instance = {
		thisAddress = "#(cgi.SERVER_PORT_SECURE?"https":"http")#://#cgi.SERVER_NAME#:#cgi.SERVER_PORT#/"
	};


	remote struct function getInfo(){
		var info = {
			title="Leftbower",
			description="A spreadsheet extension for Lucee 4.x",
			image="#instance.thisAddress#img/leftbower.png",
			url="https://github.com/Leftbower/cfspreadsheet-lucee/tree/cfspreadsheet-lucee-server",
			mode="develop"
		};
		return info;
	}

	remote query function listApplications(){
		var apps = queryNew('type,id,name,label,description,version,category,image,download,author,codename,video,support,documentation,forum,mailinglist,network,created','varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,date');
		var rootURL=getInfo().url;
		var desc = "cfspreadsheet";
		QueryAddRow(apps);
		QuerySetCell(apps,'id','C092CE1F-C769-4E92-8A7AB609204D8F71');
		QuerySetCell(apps,'name','cfspreadsheet');
		QuerySetCell(apps,'type','all');
		QuerySetCell(apps,'label','&lt;cfspreadsheet /&gt;');
		QuerySetCell(apps,'description',desc);
		QuerySetCell(apps,'author','Extension by Andrew Kretzer (forked from Andy Jarrett)<br/>CFPOI by Matt Woodward');
		QuerySetCell(apps,'image','#instance.thisAddress#img/Apps-Spreadsheet-App-icon.png');
		QuerySetCell(apps,'support','https://github.com/Leftbower/cfspreadsheet-lucee/issues');
		QuerySetCell(apps,'documentation','https://github.com/Leftbower/cfspreadsheet-lucee/wiki');
		QuerySetCell(apps,'created','05-19-2017');
		QuerySetCell(apps,'version',"4.1.1");
		QuerySetCell(apps,'category',"Application");
		QuerySetCell(apps,'download','#instance.thisAddress#/cfpoi.zip');
		//QuerySetCell(apps,'download','https://github.com/Leftbower/cfspreadsheet-lucee/tree/cfspreadsheet-lucee-server/raw/master/cfpoi.zip');

		return apps;
	}
}
