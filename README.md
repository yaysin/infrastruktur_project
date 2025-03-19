**--Infrastrukturprojekt med OpenTofu och Ansible--**

*--Bakgrund--*
Er grupp arbetar på ett konsultbolag som har fått i uppdrag att ta fram en molnbaserad infrastruktur för en webb-applikation åt en kund. Kunden vill ha en säker och skalbar lösning som kan hanteras genom Infrastructure as Code (IaC). Målet är att implementera en automatiserad, säker och skalbar infrastruktur med AWS, OpenTofu och Ansible för en enkel webb-applikation.

*--Teknologier--*
OpenTofu: Ett verktyg för att definiera och skapa infrastruktur som kod. Används för att definiera och provisionera AWS-resurser.
Ansible: Ett automatiseringsverktyg för att konfigurera och installera applikationer på servrar.
AWS: Amazon Web Services, plattformen för att skapa och hantera molninfrastruktur.
Terraform: Om du använder OpenTofu baserat på Terraform-kod, kan det användas för att skapa, ändra och versionera infrastrukturer.

*--Projektuppgift--*
Projektets mål är att designa och implementera en grundläggande molninfrastruktur som stödjer en webb-applikation. Detta inkluderar:
1. Tre EC2-instanser: Två för webbservern och en för databasen.
2. Lastbalanserare: För att hantera trafik mellan webbservrarna.
3. Två subnät: Ett publikt subnet för webbservern och ett privat subnet för databasen.
4. Säkerhetsgrupper och IAM Roller: För att säkerställa korrekt åtkomstkontroll och säkerhet.
5. Hemligheter: För säker lagring av känslig information som krävs för infrastrukturen.
6. Automatisering med Ansible: För att installera och konfigurera webbapplikationen och databasen.

*--Installation och användning--*

-Förutsättningar-
AWS-konto: Du behöver ett AWS-konto för att kunna implementera infrastrukturen.
OpenTofu: Installera OpenTofu för att skapa AWS-resurser genom Infrastructure as Code.
Ansible: Installera Ansible för att hantera serverkonfiguration och applikationsinstallation.
-Steg för att distribuera infrastrukturen-

1. Kloning av repot:
git clone https://github.com/yaysin/infrastruktur_project.git
cd infrastruktur_project

2. Konfigurera OpenTofu:
Redigera OpenTofu-konfigurationsfiler för att ange dina specifika inställningar för AWS och resurser.

3. Kör OpenTofu för att provisionera AWS-resurser:
open-tofu apply

4. Kör Ansible för att konfigurera servrarna:
Installera och konfigurera webbservrar och databaser på de skapade EC2-instanserna med Ansible.
ansible-playbook -i inventory setup.yml

5. Webbapplikation:
Webbapplikationen kommer nu att vara tillgänglig genom den distribuerade infrastrukturen.

-Säkerhetsinformation-
För att undvika säkerhetsproblem, se till att:
* Hemligheter lagras på ett säkert sätt, t.ex. i AWS Secrets Manager.
* Korrekt säkerhetsgruppsregler är på plats för att tillåta nödvändig åtkomst och blockera oönskad trafik.
  
-Dokumentation-
* Infrastrukturdiagram: Se infrastructure_diagram.png för en visuell representation av infrastrukturen.
* Teknisk dokumentation: Alla tekniska beslut och deras motiveringar finns i teknisk_dokumentation.
* Steg-för-steg guide: En detaljerad guide för att sätta upp infrastrukturen från början finns i setup_instructions.md.
