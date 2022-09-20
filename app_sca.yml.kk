server:
  port: 8982
#logging:
#  file:
#    name: flow.log
logging:
  file:
    name: flow2.log
  level:
    com:
       checkmarx: DEBUG
    org:
       apache:
          http:
             wire: DEBUG
       springframework:
          web:
             client:
               RestTemplate: DEBUG
               
cxflow:
  #bug-tracker: GitHub
  bug-tracker: WAIT
  bug-tracker-impl:
  #  - GitHub
    - Jira
  branches:
    - main
    - branch1
  filter-severity:
  #  - High
  filter-category:
  #  - SQL_Injection
  #  - Stored_XSS
  #  - Reflected_XSS_All_Clients
  filter-cwe:
  filter-status:
  #mitre-url: https://cwe.mitre.org/data/definitions/%s.html
  #wiki-url: https://custodela.atlassian.net/wiki/spaces/AS/pages/79462432/Remediation+Guidance
  codebash-url: https://checkmarx-demo.codebashing.com/courses/
  enabled-vulnerability-scanners:
    - sca
  #  - sast

checkmarx:
  version: 9.0
  username: admin
  password: KsHPJ8JCD5otOLixmMov_
  client-id: resource_owner_client
  client-secret: 014DF517-39D1-4453-B7B3-9930C563627C
  scope: access_control_api sast_rest_api
  base-url: http://172.35.1.19
  team: /CxServer
  url: ${checkmarx.base-url}/cxrestapi
  multi-tenant: false
  #WSDL Config
  portal-url: ${checkmarx.base-url}/cxwebinterface/Portal/CxWebService.asmx
  sdk-url: ${checkmarx.base-url}/cxwebinterface/SDK/CxSDKWebService.asmx
  portal-wsdl: ${checkmarx.base-url}/Portal/CxWebService.asmx?wsdl
  sdk-wsdl: ${checkmarx.base-url}/SDK/CxSDKWebService.asmx?wsdl

sca:
  appUrl: https://sca.checkmarx.net
  apiUrl: https://api-sca.checkmarx.net
  accessControlUrl: https://platform.checkmarx.net
  tenant: ps-team-emea
  username: luis.garciaviejo@checkmarx.com
  password: CxPass123!
  team: "/CxServer"
  include-sources: false
  #exclude-files: "**/*.xml"
  #manifests-include-pattern: "!**/*.xml, **/*.yml"
  fingerprints-include-pattern: "**/*.yml"
  preserve-xml: true
  filter-severity:
    - High
  filter-policy-violation: true
  #If User want to check for Direct Dependency specifically below tag can be used and default value is All. 
  filter-dependency-type: Direct
  #Based on threshold severity it will break build even for Direct Dependency.
  thresholds-Severity:
    HIGH: 1
    MEDIUM: 150
    LOW: 1
  enable-sca-resolver : true
  path-to-sca-resolver : /var/jenkins_home/workspace/Novartis_CxFlow_ScaResolverkk
  #sca-resolver-add-parameters : "--cxserver http://172.35.1.19 --cxuser admin --cxpassword 'KsHPJ8JCD5otOLixmMov_' --cxprojectname Novartis_CxFlow_ScaResolver"
  #sca-resolver-add-parameters : "--cxserver http://172.35.1.19 --cxuser admin --cxpassword KsHPJ8JCD5otOLixmMov_ --cxprojectname Novartis_CxFlow_ScaResolver --sast-result-path /var/jenkins_home/workspace/Novartis_CxFlow_ScaResolver --log-level Debug"
