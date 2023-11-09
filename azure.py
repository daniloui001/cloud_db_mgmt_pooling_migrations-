from sqlalchemy import create_engine, inspect, Column, Integer, String, Date, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base
import os
from dotenv import load_dotenv

load_dotenv()

databaseURL = os.getenv("AZUREDB_URL")

Base = declarative_base()

class PatientsAge(Base):
    __tablename__ = 'PatientsAge'

    Age = Column(Integer, primary_key=True)

    records = relationship('MedicalRecord', back_populates='patient')

class PatientsBloodPressure(Base):
    __tablename__ = 'PatientsBloodPressure'

    PatientID = Column(Integer, primary_key=True)
    SystolicPressure = Column(Integer, primary_key=True)
    DiastolicPressure = Column(Integer, primary_key=True)

    patient = relationship('Patient', back_populates='records')


### Part 2 - initial sqlalchemy-engine to connect to db:

DATABASE_URL = "mysql+mysqlconnector://clouddbmanage.mysqldatabase.azure.com"
engine = create_engine(DATABASE_URL)

## Test connection

inspect = inspect(engine)
inspect.get_table_names()