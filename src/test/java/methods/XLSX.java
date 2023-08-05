package methods;

import java.io.File;
import java.io.FileInputStream;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class XLSX {
	public static void main(String[]a) throws Exception {
	    File Source=new File(System.getProperty("user.home")+"\\Documents\\ATCAT 5.0\\ATCAT 5.0\\Test Data\\TestData.xlsx");
	    String Data=getData(Source,"ReconGroup","3","Column");
	    System.out.println(Data);
	}
 public static String getData(File FilePath,String SheetName,String RowName,String ColumnName) throws Exception {
	    String Data = null;
	    try {
	    FileInputStream fin=new FileInputStream(FilePath);
	    XSSFWorkbook workbook=new XSSFWorkbook(fin);
	    
	    String BufferValue;
	    int i;
	    int j;

	 

	    XSSFSheet sheet=workbook.getSheet(SheetName);
	    XSSFRow row=sheet.getRow(0);
	    
	    int totalNoOfCols = row.getLastCellNum();
	    
	    for(j=1;j<totalNoOfCols;j++) {
	        BufferValue = row.getCell(j).toString().trim();
	        if(BufferValue.equals(ColumnName)) {
	          break;
	        }
	    }
	    
	    for(i=1;i<totalNoOfCols;i++) {
	        row=sheet.getRow(i);
	        BufferValue = row.getCell(0).toString().trim();
	        if(BufferValue.equals(RowName)) {
	          break;
	        }
	    }
	    
	     Data=row.getCell(j).toString().trim();
	    }
	    catch (Exception e) {
	       // System.out.println(e);
	    }
	    return Data;
	}
}
