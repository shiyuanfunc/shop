//package com.song.export;
//
//import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;
//import jxl.write.WritableSheet;
//import jxl.write.WritableWorkbook;
//import org.slf4j.LoggerFactory;
//import org.springframework.web.servlet.view.document.AbstractJExcelView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.awt.*;
//import java.io.OutputStream;
//import java.util.Map;
//import java.util.logging.Logger;
//
///**
// * Created by lenovo on 2017/9/27.
// */
//public class ExportExcel extends AbstractJExcelView {
//    private static Logger logger = LoggerFactory.getLogger(JExcelView.class);
//    private OutputStream os;
//
//    String[] tilte = new String[]{"序号","资产名称","资产类型","创建时间","删除人","删除时间","删除主机"};
//
//    List<AssetCategoryDefine> categoryList = null;
//    List<User> userList = null;
//
//
//    @SuppressWarnings("unchecked")
//    @Override
//    protected void buildExcelDocument(Map<String, Object> model,
//                                      WritableWorkbook workbook,
//                                      HttpServletRequest request,
//                                      HttpServletResponse response){
//        os = null;
//        try {
//
//            categoryList = (List<AssetCategoryDefine>)model.get("allCategory");
//            userList = (List<User>)model.get("allUser");
//
//            String filename = (String)model.get("filename");
//            //String total = (String)model.get("total");
//            //响应信息，弹出文件下载窗口
//            response.setContentType("APPLICATION/OCTET-STREAM");
//            response.setHeader("Content-Disposition",  "attachment; filename="
//                    + URLEncoder.encode(filename, "UTF-8"));
//            os = response.getOutputStream();
//
//            //全局设置
//            WorkbookSettings settings = new WorkbookSettings();
//            settings.setEncoding("UTF-8");
//            settings.setLocale(new Locale("zh", "cn"));
//
//            workbook =  Workbook.createWorkbook(os);
//            WritableSheet sheet =  workbook.createSheet("资产信息", 0);
//
//            String titleName = "资产信息";
//
//            //添加标题和文件列表头
//            addTitle(sheet,tilte,titleName);
//            //添加文件信息
//            List<MObject> list = (List<MObject>)model.get("items");
//            addContextByList(sheet,list,tilte.length);
//        } catch (Throwable e) {
//            logger.error("资产信息导出Excel出错："+e.getMessage());
//        }finally {
//            try {
//                workbook.write();
//                workbook.close();
//                os.flush();
//                os.close();
//            } catch (Throwable e) {
//                logger.error("资产信息导出Excel出错："+e.getMessage());
//            }
//        }
//
//    }
//
//    //添加标题和列头信息
//    public void addTitle(WritableSheet sheet, String[] assettitle, String total,String titleName) throws RowsExceededException, WriteException {
//        //添加标题第一行
//        Label label = new Label(2, 0, titleName+"(共"+total+"条)",getHeader());
//        sheet.addCell(label);
//        //添加第二行
//        for (int i = 0; i < tilte.length; i++) {
//            label = new Label(i, 1, tilte[i]);
//            sheet.addCell(label);
//        }
//    }
//
//    //添加标题和列头信息
//    public void addTitle(WritableSheet sheet, String[] assettitle,String titleName) throws RowsExceededException, WriteException {
//        //添加标题第一行
//        Label label = new Label(2, 0, titleName,getHeader());
//        sheet.addCell(label);
//        //添加第二行
//        for (int i = 0; i < tilte.length; i++) {
//            label = new Label(i, 1, tilte[i]);
//            sheet.addCell(label);
//        }
//    }
//
//    //添加所有文件信息 从第三行开始添加
//    //{"序号","资产名称","资产类型","创建时间","删除人","删除时间","删除主机"};
//    @SuppressWarnings("unchecked")
//    private <T> void addContextByList(WritableSheet sheet, List<T> list, int length) throws RowsExceededException, WriteException {
//        if (list!=null) {
//            CellView cellView = new CellView();
//            cellView.setAutosize(true);
//
//            List<MObject> mObjects = (List<MObject>)list;
//            //int size = mObjects.size();
//            Label label = null;
//            MObject mObject = null;
//            String value = "";
//            for (int i = 0; i < list.size(); i++) {
//                for (int j = 0; j < length; j++) {
//                    mObject = mObjects.get(i);
//                    if(j==0){
//                        label = new Label(j, i+2, i+"");
//                        sheet.addCell(label);
//                    }else{
//                        value = getValue(mObject,j);
//                        label = new Label(j, i+2, value+"");
//                        sheet.addCell(label);
//                        sheet.setColumnView(j, cellView);
//                    }
//
//                }
//            }
//        }else{
//            Label label = new Label(0,3,"暂无数据");
//            sheet.addCell(label);
//        }
//    }
//
//    //根据列名获取值，先写死，之后再想其他办法
//    //{"序号","资产名称","资产类型","创建时间","删除人","删除时间","删除主机"};
//    private String getValue(MObject mObject, int j) {
//
//        switch (j) {
//            case 1:
//                return mObject.getName();
//            case 2:
//                return getAssetCategory(objectToString(mObject.getCategoryId()),null);
//            case 3:
//                return objectToString(mObject.getCreatedTime());
//            case 4:
//                return getUserInfo(objectToString(mObject.getDeletedBy()),null);
//            case 5:
//                return objectToString(mObject.getDeletedTime());
//            case 6:
//                return objectToString(mObject.getExtraData().get("delHostName"));
//            default:
//        }
//        return null;
//    }
//
//    private String objectToString(Object object){
//        if(object==null){
//            return "";
//        }else{
//            if(object instanceof Date){
//                DateFormat from_type = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//                Date date = (Date)object;
//                return from_type.format(date);
//            }else{
//                return (String)object;
//            }
//        }
//    }
//
//    //标题样式
//    public static WritableCellFormat getHeader(){
//
//        WritableFont font = new WritableFont(WritableFont.TIMES,15,WritableFont.BOLD);
//
//        WritableCellFormat  format  = new WritableCellFormat(font);
//        try {
//            format.setAlignment(Alignment.CENTRE);
//            format.setOrientation(Orientation.HORIZONTAL);
//        } catch (WriteException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//
//
//        return format;
//    }
//
//    //获取用户名称
//    /**
//     *    id 用户id
//     *  key:用于扩展属性的key值(若有)
//     * */
//    public String getUserInfo(String id,String key){
//        if(userList !=null&&userList.size() > 0 ){
//            for (User user : userList) {
//                if( user.getId().equals(id))
//                    return user.getName();
//
//            }
//        }
//        return null;
//    }
//
//    //获取类型名称
//    /**
//     *    id 类型id
//     *  key:用于扩展属性的key值 (若有)
//     * */
//    public String getAssetCategory(String id,String key){
//        if(categoryList!=null && categoryList.size()>0){
//            for (AssetCategoryDefine assetCategoryDefine : categoryList) {
//                if(assetCategoryDefine.getId().equals(id))
//                    return assetCategoryDefine.getName();
//            }
//        }
//        return null;
//    }
//}
//
