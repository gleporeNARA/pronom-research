Datasource: commsect
Username: FAB
Template: rescoms.htx
SQLStatement:
+SELECT commsect.commune, commsect.secteur, commsect.codepost
+	from commsect
+	where commsect.commune like '%%%nom%%%'