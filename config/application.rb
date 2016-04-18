APP_NAME = 'ASeriesOfTubesDemo'
APP_DIRECTORY = '.'
TUBE_DB_FOLDER = File.join(File.dirname(__FILE__), '..')
TUBE_SQL_FILE = File.join(TUBE_DB_FOLDER, 'db/cats.sql')
TUBE_DB_FILE = File.join(TUBE_DB_FOLDER, 'db/cats.db')

ASeriesOfTubes::TubeRecord::DBConnection.open(TUBE_DB_FILE)
