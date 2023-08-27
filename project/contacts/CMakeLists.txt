cmake_minimum_required(VERSION 3.16)

project(contacts VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appcontacts
    main.cpp
)

set_source_files_properties(qml/library/CTokens.qml PROPERTIES
  QT_QML_SINGLETON_TYPE TRUE
)


qt_add_qml_module(appcontacts
    URI contacts
    VERSION 1.0
    QML_FILES qml/Main.qml
        qml/library/CTokens.qml
        qml/library/CText.qml
        qml/library/CTextStyle.qml
        qml/project/ContactModel.qml
    RESOURCES
        qml/resources/pictures/andrea_bertelli.png
        qml/resources/pictures/andrew_petrin.png
        qml/resources/pictures/azim_ghalib.png
        qml/resources/pictures/carole_dupont.png
        qml/resources/pictures/chloe_lepage.png
        qml/resources/pictures/daniela_rodrigez.png
        qml/resources/pictures/jeanluc_lack.png
        qml/resources/pictures/jeff_bond.png
        qml/resources/pictures/lana_reed_round.png
        qml/resources/pictures/louisa_murillo.png
        qml/resources/pictures/michelle_leman.png
        qml/resources/pictures/patrick_brousse.png
        qml/resources/pictures/sean_takagi.png
        qml/resources/pictures/susan_chaney.png
        qml/resources/pictures/xiang_hsiung.png

        qml/resources/icons/contact.svg
        qml/resources/icons/mail.svg
        qml/resources/icons/message.svg
        qml/resources/icons/phone.svg
)

target_link_libraries(appcontacts PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(TARGETS appcontacts
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
