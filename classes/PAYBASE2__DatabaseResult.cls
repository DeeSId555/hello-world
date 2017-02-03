/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class DatabaseResult {
    global Boolean created {
        get;
        set;
    }
    global List<PAYBASE2.DatabaseResult.Error> errors {
        get;
        set;
    }
    global String id {
        get;
        set;
    }
    global Boolean success {
        get;
        set;
    }
    global DatabaseResult() {

    }
global virtual class Error {
    global List<String> fields {
        get;
        set;
    }
    global String message {
        get;
        set;
    }
    global System.StatusCode statusCode {
        get;
        set;
    }
    global Error() {

    }
}
}
