
from configparser import ConfigParser

def config(filename='_bookdown_files/config/database.ini', section='postgresql'):

    # create a parser

    parser = ConfigParser()
    
    # read config file
    
    parser.read(filename)
    
    # get section, default to postgresql
    
    db = {}
    if parser.has_section(section):
        parms = parser.items(section)
        for parm in parms:
            db[parm[0]] = parm[1]
    else:
         raise Exception(f'Section {section} not found in the {filename} file')
    return db

