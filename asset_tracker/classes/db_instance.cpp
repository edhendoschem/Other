#include "db_instance.h"

//Table//
Table::Table(): mTableName{}, mTableFields{}{}

Table::Table(std::string_view inTableName, FieldAndType const& inTableFields):
    mTableName{inTableName}, mTableFields{inTableFields}{}
    
Table::Table(std::string_view inTableName): mTableName{inTableName}, mTableFields{}{}

void Table::setTableName(std::string_view inTableName)
{
    mTableName = inTableName;
}

void Table::addFieldAndType(strpair const& inPair)
{
    mTableFields.emplace_back(inPair);
}

std::string Table::getTableName() const
{
    return mTableName;
}

Table::FieldAndType Table::getTableFields() const
{
    return mTableFields;
}


//Database//
Database::Database(std::string_view inFilename): mDatabase{sqlite::database{inFilename.data()}},
                                                 mTable{Table{}}
                                                 {}
Database::Database(sqlite::database&& inDatabase): mDatabase{std::move(inDatabase)},
                                                   mTable{Table{}}
                                                   {}
