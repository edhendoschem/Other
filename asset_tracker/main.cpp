#include "headers.h"


int main(int argc, char **argv)
{
    Database test {"some_test.db"};
    
    
    //testTextVariable();
    //testErrors();
    //testIntVariable();
    //original db
    /*
    try {
    // creates a database file 'dbfile.db' if it does not exists.
    sqlite::database db("dbfile.db");

    // executes the query and creates a 'user' table
    db <<
        "create table if not exists user ("
        "   _id integer primary key autoincrement not null,"
        "   age int,"
        "   name text,"
        "   weight real"
        ");";
    
    // inserts a new user record.
    // binds the fields to '?' .
    // note that only types allowed for bindings are :
    //      int ,long, long long, float, double
    //      string , u16string
    // sqlite3 only supports utf8 and utf16 strings, you should use std::string for utf8 and std::u16string for utf16.
    // note that u"my text" is a utf16 string literal of type char16_t * .
    db << "insert into user (age,name,weight) values (?,?,?);"
        << "20"
        << u"bob"
        << "83.25";
    
    int age = 21;
    float weight = 68.5;
    std::string name = "jack";
    db << u"insert into user (age,name,weight) values (?,?,?);" // utf16 query string
        << age
        << name
        << weight;
    
    std::cout << "The new record got assigned id " << db.last_insert_rowid() << std::endl;

    // slects from user table on a condition ( age > 18 ) and executes
    // the lambda for each row returned .
    db << "select age,name,weight from user where age > ? ;"
        << 18
        >> [&](int age, std::string name, double weight) {
        std::cout << age << ' ' << name << ' ' << weight << std::endl;
        };

    // selects the count(*) from user table
    // note that you can extract a single column single row result only to : int,long,long,float,double,string,u16string
    int count = 0;
    db << "select count(*) from user" >> count;
    std::cout << "cout : " << count << std::endl;
    
    // you can also extract multiple column rows
    db << "select age, name from user where _id=1;" >> tie(age, name);
    std::cout << "Age = " << age << ", name = " << name << std::endl;

    // this also works and the returned value will be automatically converted to string
    std::string str_count;
    db << "select count(*) from user" >> str_count;
        std::cout << "scount : " << str_count << std::endl;

   } catch (std::exception& e) {
      std::cout << e.what() << std::endl;
   }
*/

//Dear ImGui + SFML bindings
/*
    sf::RenderWindow window(sf::VideoMode(640, 480), "");
    window.setVerticalSyncEnabled(true);
    ImGui::SFML::Init(window);

    sf::Color bgColor;

    float color[3] = { 0.f, 0.f, 0.f };

    // let's use char array as buffer, see next part
    // for instructions on using std::string with ImGui
    char windowTitle[255] = "Window title";

    window.setTitle(windowTitle);
    window.resetGLStates(); // call it if you only draw ImGui. Otherwise not needed.
    sf::Clock deltaClock;
    while (window.isOpen()) {
        sf::Event event;
        while (window.pollEvent(event)) {
            ImGui::SFML::ProcessEvent(event);

            if (event.type == sf::Event::Closed) {
                window.close();
            }
        }

        ImGui::SFML::Update(window, deltaClock.restart());
        ImGui::ShowDemoWindow();
                                
        window.clear(bgColor); // fill background with color
        ImGui::SFML::Render(window);
        window.display();
    }

    ImGui::SFML::Shutdown();
    std::cout<<"End of program\n";
    */
    
    return 0;
}
