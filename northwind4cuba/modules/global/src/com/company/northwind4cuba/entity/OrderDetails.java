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
@Table(name = "ORDER_DETAILS")
@Entity(name = "northwind4cuba$OrderDetails")
public class OrderDetails extends BaseIntIdentityIdEntity {
    private static final long serialVersionUID = 5400147473667945882L;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ORDER_ID")
    protected Order order;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PRODUCT_ID")
    protected Product product;

    @Column(name = "QUANTITY", nullable = false)
    protected Double quantity;

    @Column(name = "UNIT_PRICE", precision = 19, scale = 4)
    protected BigDecimal unitPrice;

    @Column(name = "DISCOUNT", nullable = false)
    protected Double discount;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "STATUS_ID")
    protected OrderDetailsStatus status;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "DATE_ALLOCATED")
    protected Date dateAllocated;

    @Column(name = "PURCHASE_ORDER_ID")
    protected Integer purchaseOrder;

    @Column(name = "INVENTORY_ID")
    protected Integer inventory;

    @Column(name = "\"SSMA_TimeStamp\"", nullable = false)
    protected byte[] ssmaTimestamp;

    public void setOrder(Order order) {
        this.order = order;
    }

    public Order getOrder() {
        return order;
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

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setStatus(OrderDetailsStatus status) {
        this.status = status;
    }

    public OrderDetailsStatus getStatus() {
        return status;
    }

    public void setDateAllocated(Date dateAllocated) {
        this.dateAllocated = dateAllocated;
    }

    public Date getDateAllocated() {
        return dateAllocated;
    }

    public void setPurchaseOrder(Integer purchaseOrder) {
        this.purchaseOrder = purchaseOrder;
    }

    public Integer getPurchaseOrder() {
        return purchaseOrder;
    }

    public void setInventory(Integer inventory) {
        this.inventory = inventory;
    }

    public Integer getInventory() {
        return inventory;
    }

    public byte[] getSsmaTimestamp() {
        return ssmaTimestamp;
    }


}