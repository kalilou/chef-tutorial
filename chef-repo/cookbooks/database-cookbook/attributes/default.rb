# Override these attributes from redis2 external cookbook
# These also defined in redis2 external cookbook with some values 
# but in our case we want some specific values different from the default ones coming with redis2

default['redis2']['instances']['master']['data_dir'] = '/opt/tutorial/data/redis'
default['redis2']['instances']['master']['replication'] = 'master'
default['redis2']['instances']['master']['bindaddress'] = '0.0.0.0'
default['redis2']['instances']['master']['port'] = '6379'