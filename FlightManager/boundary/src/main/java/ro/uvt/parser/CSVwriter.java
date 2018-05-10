/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.parser;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.List;
import javafx.beans.binding.StringBinding;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVPrinter;

/**
 *
 * @author dan
 */
public class CSVwriter<T> {
    
    private final Class<T> type;
    
    private final StringBuilder builder = new StringBuilder();
    
    private final FileOutputStream output;
    
    public  CSVwriter(File path,Class<T> type) throws FileNotFoundException{
        output = new FileOutputStream(path);
        this.type = type;
    }
    
    
    private CSVFormat format(){
        StringBuilder header = new StringBuilder();
        for(Field field : type.getFields() ){
                header.append(field.getName());
                header.append(" ");
            }
        return CSVFormat.DEFAULT.withHeader(header.toString());
    }
    
    
    public void writeRecords(List<T> records) throws IOException{
    
        CSVPrinter printer = new CSVPrinter(builder, format());
        
        printer.printRecords(records);
        
        byte[] bRecords  = builder.toString().getBytes();
        
        output.write(bRecords);
    }
}
