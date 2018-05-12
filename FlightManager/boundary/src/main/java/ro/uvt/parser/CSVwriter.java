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
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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

    private final List<Field> classFields = new LinkedList<>();

    public CSVwriter(File path, Class<T> type) throws FileNotFoundException {
        output = new FileOutputStream(path);
        this.type = type;
        init();
    }

    public void init() {
        for (Field field : type.getDeclaredFields()) {
            String name = field.getName();
            if (!name.startsWith("_") && name != "serialVersionUID" && 
                 name != "is_active"  && isSafe(field) && name != "id" ) {
                classFields.add(field);
            }
        }
    }

    private boolean isSafe(Field field) {
        Annotation[] annotations = field.getAnnotations();
        for (Annotation annotation : annotations) {
            String name = annotation.toString();
            if (name.contains("OneToMany") || name.contains("ManyToOne") ||
                name.contains("OneToOne") || name.contains("ManyToMany")) {
                return false;
            }
        }
        return true;
    }

    private CSVFormat format() {
        int size = classFields.size();
        String[] head = new String[size];
        for (int i = 0; i < size; i++) {
            head[i] = classFields.get(i).getName();
        }
        return CSVFormat.DEFAULT.withHeader(head);
    }

    private List<List<String>> getStringRecords(List<T> records) throws IllegalArgumentException, IllegalAccessException {
        List<List<String>> sRecords = new ArrayList<>();
        for (T record : records) {
            List<String> rec = new ArrayList<>();
            for (Field f : classFields) {
                if (!f.isAccessible()) {
                    f.setAccessible(true);
                    rec.add(f.get(record).toString());
                    f.setAccessible(false);
                } else {
                    rec.add(f.get(record).toString());
                }
            }
            sRecords.add(rec);
        }
        return sRecords;
    }

    public void writeRecords(List<T> records) throws IOException {

        CSVPrinter printer = new CSVPrinter(builder, format());

        List<List<String>> sRecords = null;
        try {
            sRecords = getStringRecords(records);
            printer.printRecords(sRecords);
            byte[] bRecords = builder.toString().getBytes();

            output.write(bRecords);
        } catch (IllegalArgumentException ex) {
            Logger.getLogger(CSVwriter.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(CSVwriter.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
