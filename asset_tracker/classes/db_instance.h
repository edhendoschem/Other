#ifndef DB_INSTANCE_H_INCLUDED
#define DB_INSTANCE_H_INCLUDED
//external includes
#include "external_includes/sqlite_modern_cpp.h"

//My classes/projects include
#include "db_vars.h"

//std includes
#include <vector>

class Table
{
    public:
        using strpair = std::pair<std::string, std::string>;
        using FieldAndType = std::vector<strpair>;
        
        Table();
        Table(std::string_view inTableName, FieldAndType const& inTableFields);
        explicit Table(std::string_view inTableName);
        
        void setTableName(std::string_view inTable);
        void addFieldAndType(strpair const& inPair);
        std::string getTableName() const;
        FieldAndType getTableFields() const;

    private:
        std::string mTableName;
        FieldAndType mTableFields;        
};


class Database
{
    public:
        explicit Database(std::string_view inFilename);
        explicit Database(sqlite::database&& inDatabase);
    
    private:
        sqlite::database mDatabase;
        Table mTable;
};


#endif