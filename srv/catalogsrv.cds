using { db.books as mybook} from '../db/booksdatamodel';


service LibrarySrv {
    entity BooksSet as projection on mybook.Books;
}

annotate LibrarySrv.BooksSet with @(
    UI:{


        LineItem: [
            { $Type: 'UI.DataField', Value: ID },
            { $Type: 'UI.DataField', Value: title },
            { $Type: 'UI.DataField', Value: author },
            { $Type: 'UI.DataField', Value: price },
            { $Type: 'UI.DataField', Value: publishedDate },
            { $Type: 'UI.DataField', Value: digitalCopy }
        ]
    }
);
