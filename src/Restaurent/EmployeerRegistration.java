/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Restaurent;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author SYSTEM
 */
@Entity
@Table(name = "employeer_registration", catalog = "restaurant_management", schema = "")
@NamedQueries({
    @NamedQuery(name = "EmployeerRegistration.findAll", query = "SELECT e FROM EmployeerRegistration e")
    , @NamedQuery(name = "EmployeerRegistration.findByName", query = "SELECT e FROM EmployeerRegistration e WHERE e.name = :name")
    , @NamedQuery(name = "EmployeerRegistration.findByUserName", query = "SELECT e FROM EmployeerRegistration e WHERE e.userName = :userName")
    , @NamedQuery(name = "EmployeerRegistration.findByPassword", query = "SELECT e FROM EmployeerRegistration e WHERE e.password = :password")
    , @NamedQuery(name = "EmployeerRegistration.findByEMail", query = "SELECT e FROM EmployeerRegistration e WHERE e.eMail = :eMail")})
public class EmployeerRegistration implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "name")
    private String name;
    @Id
    @Basic(optional = false)
    @Column(name = "user_name")
    private String userName;
    @Basic(optional = false)
    @Column(name = "password")
    private String password;
    @Basic(optional = false)
    @Column(name = "e_mail")
    private String eMail;

    public EmployeerRegistration() {
    }

    public EmployeerRegistration(String userName) {
        this.userName = userName;
    }

    public EmployeerRegistration(String userName, String name, String password, String eMail) {
        this.userName = userName;
        this.name = name;
        this.password = password;
        this.eMail = eMail;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        String oldName = this.name;
        this.name = name;
        changeSupport.firePropertyChange("name", oldName, name);
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        String oldUserName = this.userName;
        this.userName = userName;
        changeSupport.firePropertyChange("userName", oldUserName, userName);
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        String oldPassword = this.password;
        this.password = password;
        changeSupport.firePropertyChange("password", oldPassword, password);
    }

    public String getEMail() {
        return eMail;
    }

    public void setEMail(String eMail) {
        String oldEMail = this.eMail;
        this.eMail = eMail;
        changeSupport.firePropertyChange("EMail", oldEMail, eMail);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userName != null ? userName.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EmployeerRegistration)) {
            return false;
        }
        EmployeerRegistration other = (EmployeerRegistration) object;
        if ((this.userName == null && other.userName != null) || (this.userName != null && !this.userName.equals(other.userName))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Restaurent.EmployeerRegistration[ userName=" + userName + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
