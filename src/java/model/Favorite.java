/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SarinratBeauty
 */
@Entity
@Table(name = "FAVORITE")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Favorite.findAll", query = "SELECT f FROM Favorite f")
    , @NamedQuery(name = "Favorite.findByFavid", query = "SELECT f FROM Favorite f WHERE f.favid = :favid")
    , @NamedQuery(name = "Favorite.findByAccid", query = "SELECT f FROM Favorite f WHERE f.accid = :accid")
    , @NamedQuery(name = "Favorite.findByProductid", query = "SELECT f FROM Favorite f WHERE f.productid = :productid")
    , @NamedQuery(name = "Favorite.findByProductname", query = "SELECT f FROM Favorite f WHERE f.productname = :productname")
    , @NamedQuery(name = "Favorite.findByProductprice", query = "SELECT f FROM Favorite f WHERE f.productprice = :productprice")
    , @NamedQuery(name = "Favorite.findByProductphoto", query = "SELECT f FROM Favorite f WHERE f.productphoto = :productphoto")})
public class Favorite implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "FAVID")
    private Integer favid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ACCID")
    private int accid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "PRODUCTID")
    private int productid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 70)
    @Column(name = "PRODUCTNAME")
    private String productname;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "PRODUCTDESCRIPTION")
    private String productdescription;
    @Basic(optional = false)
    @NotNull
    @Column(name = "PRODUCTPRICE")
    private int productprice;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 300)
    @Column(name = "PRODUCTPHOTO")
    private String productphoto;

    public Favorite() {
    }

    public Favorite(Integer favid) {
        this.favid = favid;
    }

    public Favorite(Integer favid, int accid, int productid, String productname, String productdescription, int productprice, String productphoto) {
        this.favid = favid;
        this.accid = accid;
        this.productid = productid;
        this.productname = productname;
        this.productdescription = productdescription;
        this.productprice = productprice;
        this.productphoto = productphoto;
    }

    public Integer getFavid() {
        return favid;
    }

    public void setFavid(Integer favid) {
        this.favid = favid;
    }

    public int getAccid() {
        return accid;
    }

    public void setAccid(int accid) {
        this.accid = accid;
    }

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getProductdescription() {
        return productdescription;
    }

    public void setProductdescription(String productdescription) {
        this.productdescription = productdescription;
    }

    public int getProductprice() {
        return productprice;
    }

    public void setProductprice(int productprice) {
        this.productprice = productprice;
    }

    public String getProductphoto() {
        return productphoto;
    }

    public void setProductphoto(String productphoto) {
        this.productphoto = productphoto;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (favid != null ? favid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Favorite)) {
            return false;
        }
        Favorite other = (Favorite) object;
        if ((this.favid == null && other.favid != null) || (this.favid != null && !this.favid.equals(other.favid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Favorite[ favid=" + favid + " ]";
    }
    
}
