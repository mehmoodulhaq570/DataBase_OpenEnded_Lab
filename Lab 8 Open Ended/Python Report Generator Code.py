from reportlab.lib.pagesizes import letter
from reportlab.lib import colors
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle
import pyodbc

# Define the SQL Server connection parameters
server = 'MEHMOOD\SQLEXPRESS'
database = 'OEL_DB'
trusted_connection = 'yes'  # Use Windows Authentication

# Create a connection to the SQL Server database
conn_str = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};Trusted_Connection={trusted_connection};'
conn = pyodbc.connect(conn_str)

# Create a PDF document
pdf_file = "report.pdf"
doc = SimpleDocTemplate(pdf_file, pagesize=letter)

# Define a function to execute a SQL query and return the results as a list of lists
def execute_query(query):
    cursor = conn.cursor()
    cursor.execute(query)
    rows = cursor.fetchall()
    header = [column[0] for column in cursor.description]
    return [header] + [list(row) for row in rows]

# Define SQL queries from your script
queries = [
    "SELECT * FROM Student",
    "SELECT * FROM CLOs",
    "SELECT * FROM Assessment",
    "SELECT * FROM Rubric",
    "SELECT * FROM AssessmentComponents",
    "SELECT * FROM RubricLevels",
    "SELECT * FROM StudentResult",
    
]

# Create a list to store data tables for each query result
data_tables = []

# Execute the queries and populate data_tables
for query in queries:
    data = execute_query(query)
    data_tables.append(data)

# Create tables for each data query result
table_styles = []
for data in data_tables:
    table = Table(data)
    table_style = TableStyle([
        ('BACKGROUND', (0, 0), (-1, 0), colors.grey),
        ('TEXTCOLOR', (0, 0), (-1, 0), colors.whitesmoke),
        ('ALIGN', (0, 0), (-1, -1), 'CENTER'),
        ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
        ('BOTTOMPADDING', (0, 0), (-1, 0), 12),
        ('BACKGROUND', (0, 1), (-1, -1), colors.beige),
        ('GRID', (0, 0), (-1, -1), 1, colors.black)
    ])
    table.setStyle(table_style)
    table_space = table
    table_space.spaceBefore = 10
    data_tables[data_tables.index(data)] = table_space

# Build the PDF document
doc.build(data_tables)
print(f"Report generated: {pdf_file}")

# Close the database connection
conn.close()