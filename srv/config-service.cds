using {my.config as my} from '../db/schema';

@path: 'service/config'
service ConfigService  @(requires: 'authenticated-user'){
  entity Configs @(restrict: [{
  grant: [
     '*'
  ], // Allowing CDS events by explicitly mentioning them
  to   : 'ConfigManager'
}]) as projection on my.Configs;

annotate Configs with @odata.draft.enabled;

}
