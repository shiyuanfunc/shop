package com.song.export;

import org.apache.poi.hssf.usermodel.*;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by lenovo on 2017/9/27.
 */
public class ExportExcel extends AbstractExcelView {
    @Override
    protected void buildExcelDocument(Map<String, Object> map, HSSFWorkbook workbook,
                                      HttpServletRequest httpServletRequest, HttpServletResponse response) throws Exception {
        String excelName = "�û���Ϣ.xls";
        // ����response��ʽ,ʹִ�д�controllerʱ���Զ���������ҳ��,����ֱ��ʹ��excel��
        response.setContentType("APPLICATION/OCTET-STREAM");
        response.setHeader("Content-Disposition", "attachment; filename="+ URLEncoder.encode(excelName, "UTF-8"));

        List stuList = (List) map.get("list");
        // ����Excel��ͷ
        HSSFSheet sheet = workbook.createSheet("studentList");
        HSSFRow header = sheet.createRow(0); // ��0��
        // ����������
        header.createCell((short) 0).setCellValue("name");
        header.createCell((short) 1).setCellValue("sex");
        header.createCell((short) 2).setCellValue("date");
        header.createCell((short) 3).setCellValue("count");
        HSSFCellStyle cellStyle = workbook.createCellStyle();
        cellStyle.setDataFormat(HSSFDataFormat.getBuiltinFormat("mm/dd/yyyy"));

        // �������
        int rowNum = 1;
        for (Iterator iter = stuList.iterator(); iter.hasNext();) {
            //Student element = (Student) iter.next();
            HSSFRow row = sheet.createRow(rowNum++);
          /*  row.createCell((short) 0)
                    .setCellValue(element.getName().toString());
            row.createCell((short) 1).setCellValue(element.getSex().toString());
            row.createCell((short) 2)
                    .setCellValue(element.getDate().toString());
            row.getCell((short) 2).setCellStyle(cellStyle);
            row.createCell((short) 3).setCellValue(element.getCount());*/
        }

        // ���ܺͼ���
        HSSFRow row = sheet.createRow(rowNum);
        row.createCell((short) 0).setCellValue("TOTAL:");
        String formual = "SUM(D2:D" + rowNum + ")"; // D2��D[rowNum]��Ԫ����(count����)
        row.createCell((short) 3).setCellFormula(formual);
    }
}
