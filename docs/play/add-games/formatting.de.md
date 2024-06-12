# :material-folder-cog: Formatieren

!!! warning "Bevor du die *SHARE*-Partition mit exFAT formatierst, solltest du dir bewusst machen, dass sich einige Spiele aus der  [PortMaster](../../systems/portmaster)-Bibliothek auf einem exFAT-Laufwerk nicht ausführen lassen. Einige Ports verwenden symbolische Verknüpfungen und sehr große Swap-Dateien, beides wird von exFAT nicht unterstützt."

Es ist möglich, die *SHARE*-Partition mit dem Dateisystem exFAT zu formatieren, um die Partition über ein Kartenlesegerät mit Windows lesen und beschreiben zu können. exFAT hat allerdings Nachteile bei der Performance und ist limitiert in der zulässigen Dateigröße. Manche Spiele, insbesondere einige Ports, lassen sich nicht ausführen, wenn die *SHARE*-Partition mit exFAT formatiert ist.

Um die Partition trotzdem mit exFAT zu formatieren, öffne das KNULLI-Hauptmenü mit dem  ++"Start"++-Button und wähle unter *System settings* und *Frontent developer options* die Option *Format a disk*. Dort kannst du auswählen, ob du die Partition mit ext4 oder exFAT formatieren möchtest.