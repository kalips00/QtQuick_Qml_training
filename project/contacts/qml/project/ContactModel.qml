import QtQuick


ListModel {
    id: root

    // Andrew Petrin
    ListElement {
        name: "Andrew Petrin"
        status: 2
        birthday: "13/10/1980"
        phoneNumber: "0600453145"
        picture: "andrew_petrin.png"
        mail: "andrew.petrin@gmail.com"
        job: "Responsable projet"
        address: "2B rue des acacias, 31100 Toulouse"
        activity: [
            ListElement {type: 0; subType: 1; date: "30/08/2023, 15h52"; content:"34:46"},
            ListElement {type: 0; subType: 1; date: "29/08/2023, 13h12"; content:"00:00"},
            ListElement {type: 0; subType: 1; date: "29/08/2023, 11h59"; content:"00:00"},
            ListElement {type: 0; subType: 1; date: "29/08/2023, 11h28"; content:"00:00"}
        ]
    }

    // Daniela Rodrigez
    ListElement {
        name: "Daniela Rodrigez"
        status: 1
        birthday: "15/06/2000"
        phoneNumber: "0647423615"
        picture: "daniela_rodrigez.png"
        mail: "daniela.rodriguez@gmail.com"
        job: "Développeur"
        address: "37 rue des peupliers, 31100 Toulouse"
        activity: [
            ListElement {type: 0; subType: 1; date: "18/08/2023, 15h52"; content:"08:22"},
            ListElement {type: 1; subType: 0; date: "16/08/2023, 08h41"; content:"Bonjour, comment vas-tu ?"},
            ListElement {type: 0; subType: 1; date: "08/08/2023, 12h31"; content:"00:22"}
        ]
    }

    // Chloé Lepage
    ListElement {
        name: "Chloé Lepage"
        status: 0
        birthday: "23/02/1995"
        phoneNumber: "0643478567"
        picture: "chloe_lepage.png"
        mail: "chloe.lepage@gmail.com"
        job: "Développeur"
        address: "1 impasse des chênes, 31100 Toulouse"
        activity: [
            ListElement {type: 1; subType: 0; date: "09/08/2023, 11h11"; content:"Salut, j'ai finie la story #39"},
            ListElement {type: 1; subType: 1; date: "09/08/2023, 11h13"; content:"Ok super merci !"}
        ]
    }

    // Azim Ghalib
    ListElement {
        name: "Azim Ghalib"
        status: 1
        birthday: "14/04/1988"
        phoneNumber: "0642235689"
        picture: "azim_ghalib.png"
        mail: "azim.ghalib@gmail.com"
        job: "UX designer"
        address: "123 avenue des bouleaux, 31100 Toulouse"
        activity: [
            ListElement {type: 0; subType: 1; date: "13/08/2023, 14h03"; content:"05:46"}
        ]
    }

    // Louisa Murillo
    ListElement {
        name: "Louisa Murillo"
        status: 3
        birthday: "31/12/2001"
        phoneNumber: "0643478567"
        picture: "louisa_murillo.png"
        mail: "louisa.murillo@gmail.com"
        job: "Product Owner"
        address: "12 rue des liquidambars, 31100 Toulouse"
        activity: [
            ListElement {type: 1; subType: 1; date: "08/08/2023, 08h01"; content:"Salut, tu penses qu'il reste combien de jours pour la story #39"},
            ListElement {type: 1; subType: 0; date: "09/08/2023, 08h13"; content:"Je sais pas, je vais me renseigner auprès de Chloé"},
            ListElement {type: 1; subType: 1; date: "08/08/2023, 08h14"; content:"Merci, tu me tiendras au courant !"}
        ]
    }

    // Susan Chaney
    ListElement {
        name: "Susan Chaney"
        status: 2
        birthday: "28/01/1984"
        phoneNumber: "0699030291"
        picture: "susan_chaney.png"
        mail: "susan.chaney@gmail.com"
        job: "Développeur"
        address: "56 rue des albizias, 31100 Toulouse"
        activity: []
    }

    // Patrick Brousse
    ListElement {
        name: "Patrick Brousse"
        status: 2
        birthday: "19/11/1972"
        phoneNumber: "0600000011"
        picture: "patrick_brousse.png"
        mail: "patrick_brousse@gmail.com"
        job: "Lead développeur"
        address: "8 impasse des arbousiers, 31100 Toulouse"
        activity: [
            ListElement {type: 0; subType: 0; date: "23/08/2023, 10h59"; content:"45:54"},
            ListElement {type: 0; subType: 0; date: "19/08/2023, 09h08"; content:"38:08"},
            ListElement {type: 0; subType: 0; date: "18/08/2023, 16h08"; content:"23:06"}
        ]
    }

    // Xiang Hsiung
    ListElement {
        name: "Xiang Hsiung"
        status: 1
        birthday: "13/09/1998"
        phoneNumber: "0634556789"
        picture: "xiang_hsiung.png"
        mail: "xiang.hsiung@gmail.com"
        job: "UI designer"
        address: "167 avenue des hêtres, 31100 Toulouse"
        activity: [
            ListElement {type: 0; subType: 1; date: "25/08/2023, 14h29"; content:"1:05:14"},
            ListElement {type: 1; subType: 0; date: "25/08/2023, 14h22"; content:"Salut ça va ? tu aurais 5 min ?"}
        ]
    }

    // Xiang Hsiung
    ListElement {
        name: "Carole Dupont"
        status: 0
        birthday: "17/03/1991"
        phoneNumber: "0687567222"
        picture: "carole_dupont.png"
        mail: "carole.dupont@gmail.com"
        job: "Scrum Master"
        address: "9 rue des lauriers, 31100 Toulouse"
        activity: [
            ListElement {type: 0; subType: 0; date: "19/08/2023, 14h34"; content:"55:07"}
        ]
    }
}
