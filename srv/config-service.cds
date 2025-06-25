using my.config as my from '../db/schema';

service ConfigService {
  entity Configs as projection on my.Configs;
}
