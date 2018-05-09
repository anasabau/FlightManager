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
import java.util.List;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVPrinter;

/**
 *
 * @author dan
 */
public class CSVwriter<T> {
    
    
    private final StringBuilder builder = new StringBuilder();
    
    private final FileOutputStream output;
    
    public  CSVwriter(File path,Class<T> type) throws FileNotFoundException{
        output = new FileOutputStream(path);
    }
    
    
    public void writeRecords(List<T> records) throws IOException{
    
        CSVPrinter printer = new CSVPrinter(builder, CSVFormat.DEFAULT);
        
        printer.printRecords(records);
        
        byte[] bRecords  = builder.toString().getBytes();
        
        output.write(bRecords);
    }
}
