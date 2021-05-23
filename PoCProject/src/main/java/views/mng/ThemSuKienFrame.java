/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package views.mng;
import models.LenLichSuKien;
import controllers.mng.LenLichSuKienController;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

import javax.swing.JOptionPane;
import controllers.user.XemLichSuDungNhaVanHoaController;
import javax.swing.JComboBox;
import javax.swing.GroupLayout.Alignment;
import javax.swing.GroupLayout;
import javax.swing.LayoutStyle.ComponentPlacement;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JLabel;
/**
 *
 * @author keplegarry
 */

import javax.swing.DefaultComboBoxModel;
import com.jgoodies.forms.factories.DefaultComponentFactory;
import javax.swing.JTable;
import com.toedter.calendar.JDateChooser;
import javax.swing.SwingConstants;
import java.awt.Font; // mới thêm
public class ThemSuKienFrame extends javax.swing.JFrame {
// thêm
    private String hours[] = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"};
    private String minutes[] = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24",
        "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51",
        "52", "53", "54", "55", "56", "57", "58", "59"};
    final DefaultComboBoxModel modelHours1 = new DefaultComboBoxModel(hours);
    final DefaultComboBoxModel modelHours2 = new DefaultComboBoxModel(hours);
    final DefaultComboBoxModel modelMinutes1 = new DefaultComboBoxModel(minutes);
    final DefaultComboBoxModel modelMinutes2 = new DefaultComboBoxModel(minutes);

	
    LenLichSuKien lichSuKien;
    /**
     * Creates new form ThemSuKienFrame
     */
    public ThemSuKienFrame() {
        initComponents();
        setLocationRelativeTo(null);
    }
    
    private boolean check(){      // thay đổi
        if(jTextFieldTenSk.getText().length() == 0 || jTextFieldMoTa.getText().length() == 0
            || jTextFieldChiPhi.getText().length() == 0 || jDateStart.getDate() == null
            || hourBoxStart.getItemAt(hourBoxStart.getSelectedIndex()).isEmpty() || jDateFinish.getDate() == null
            || hourBoxFinish.getItemAt(hourBoxStart.getSelectedIndex()).isEmpty() || minuteBoxStart.getItemAt(hourBoxStart.getSelectedIndex()).isEmpty()
            || minuteBoxFinish.getItemAt(hourBoxStart.getSelectedIndex()).isEmpty())
        {
            JOptionPane.showMessageDialog(null, "Vui lòng điền đẩy đủ thông tin", "Warning", JOptionPane.WARNING_MESSAGE);
            return false;
        }
        
        try{
                int fee = Integer.parseInt(jTextFieldChiPhi.getText());
            } catch(NumberFormatException e){
                JOptionPane.showMessageDialog(null, "Chi phí không hợp lệ", "Warning", JOptionPane.WARNING_MESSAGE);
                return false;
            } 
        return true;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jComboBox1 = new javax.swing.JComboBox<>();
        jLabel2 = new javax.swing.JLabel();
        jTextFieldTenSk = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jTextFieldChiPhi = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jTextFieldMoTa = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        // thêm
        jLabelTime1_1 = new javax.swing.JLabel();
        jLabelTime1_1.setFont(new Font("Tahoma", Font.PLAIN, 12));
        jLabelTime1_2 = new javax.swing.JLabel();
        jLabelTime1_2.setFont(new Font("Tahoma", Font.PLAIN, 12));
        jLabelTime2_1 = new javax.swing.JLabel();
        jLabelTime2_1.setFont(new Font("Tahoma", Font.PLAIN, 12));
        jLabelTime2_2 = new javax.swing.JLabel();
        jLabelTime2_2.setFont(new Font("Tahoma", Font.PLAIN, 12));
        jDateStart = new com.toedter.calendar.JDateChooser();
        jDateStart.getCalendarButton().setText("Date");
        jDateFinish = new com.toedter.calendar.JDateChooser();
        jDateFinish.getCalendarButton().setText("Date");
        hourBoxStart = new javax.swing.JComboBox<>();
        minuteBoxStart = new javax.swing.JComboBox<>();
        hourBoxFinish = new javax.swing.JComboBox<>();
        minuteBoxFinish = new javax.swing.JComboBox<>();
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jLabel1.setText("-Chọn phòng:");
        jLabel1.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N

        XemLichSuDungNhaVanHoaController xemLichSuDungNhaVanHoaController = new XemLichSuDungNhaVanHoaController();
        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel<>(xemLichSuDungNhaVanHoaController.layDanhSachPhong()));
        jComboBox1.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N
        jComboBox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox1ActionPerformed(evt);
            }
        });

        jLabel2.setText("-Tên sự kiện:");
        jLabel2.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N

        jLabel3.setText("-Bắt đầu:");
        jLabel3.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N

        jLabel4.setText("-Kết thúc:");
        jLabel4.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N

        jLabel6.setText("-Chi phí:");
        jLabel6.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N

        jLabel7.setText("-Mô tả:");
        jLabel7.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N

        jButton1.setText("Xác nhận");
        jButton1.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("Hủy");
        jButton2.setFont(new java.awt.Font("Times New Roman", 0, 18)); // NOI18N
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        
        // thêm
        jDateStart.setDateFormatString("dd-MM-yyyy");
        
        hourBoxStart.setModel(modelHours1);
        hourBoxStart.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                hourBoxStartActionPerformed(evt);
            }
        });
        
        minuteBoxStart.setModel(modelMinutes1);
        
        jDateFinish.setDateFormatString("dd-MM-yyyy");
        hourBoxFinish.setModel(modelHours2);
        hourBoxFinish.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                hourBoxFinishActionPerformed(evt);
            }
        });

        minuteBoxFinish.setModel(modelMinutes2);
        
        jLabelTime1_1.setText("Giờ");
        jLabelTime1_2.setText("Phút");
        jLabelTime2_1.setText("Giờ");
        jLabelTime2_2.setText("Phút");
        
        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1Layout.setHorizontalGroup(
        	jPanel1Layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(jPanel1Layout.createSequentialGroup()
        			.addGap(18)
        			.addGroup(jPanel1Layout.createParallelGroup(Alignment.LEADING)
        				.addComponent(jLabel3)
        				.addComponent(jLabel1)
        				.addComponent(jLabel2)
        				.addComponent(jLabel6, GroupLayout.PREFERRED_SIZE, 71, GroupLayout.PREFERRED_SIZE)
        				.addComponent(jLabel4)
        				.addComponent(jLabel7))
        			.addGap(10)
        			.addGroup(jPanel1Layout.createParallelGroup(Alignment.LEADING)
        				.addGroup(jPanel1Layout.createSequentialGroup()
        					.addComponent(jButton1)
        					.addGap(80)
        					.addComponent(jButton2, GroupLayout.PREFERRED_SIZE, 101, GroupLayout.PREFERRED_SIZE))
        				.addGroup(jPanel1Layout.createParallelGroup(Alignment.TRAILING)
        					.addComponent(jComboBox1, GroupLayout.PREFERRED_SIZE, 298, GroupLayout.PREFERRED_SIZE)
        					.addComponent(jTextFieldTenSk, GroupLayout.PREFERRED_SIZE, 298, GroupLayout.PREFERRED_SIZE))
        				.addGroup(jPanel1Layout.createSequentialGroup()
        					.addPreferredGap(ComponentPlacement.RELATED)
        					.addGroup(jPanel1Layout.createParallelGroup(Alignment.TRAILING)
        						.addComponent(jDateFinish, GroupLayout.PREFERRED_SIZE, 166, GroupLayout.PREFERRED_SIZE)
        						.addComponent(jDateStart, GroupLayout.PREFERRED_SIZE, 166, GroupLayout.PREFERRED_SIZE))
        					.addGap(26)
        					.addGroup(jPanel1Layout.createParallelGroup(Alignment.LEADING, false)
        						.addGroup(jPanel1Layout.createSequentialGroup()
        							.addComponent(hourBoxStart, GroupLayout.PREFERRED_SIZE, 94, GroupLayout.PREFERRED_SIZE)
        							.addPreferredGap(ComponentPlacement.RELATED)
        							.addComponent(jLabelTime1_1, GroupLayout.PREFERRED_SIZE, 34, GroupLayout.PREFERRED_SIZE)
        							.addPreferredGap(ComponentPlacement.RELATED)
        							.addComponent(minuteBoxStart, GroupLayout.PREFERRED_SIZE, 94, GroupLayout.PREFERRED_SIZE))
        						.addGroup(jPanel1Layout.createSequentialGroup()
        							.addComponent(hourBoxFinish, GroupLayout.PREFERRED_SIZE, 94, GroupLayout.PREFERRED_SIZE)
        							.addPreferredGap(ComponentPlacement.RELATED)
        							.addComponent(jLabelTime2_1, GroupLayout.PREFERRED_SIZE, 34, GroupLayout.PREFERRED_SIZE)
        							.addPreferredGap(ComponentPlacement.RELATED, GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        							.addComponent(minuteBoxFinish, GroupLayout.PREFERRED_SIZE, 94, GroupLayout.PREFERRED_SIZE)
        							.addGap(1)))
        					.addPreferredGap(ComponentPlacement.RELATED)
        					.addGroup(jPanel1Layout.createParallelGroup(Alignment.LEADING)
        						.addComponent(jLabelTime1_2, GroupLayout.PREFERRED_SIZE, 24, GroupLayout.PREFERRED_SIZE)
        						.addComponent(jLabelTime2_2, GroupLayout.PREFERRED_SIZE, 23, GroupLayout.PREFERRED_SIZE)))
        				.addComponent(jTextFieldChiPhi, GroupLayout.PREFERRED_SIZE, 298, GroupLayout.PREFERRED_SIZE)
        				.addComponent(jTextFieldMoTa, GroupLayout.PREFERRED_SIZE, 436, GroupLayout.PREFERRED_SIZE))
        			.addContainerGap(69, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
        	jPanel1Layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(jPanel1Layout.createSequentialGroup()
        			.addGap(18)
        			.addGroup(jPanel1Layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(jTextFieldTenSk, GroupLayout.PREFERRED_SIZE, 30, GroupLayout.PREFERRED_SIZE)
        				.addComponent(jLabel2))
        			.addGap(18)
        			.addGroup(jPanel1Layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(jLabel1)
        				.addComponent(jComboBox1, GroupLayout.DEFAULT_SIZE, 30, Short.MAX_VALUE))
        			.addGroup(jPanel1Layout.createParallelGroup(Alignment.LEADING)
        				.addGroup(jPanel1Layout.createSequentialGroup()
        					.addGap(32)
        					.addComponent(jLabel3))
        				.addGroup(jPanel1Layout.createSequentialGroup()
        					.addGap(18)
        					.addGroup(jPanel1Layout.createParallelGroup(Alignment.LEADING)
        						.addGroup(jPanel1Layout.createParallelGroup(Alignment.BASELINE)
        							.addComponent(hourBoxStart, GroupLayout.PREFERRED_SIZE, 42, GroupLayout.PREFERRED_SIZE)
        							.addComponent(jLabelTime1_1, GroupLayout.PREFERRED_SIZE, 44, GroupLayout.PREFERRED_SIZE)
        							.addComponent(minuteBoxStart, GroupLayout.PREFERRED_SIZE, 42, GroupLayout.PREFERRED_SIZE)
        							.addComponent(jLabelTime1_2))
        						.addComponent(jDateStart, GroupLayout.PREFERRED_SIZE, 42, GroupLayout.PREFERRED_SIZE))))
        			.addPreferredGap(ComponentPlacement.RELATED)
        			.addGroup(jPanel1Layout.createParallelGroup(Alignment.LEADING)
        				.addGroup(jPanel1Layout.createSequentialGroup()
        					.addGap(31)
        					.addGroup(jPanel1Layout.createParallelGroup(Alignment.LEADING)
        						.addComponent(jDateFinish, GroupLayout.PREFERRED_SIZE, 42, GroupLayout.PREFERRED_SIZE)
        						.addGroup(jPanel1Layout.createParallelGroup(Alignment.BASELINE)
        							.addComponent(hourBoxFinish, GroupLayout.PREFERRED_SIZE, 42, GroupLayout.PREFERRED_SIZE)
        							.addComponent(jLabelTime2_1, GroupLayout.PREFERRED_SIZE, 44, GroupLayout.PREFERRED_SIZE)
        							.addComponent(minuteBoxFinish, GroupLayout.PREFERRED_SIZE, 42, GroupLayout.PREFERRED_SIZE)
        							.addComponent(jLabelTime2_2))))
        				.addGroup(jPanel1Layout.createSequentialGroup()
        					.addGap(40)
        					.addComponent(jLabel4)))
        			.addGap(18)
        			.addGroup(jPanel1Layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(jTextFieldChiPhi, GroupLayout.PREFERRED_SIZE, 41, GroupLayout.PREFERRED_SIZE)
        				.addComponent(jLabel6))
        			.addGap(30)
        			.addGroup(jPanel1Layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(jTextFieldMoTa, GroupLayout.PREFERRED_SIZE, 104, GroupLayout.PREFERRED_SIZE)
        				.addComponent(jLabel7))
        			.addGap(29)
        			.addGroup(jPanel1Layout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(jButton1)
        				.addComponent(jButton2))
        			.addGap(59))
        );
        jPanel1.setLayout(jPanel1Layout);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        layout.setHorizontalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(layout.createSequentialGroup()
        			.addComponent(jPanel1, GroupLayout.PREFERRED_SIZE, 656, GroupLayout.PREFERRED_SIZE)
        			.addContainerGap(GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addComponent(jPanel1, GroupLayout.DEFAULT_SIZE, GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        getContentPane().setLayout(layout);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
    	Date dateStart = jDateStart.getDate();
    	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    	Date dateFinish = jDateFinish.getDate();
        if(check()){	//thay đổi
            String roomName = (String)jComboBox1.getSelectedItem();
            String startTime = dateFormat.format(dateStart) + " " + hourBoxStart.getSelectedIndex() + ":" + minuteBoxStart.getSelectedIndex() + ":00";
            String finishTime = dateFormat.format(dateFinish) + " " + hourBoxFinish.getSelectedIndex() + ":" + minuteBoxFinish.getSelectedIndex() + ":00";
            String eventName = jTextFieldTenSk.getText();
            String eventDescriptions = jTextFieldMoTa.getText();
            int fee = Integer.parseInt(jTextFieldChiPhi.getText());                   
            LenLichSuKienController.lenLich(new LenLichSuKien(roomName, startTime, finishTime, eventName, eventDescriptions, fee));
            this.dispose();
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        if(jTextFieldTenSk.getText().length() != 0 || jTextFieldMoTa.getText().length() != 0
            || jTextFieldChiPhi.getText().length() != 0){            // thay đổi
            if (JOptionPane.showConfirmDialog(null, "Bạn có muốn hủy?", "WARNING",
                    JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION) {
                this.dispose();
            } else {                           
            }
        } else {
            this.dispose();
        }
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jComboBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jComboBox1ActionPerformed
    
     //thêm
    private void hourBoxStartActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_hourBoxStartActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_hourBoxStartActionPerformed
    
    //thêm
    private void hourBoxFinishActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_hourBoxFinishActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_hourBoxFinishActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ThemSuKienFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ThemSuKienFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ThemSuKienFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ThemSuKienFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ThemSuKienFrame().setVisible(true);
            }
        });
    }
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JComboBox<String> jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel jLabelTime1_1;
    private javax.swing.JLabel jLabelTime1_2;
    private javax.swing.JLabel jLabelTime2_1;
    private javax.swing.JLabel jLabelTime2_2;
    private javax.swing.JTextField jTextFieldChiPhi;
    private javax.swing.JTextField jTextFieldMoTa;
    private javax.swing.JTextField jTextFieldTenSk;
    private com.toedter.calendar.JDateChooser jDateStart;
    private com.toedter.calendar.JDateChooser jDateFinish;
    private javax.swing.JComboBox<String> hourBoxStart;
    private javax.swing.JComboBox<String> minuteBoxStart;
    private javax.swing.JComboBox<String> hourBoxFinish;
    private javax.swing.JComboBox<String> minuteBoxFinish;
}
