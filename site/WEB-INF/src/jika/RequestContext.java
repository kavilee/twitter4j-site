package jika;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.ServletContext;
import java.util.Properties;
public class RequestContext{
  HttpServletRequest request;
  
  String resourcePath;
  
  ServletContext context = null;
  
  String encoding;
  Properties props = null;
  HttpServletRequest req = null;
  
  public RequestContext(ServletContext context,HttpServletRequest req,
      String resourcePath) {
    this.req = req;
    this.resourcePath = resourcePath;
    this.context = context;
    this.encoding = context.getInitParameter("encoding");
  }
  public RequestContext(String encoding,
      String resourcePath) {
    props = new Properties();
    this.resourcePath = resourcePath;
    this.encoding = encoding;
  }
  
  public String getEncoding() {
    return encoding;
  }
  public void setProperty(String name,String value){
    if(req != null){
      req.setAttribute(name,value);
    }else{
      props.setProperty(name,value);
    }
  }
  public String getProperty(String name){
    if(req != null){
      return (String)req.getAttribute(name);
    }else{
      return props.getProperty(name);
    }
  }
  
  public String getResourcePath() {
    if(resourcePath.endsWith("/")){
      return resourcePath+"index.html";
    }else{
      return resourcePath;
    }
  }
  public void setResourcePath(String newResourcePath){
    this.resourcePath = newResourcePath;
  }
  
  public BufferedReader getResourceAsReader(String path) throws IOException{
    return  new BufferedReader(new InputStreamReader(getResourceAsStream(path),encoding));
  }
  
  public InputStream getResourceAsStream(String path) throws IOException {
    InputStream is;
    if (null != context) {
      String realPath = context.getRealPath(path);
      if (null != realPath) {
        try {
          is = new FileInputStream(realPath);
        } catch (FileNotFoundException fnfe) {
          is = new FileInputStream(realPath + "/index.html");
        }
      } else {
        is = context.getResourceAsStream(path);
      }
    }else{
      is = new FileInputStream(path);
    }
    return is;
  }
}