import java.awt.Image;
import java.awt.Toolkit;
import java.sql.SQLException;
import javax.swing.*;

public class UniversityOfGuilan {
    
    //Frames:
    static JFrame MainFrame = new JFrame();
    static JFrame RegisterFrame = new JFrame();
    static JFrame SelectCourseFrame = new JFrame();
    static JFrame DeleteCourseFrame = new JFrame();
    static JFrame DeleteCourseDBFrame = new JFrame();
    static JFrame DeleteStudentFrame = new JFrame();
    static JFrame ShowInfoFrame = new JFrame();
    static JFrame ShowTablesFrame = new JFrame();
    static JFrame AboutFrame = new JFrame();
    static JFrame SelectCourseCmpFrame = new JFrame();
    static JFrame SelectCourseCvlFrame = new JFrame();
    static JFrame SelectCourseIndFrame = new JFrame();
    static JFrame SelectCourseSciFrame = new JFrame();
    
    
    public static void main(String[] args) {
        
        //MainPanel:
        MainPanel panel1 = new MainPanel();
        MainFrame.add(panel1);
        
        MainFrame.setTitle("دانشکده ی فنی مهندسی شرق گیلان");
        MainFrame.setSize(620, 700);
        MainFrame.setResizable(false);
        MainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        main();
    }
    
    public static void main() {
        
        RegisterFrame.setVisible(false);
        SelectCourseFrame.setVisible(false);
        DeleteCourseFrame.setVisible(false);
        DeleteCourseDBFrame.setVisible(false);
        DeleteStudentFrame.setVisible(false);
        ShowInfoFrame.setVisible(false);
        ShowTablesFrame.setVisible(false);
        AboutFrame.setVisible(false);
        SelectCourseCmpFrame.setVisible(false);
        SelectCourseCvlFrame.setVisible(false);
        SelectCourseIndFrame.setVisible(false);
        SelectCourseSciFrame.setVisible(false);
        
        MainFrame.setVisible(true);
        //show in center :
        MainFrame.setLocationRelativeTo(null);
    }
    
    public static void Register(){
     
        MainFrame.setVisible(false);
        
        RegisterPanel panel2 = new RegisterPanel();
        RegisterFrame.add(panel2);
        
        RegisterFrame.setTitle("دانشکده ی فنی مهندسی شرق گیلان");
        RegisterFrame.setSize(700, 700);
        RegisterFrame.setResizable(false);
        RegisterFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        RegisterFrame.setVisible(true);
        
    }
    
    public static void SelectCourse(){
     
        MainFrame.setVisible(false);
        
        SelectCoursePanel panel3 = new SelectCoursePanel();
        SelectCourseFrame.add(panel3);
        
        SelectCourseFrame.setTitle("دانشکده ی فنی مهندسی شرق گیلان");
        SelectCourseFrame.setSize(728, 400);
        SelectCourseFrame.setResizable(false);
        SelectCourseFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        SelectCourseFrame.setVisible(true);
    }
    
    public static void SelectCourseCmp(){
     
        SelectCourseFrame.setVisible(false);
        
        SelectCourseComputer panelcmp = new SelectCourseComputer();
        SelectCourseCmpFrame.add(panelcmp);
        
        SelectCourseCmpFrame.setTitle("دانشکده ی فنی مهندسی شرق گیلان");
        SelectCourseCmpFrame.setSize(740, 740);
        SelectCourseCmpFrame.setResizable(false);
        SelectCourseCmpFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        SelectCourseCmpFrame.setVisible(true);
    }
    
    public static void SelectCourseCvl(){
     
        SelectCourseFrame.setVisible(false);
        
        SelectCourseCivil panelCvl = new SelectCourseCivil();
        SelectCourseCvlFrame.add(panelCvl);
        
        SelectCourseCvlFrame.setTitle("دانشکده ی فنی مهندسی شرق گیلان");
        SelectCourseCvlFrame.setSize(740, 740);
        SelectCourseCvlFrame.setResizable(false);
        SelectCourseCvlFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        SelectCourseCvlFrame.setVisible(true);
    }
    
    public static void SelectCourseInd(){
     
        SelectCourseFrame.setVisible(false);
        
        SelectCourseIndustrial panelInd = new SelectCourseIndustrial();
        SelectCourseIndFrame.add(panelInd);
        
        SelectCourseIndFrame.setTitle("دانشکده ی فنی مهندسی شرق گیلان");
        SelectCourseIndFrame.setSize(740, 740);
        SelectCourseIndFrame.setResizable(false);
        SelectCourseIndFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        SelectCourseIndFrame.setVisible(true);
    }
    
    public static void SelectCourseSci(){
     
        SelectCourseFrame.setVisible(false);
        
        SelectCourseSciences panelSci = new SelectCourseSciences();
        SelectCourseSciFrame.add(panelSci);
        
        SelectCourseSciFrame.setTitle("دانشکده ی فنی مهندسی شرق گیلان");
        SelectCourseSciFrame.setSize(740, 740);
        SelectCourseSciFrame.setResizable(false);
        SelectCourseSciFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        SelectCourseSciFrame.setVisible(true);
    }
    
    public static void DeleteCourse(){
     
        MainFrame.setVisible(false);
        
        DeleteCoursePanel panel4 = new DeleteCoursePanel();
        DeleteCourseFrame.add(panel4);
        
        DeleteCourseFrame.setTitle("دانشکده ی فنی مهندسی شرق گیلان");
        DeleteCourseFrame.setSize(740, 750);
        DeleteCourseFrame.setResizable(false);
        DeleteCourseFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        DeleteCourseFrame.setVisible(true);
    }
    
    
    public static void DeleteStudent(){
     
        MainFrame.setVisible(false);
        
        DeleteStudentPanel panel5 = new DeleteStudentPanel();
        DeleteStudentFrame.add(panel5);
        
        DeleteStudentFrame.setTitle("دانشکده ی فنی مهندسی شرق گیلان");
        DeleteStudentFrame.setSize(728, 400);
        DeleteStudentFrame.setResizable(false);
        DeleteStudentFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        DeleteStudentFrame.setVisible(true);
    }
    
    public static void ShowInfo(){
        
        MainFrame.setVisible(false);
        
        ShowInfo panel7 = new ShowInfo();
        ShowInfoFrame.add(panel7);
        
        ShowInfoFrame.setTitle("دانشکده ی فنی مهندسی شرق گیلان");
        ShowInfoFrame.setSize(740, 740);
        ShowInfoFrame.setResizable(false);
        ShowInfoFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        ShowInfoFrame.setVisible(true);
    }
    
    
    public static void AboutFrame(){
        MainFrame.setVisible(false);
        
        AboutUniPanel panel8 = new AboutUniPanel();
        AboutFrame.add(panel8);
        
        AboutFrame.setTitle("دانشکده ی فنی مهندسی شرق گیلان");
        AboutFrame.setSize(750, 650);
        AboutFrame.setResizable(false);
        AboutFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        AboutFrame.setVisible(true);
    }
    
    public static void Exit(){
        MainFrame.setVisible(false);
    }
}
