package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.cuba.core.global.DesignSupport;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.BaseIntIdentityIdEntity;

@DesignSupport("{'imported':true}")
@Table(name = "PURCHASE_ORDER_DETAILS")
@Entity(name = "northwind4cuba$PurchaseOrderDetails")
public class PurchaseOrderDetails extends BaseIntIdentityIdEntity {
    private static final long serialVersionUID = 149020902564950889L;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PURCHASE_ORDER_ID")
    protected PurchaseOrder purchaseOrder;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PRODUCT_ID")
    protected Product product;

    @Column(name = "QUANTITY", nullable = false)
    protected Double quantity;

    @Column(name = "UNIT_COST", nullable = false, precision = 19, scale = 4)
    protected BigDecimal unitCost;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "DATE_RECEIVED")
    protected Date dateReceived;

    @Column(name = "POSTED_TO_INVENTORY", nullable = false)
    protected Boolean postedToInventory = false;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "INVENTORY_ID")
    protected InventoryTransaction inventory;

    @Column(name = "\"SSMA_TimeStamp\"", nullable = false)
    protected byte[] ssmaTimestamp;

    public void setPurchaseOrder(PurchaseOrder purchaseOrder) {
        this.purchaseOrder = purchaseOrder;
    }

    public PurchaseOrder getPurchaseOrder() {
        return purchaseOrder;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Product getProduct() {
        return product;
    }

    public void setQuantity(Double quantity) {
        this.quantity = quantity;
    }

    public Double getQuantity() {
        return quantity;
    }

    public void setUnitCost(BigDecimal unitCost) {
        this.unitCost = unitCost;
    }

    public BigDecimal getUnitCost() {
        return unitCost;
    }

    public void setDateReceived(Date dateReceived) {
        this.dateReceived = dateReceived;
    }

    public Date getDateReceived() {
        return dateReceived;
    }

    public void setPostedToInventory(Boolean postedToInventory) {
        this.postedToInventory = postedToInventory;
    }

    public Boolean getPostedToInventory() {
        return postedToInventory;
    }

    public void setInventory(InventoryTransaction inventory) {
        this.inventory = inventory;
    }

    public InventoryTransaction getInventory() {
        return inventory;
    }

    public byte[] getSsmaTimestamp() {
        return ssmaTimestamp;
    }


}