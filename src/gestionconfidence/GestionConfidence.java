/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestionconfidence;

import com.Confidence.Formularios.MenuPrincipal;
import com.Confidence.Formularios.Splash;
import com.Confidence.Formularios.frm_InicioSesion;

/**
 *
 * @author Martin Tomas F
 */
public class GestionConfidence {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Splash sp = new Splash();
        sp.setVisible(true);
        try {
            Thread.sleep(5000);
        } catch (Exception e) {
            e.printStackTrace();
        }
        sp.dispose();
        frm_InicioSesion inicio = new frm_InicioSesion();
        inicio.setVisible(true);
    }
}
