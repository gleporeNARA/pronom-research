Datasource: commsect
Username: FAB
Template: resrues.htx
SQLStatement:
+SELECT ruechart.nom, ruechart.type, ruechart.secteur
+	from ruechart
+	where ruechart.secteur like '%%%onglet%%%'