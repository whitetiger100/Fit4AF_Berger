Project.create!([ {title: "Apache Webs", description: "Erstellen einer Website zur Einrichtung neuer Webs",start_date: 20.days.from_now},
                  {title: "Pruefungsvorbereitungen", description: "Vorbereitung der Abschlusspruefungen", start_date: "2015-03-01"},
                  {title: "Abschlussarbeit", description: "Erstellen eines Projektes fuer den Technikerabschluss", start_date: "2014-10-01"}])
Task.create!([ {title: "Verzeichnis erstellen", description: "Erstellen eines neuen Verzeichnisses im Webroot", start_date: 10.days.from_now, project: Project.first },
      {title: "Virtuellen Host", description: "Erzeugen eines VIrtuellen Hosts", start_date: 9.days.from_now, project: Project.first}])

User.create!([ { login: "admin", email: "admin@g16-hh.de", password: "secret", admin: true },{ login: "theo", email: "theo@g16-hh.de", password: "secret"} ])
